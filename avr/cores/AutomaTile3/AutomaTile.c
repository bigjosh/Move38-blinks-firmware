/*
 * AutomaTile.c
 *
 * Created: 1/6/2016 11:56:47
 *  Author: Joshua
 */

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/cpufunc.h>
#include <avr/sleep.h>


#include "Pins.h"
#include "Inits.h"

#include "APA102C.h"

#include "Arduino.h"
#include "AutomaTile.h"


#include <util/delay.h>             // Depends on _F_CPU defined in Automatile.h

#define PULSE_WIDTH 8

MODE mode = running;

volatile uint16_t holdoff = 2000;//for temporarily preventing click outputs
static volatile uint8_t click = 0;//becomes non-zero when a click is detected
static volatile uint8_t sync = 0;//becomes non-zero when synchronization pulses need to be sent out
static volatile uint8_t state = 0;//current state of tile
static volatile uint32_t timer = 0;//.1 ms timer tick
static volatile uint32_t times[6][4];//ring buffer for holding detection edge times for the phototransistors
static volatile uint8_t timeBuf[6];//ring buffer indices
static volatile uint8_t soundEn = 1; //if true, react to sound		// TODO: Delete

// Pin mapping to arrange pins correctly on board
const uint8_t pinMap[6] = {0,1,2,5,4,3};

uint32_t timeout = 20;
static volatile uint32_t startTime = 0;
volatile uint32_t sleepTimer = 0;
static volatile uint32_t powerDownTimer = 0;
volatile uint8_t wake = 0;

static volatile uint16_t longPressTimer = 0;
static volatile uint16_t longPressTime = 1000;//1 second default

volatile uint8_t progDir = 0;//direction to pay attention to during programming. Set to whichever side put the module into program mode.
volatile uint8_t* comBuf;//buffer for holding communicated messages when programming rules (oversized)
volatile uint8_t* datBuf;//buffer for holding verified messages to be accessed by the user
uint8_t datLen = 0;
volatile uint16_t bitsRcvd = 0;//tracking number of bits received for retransmission/avoiding overflow
volatile uint32_t modeStart = 0;

/* Uses the current state of the times ring buffer to determine the states of neighboring tiles
 * For each side, to have a non-zero state, a pulse must have been received in the last 100 ms and two of the
 * last three timing spaces must be equal.
 *
 * State is communicated as a period for the pulses. Differences are calculated between pulses and if a consistent
 * difference is found, that translates directly to a state
 * Accuracy is traded for number of states (i.e. 5 states can be communicated reliably, while 10 with less robustness)
*/
uint8_t oldData[] = {0,0,0,0,0,0};

void getNeighborStates(uint8_t * result){
	uint8_t interrupts = SREG&1<<7;

	if(interrupts)cli();//Disable interrupts to safely grab consistent timer value
	uint32_t curTime = timer;
	uint32_t diffs[3];
	uint8_t i;
	for(i = 0; i < 6; i++){

		if((curTime-times[i][timeBuf[i]])>100){//More than .1 sec since last pulse, too long
			result[pinMap[i]] = 0;
		}else{//received pulses recently
			uint8_t buf = timeBuf[i];//All bit-masking is to ensure the numbers are between 0 and 3
			diffs[0] = times[i][buf] - times[i][(buf-1)&0x03];
			diffs[1] = times[i][(buf-1)&0x03] - times[i][(buf-2)&0x03];
			diffs[2] = times[i][(buf-2)&0x03] - times[i][(buf-3)&0x03];
			if(diffs[0]>100 || diffs[1]>100 || diffs[2] > 100){//Not enough pulses recently
				result[pinMap[i]] = 0;
				oldData[i] = 0;
			}else{//received enough pulses recently
				//rounding
				diffs[0] >>= 3;
				diffs[1] >>= 3;
				diffs[2] >>= 3;
				//checking if any two of the differences are equal and using a value from the equal pair
				if(diffs[0] == diffs[1] &&diffs[0] == diffs[2]){
					result[pinMap[i]] = (uint8_t) diffs[0];
					oldData[i]=result[i];
				}else{//too much variation reuse old value
					result[pinMap[i]] = oldData[i];
				}
			}
		}
	}
	if(interrupts)sei();//Re-enable interrupts
}

