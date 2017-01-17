/*
 * APA102C.c
 *
 * Created: 7/21/2015 14:51:49
 *  Author: Joshua
 */ 
#include <stdint.h>
#include <avr/io.h>
#include <avr/interrupt.h>

#include "APA102C.h"

#include "Pins.h"

#define FIX_BRIGHTNESS (0xe0)           // TODO: Do we even need to change this?

//bit bangs an SPI signal to the specified pins of the given data
static void sendByte( uint8_t data){
    
    uint8_t bitmask = 0b10000000;
    
    while (bitmask) {
        
        // Set the data pin
        
        if (data&bitmask) {
            LEDPORT |= LEDDAT;
            } else {
            LEDPORT &= ~LEDDAT;
        }
        
        // strobe the clock pin
        
        LEDPORT |= LEDCLK;
        LEDPORT &= ~LEDCLK;
        
        bitmask >>= 1;               // Walk to next bit
    }
 }    

void sendColor(uint8_t r, uint8_t g, uint8_t b ) {
	//Start Frame
	sendByte( 0x00);
	sendByte( 0x00);
	sendByte( 0x00);
	sendByte( 0x00);
	//Data
	sendByte( FIX_BRIGHTNESS );
	sendByte( b);
	sendByte( g);
	sendByte( r);
}    

