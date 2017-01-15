#include <AutomaTile.h>
#include <Arduino.h>
#include "color.h"
#include "APA102C.h"
#include "AutomaTile.h"

#include <util/delay.h>

uint32_t prevTimer;
const rgb black = {0x00, 0x00, 0x00};

int main(void) {
	tileSetup();

	setup();

	prevTimer = getTimer();
	while(1){
		if(mode == running){
			// Difference between current time and last time the LED was updated
			uint32_t diff = getTimer()-prevTimer;
			if(holdoff<diff){
				holdoff = 0;
			}else{
				holdoff -= diff;
			}
			uint8_t t = prevTimer%64;
			if(t<=32 && t+diff>=32){
				updateLed();
			}

			prevTimer = getTimer();

			if(timeout>0){
				if(prevTimer-sleepTimer>1000*timeout){
					mode = sleep;
					DDRB &= ~IR;//Set direction in
					PORTB &= ~IR;//Set pin tristated
					sendColor(LEDCLK, LEDDAT, black);
					PORTA |= POWER;//Set LED and Mic power pin high (off)
					wake = 0;
				}
			}

			loop();

		}else if(mode==transmitting){

			static rgb on = {127,127,127};
			static rgb off = {0,0,0};
			

						while (1) {
				sendColor(LEDCLK, LEDDAT, on);
				_delay_ms(300);
				sendColor(LEDCLK, LEDDAT, off);
				_delay_ms(300);
				
			}

		}
	}
}