/*
 * Get a single neighbor state using a tile side neighbor id.
 */
uint8_t getNeighbor(const uint8_t neighbor){
	uint8_t neighbors[TILE_SIDES];
	getNeighborStates(neighbors);
	return neighbors[neighbor];
}

uint32_t getTimer(){
	uint8_t interrupts = SREG&1<<7;

	if(interrupts)cli();
	uint32_t t = timer;
	if(interrupts)sei();
	return t;
}

void setTimeout(uint16_t seconds){
	timeout = seconds;

}

void setState(uint8_t newState){
	if (newState<16)
	{
		state = newState;
	}

}

uint8_t getState(){
	return state;
}

void setColor( uint8_t r, uint8_t g, uint8_t b ) {
    
    sendColor(r,g,b);
    
}

void tileSetup(void){
	//Initialization routines
	initIO();
    
	// Signal to the world that we are newly alive. 
	// If you see 3 blinks, then a reset happened...

	uint8_t i;
	
	i=3;

	while( i--) {
		setColor(0,0,255);
		_delay_ms(200);
		setColor(0,0,0);
		_delay_ms(200);
	}	


	//initAD();
	initTimer();
	set_sleep_mode(SLEEP_MODE_PWR_DOWN);
	sleep_enable();
	//Set up timing ring buffers

	i=6;

	while (--i) {
		timeBuf[i]=0;
	}
	mode = running;
	sei();
    
}

void emptyCB(void){
	return;
}

cb_func clickCB = emptyCB;
cb_func buttonCB = emptyCB;
cb_func timerCB = emptyCB;
cb_func longButtonCB = emptyCB;
volatile uint16_t timerCBcount = 0;
volatile uint16_t timerCBtime = UINT16_MAX;


void setStepCallback(cb_func cb){
	clickCB = cb;
}

void setButtonCallback(cb_func cb){
	buttonCB = cb;
}

void setLongButtonCallback(cb_func cb, uint16_t ms){
	longButtonCB = cb;
	longPressTime = ms;
}

void setLongButtonCallbackTimer(uint16_t ms){
	longPressTime = ms;
}


void setTimerCallback(cb_func cb, uint16_t t){
	timerCB = cb;
	timerCBcount = 0;
	timerCBtime = t;
}


void setTimerCallbackTime(uint16_t t){
	timerCBcount = 0;
	timerCBtime = t;
}

void sendStep(){
	uint8_t interrupts = SREG&1<<7;

	if(interrupts)	cli();
	uint32_t t = timer;
	if(interrupts)sei();
	uint32_t st = t;
	uint8_t done = 0;
	sync = 3;
	holdoff = 200;

	while(!done){
		cli();
		t = timer;
		sei();
		if(t-st>100){
			done = 1;
		}
	}
	clickCB();
}


