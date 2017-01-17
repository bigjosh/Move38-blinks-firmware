/*
 * AutomaTile.h
 *
 * Created: 1/6/2016 11:56:26
 *  Author: Joshua
 */


#ifndef AUTOMATILE_H_
#define AUTOMATILE_H_

#include <stdbool.h>
#include <stdint.h>

#define TILE_SIDES	6
#define LED_REFRESHING_PERIOD  32  	// Led refreshing period is 32ms (check main.c)

typedef void (*cb_func)(void);

void tileSetup(void);

#define F_CPU (1000000)     // Running off the 8Mhz RC ossilator, with CLKDIV8 enabled. Defined here and not Arduino.h because Arduino IDE gets it from boards.txt

extern volatile uint16_t holdoff;
extern volatile uint8_t wake;

extern volatile uint8_t progDir;
extern volatile uint8_t* comBuf;//buffer for holding communicated messages when programming rules (oversized)
extern volatile uint8_t* datBuf;//buffer for holding verified messages to be accessed by the user
extern uint8_t datLen;
extern volatile uint8_t msgNum;
extern volatile uint16_t bitsRcvd;
extern volatile uint32_t modeStart;

void setColor( uint8_t r, uint8_t g, uint8_t b );

typedef enum {
	sleep,
	running,
	transmitting
} MODE;

extern MODE mode;

#endif /* AUTOMATILE_H_ */
