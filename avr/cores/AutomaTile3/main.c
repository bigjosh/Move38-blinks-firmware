#include "Arduino.h"
#include "AutomaTile.h"
#include "APA102C.h"

#include <util/delay.h>

uint32_t prevTimer;

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
				//updateLed();
			}

			prevTimer = getTimer();

			if(timeout>0){
				if(prevTimer-sleepTimer>1000*timeout){
					mode = sleep;
					DDRB &= ~IR;//Set direction in
					PORTB &= ~IR;//Set pin tristated					
					sendRgbColor( black );
					PORTA |= POWER;//Set LED and Mic power pin high (off)
					wake = 0;
				}
			}
            
            loop();	
		}

	}
}