//Timer interrupt occurs every 1 ms
//Increments timer and controls IR LEDs to keep their timing consistent
ISR(TIM0_COMPA_vect){
	static uint8_t IRcount = 0;//Tracks cycles for accurate IR LED timing
	static uint8_t sendState = 0;//State currently being sent. only updates on pulse to ensure accurate states are sent
	timer++;

	timerCBcount++;
	if(timerCBcount >= timerCBtime){
		timerCB();
		timerCBcount = 0;
	}

	if(mode==running){
		//check if a click has happened and call appropriate function
		if(click){
			clickCB();
			holdoff = 100;
			click = 0;
		}

		IRcount++;
		if(IRcount>=(uint8_t)(sendState*8+4)){//State timings are off by 4 from a multiple of 8 to help with detection
			IRcount = 0;
			if(sync==0){
				sendState = state;
			}
		}

		if(IRcount==5){
			PORTB |= IR;
			DDRB |= IR;
		}else if(IRcount==7&&sync>1){
			PORTB |= IR;
			DDRB |= IR;
			sync = 1;
		}else if(IRcount==9&&sync==1){
			PORTB |= IR;
			DDRB |= IR;
			sync = 0;
		}else if(sendState==0&&sync>0){//0 case is special
			if((IRcount&0x01)!=0){
				PORTB |= IR;
				DDRB |= IR;
				sync -= 1;
			}else{
				DDRB &= ~IR;//Set direction in
				PORTB &= ~IR;
			}
		}else{
			DDRB &= ~IR;//Set direction in
			PORTB &= ~IR;//Set pin tristated

			 if(longPressTimer<longPressTime){//during long press wait
				longPressTimer++;
			 }
			if(IRcount<5){
				if(PINB & BUTTON){//Button active high
					if(holdoff==0){//initial press
						buttonCB();
						sleepTimer = timer;
						powerDownTimer = timer;
						longPressTimer = 0;
					}else{//during long press wait
						if(longPressTimer>=longPressTime){
							longButtonCB();
						}
					}
					holdoff = 200;//debounce and hold state until released
				}else{//Button not down
					longPressTimer = 0;
				}
			}
		}
	}else if(mode==sleep){

		uint32_t diff = timer-powerDownTimer;
		uint32_t startDiff = timer-startTime;
		if(diff>500 && wake==0){
			sei();
			sleep_cpu();
			cli();
			wake = 1;
			sleepTimer = timer;
		}

		switch (wake) {

			case 1: 
				startTime = timer;
				PORTA &= ~POWER;
				wake++;
				break;

			case 2:
				if(startDiff>250){
					wake++;
				}
				break; 

			case 3:
				DDRB |= IR;//Set direction out
				PORTB |= IR;//Set pin on
				//sendColor( wakeColor );
				startTime = timer;
				wake++;
				break;

			case 4:
				PORTB &= !IR;
				wake++;
				break;
				
			case 5:
				PORTB |= IR;
				break;

			case 6:
				if(startDiff>500){
					wake++;
				}

			case 7:
				powerDownTimer = timer;
				sleepTimer = timer;
				holdoff=500;
				mode = running;
				break;
		}
	}
}


//INT0 interrupt triggered when the pushbutton is pressed
ISR(PCINT1_vect){
	if((DDRB & BUTTON)==0)
		wake = 1;
}

//Pin Change 0 interrupt triggered when any of the phototransistors change level
//Checks what pins are newly on and updates their buffers with the current time
static volatile uint32_t oldTime = 0;

ISR(PCINT0_vect){
	static uint8_t prevVals = 0; //stores the previous state so that only what pins are newly on are checked
	static uint8_t pulseCount[6]; //stores counted pulses for various actions
	uint8_t vals = PINA & 0x3f; //mask out phototransistors
	uint8_t newOn = vals & ~prevVals; //mask out previously on pins
	if(mode == running){
		powerDownTimer = timer;

		uint8_t i;
		for(i = 0; i < 6; i++){
			if(newOn & 1<<i){ //if an element is newly on,
				if(timer-times[i][timeBuf[i]]<10){//This is a rapid pulse. treat like a click
					pulseCount[i]++;
					wake = 1;
					if(pulseCount[i]==2){
						if(holdoff==0){
							click = 1;
							sync = 3;
							sleepTimer = timer;
						}
					}
					if(pulseCount[i]>=4){//There have been 4 quick pulses. Enter programming mode.
						click = 0;
						sync = 0;
					}
				}else{//Normally timed pulse, process normally
					pulseCount[i]=0;
					timeBuf[i]++;
					timeBuf[i] &= 0x03;
					times[i][timeBuf[i]] = timer;
				}
			}
		}
	}

	//prevVals = vals;
}
