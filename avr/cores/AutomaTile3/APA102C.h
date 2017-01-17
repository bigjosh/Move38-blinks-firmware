/*
 * APA102C.h
 *
 * Custom Library for writing values to the APA102C RGB LED
 *
 * Created: 7/21/2015 15:11:37
 *  Author: Joshua
 */ 


#ifndef APA102C_H_
#define APA102C_H_

//bit bangs an SPI signal to the specified pins that generates the specified color and brightness
//void sendColorRGBW(uint8_t r, uint8_t g, uint8_t b , uint8_t brightness);

//	Fixed brightness of 0xe0

void sendColor(uint8_t r, uint8_t g, uint8_t b); 

#endif /* APA102C_H_ */