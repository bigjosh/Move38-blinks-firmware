/*
 * Pins.h
 *
 * Created: 7/15/2015 10:59:51
 *  Author: Joshua
 */ 
#include <avr/io.h>

// TODO: Combine all setup into a single hardcorded method that sets each register only once. 

#ifndef PINS_H_
#define PINS_H_

//Phototransistors are mapped out of order for routing purposes
#define PHOTO0 (1<<PA5)
#define PHOTO1 (1<<PA4)
#define PHOTO2 (1<<PA3)
#define PHOTO3 (1<<PA0)
#define PHOTO4 (1<<PA1)
#define PHOTO5 (1<<PA2)

//IR LED output pin
#define IR_PORT PORTB
#define IR_DDR  DDRB
#define IR (1<<PB2)

//LED clock and data pins
#define LED_PORT PORTB
#define LED_DDR  DDRB
#define LED_CLK (1<<PB0)
#define LED_DAT (1<<PB1)

//Pushbutton pin
#define BUTTON_PORT PORTB
#define BUTTON_DDR  DDRB
#define BUTTON (1<<PB2)

//Power control pin
#define POWER_PORT PORTA
#define POWER_DDR  DDRA
#define POWER_X (1<<PA6)          // 0 = Power on, 1=Power off
#endif /* PINS_H_ */