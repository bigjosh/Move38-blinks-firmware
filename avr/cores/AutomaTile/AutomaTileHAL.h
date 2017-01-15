/*
 * AutomaTileHAL.h
 *
 * Created: 1/6/2016 11:56:26
 * Proposed hardware abstraction layer for the tile.
 *
 * This layer only handles the bare minimum for interfacing with the hardware, all normal 
 * gam-designer-facing functionality is in a portable library that interacts with this HAL.
 * 
 * 
 */


#ifndef AUTOMATILE_H_
#define AUTOMATILE_H_


#define TILE_SIDES	6

/// Shared data

volatile uint8_t neighborStates[TILE_SIDES];

volatile uint8_t buttonPressed;                    // Current state of button 0=up, 1=down

// Functions

void LED_setColorRGBW(const uint8_t r, const uint8_t g, const uint8_t b);

void idle();                // Wait for next asychronous event. May enter a lower power mode, but with very fast fast warm-up. Returns after event handler completes. 
                            // tileEveryms() will continue to be called.
                            // Note: whatever stirred us will also generate either a tilesChanged() or buttonDown() or buttonUp() - or several.

void sleep();               // Sends tile to low power sleep. Will return upon waking.
                            // tileEveryms() will not be called durring sleep. 
                            // Note: whatever woke us will also generate either a tilesChanged() or buttonDown() or buttonUp() - or several.

// Left for user to implement. 

// Synchronous calls - these are serialized so need not be reentrant. Do not disable interrupts. 

void tileMail(void);        // Called once on bootup

void tileLoop(void);        // Called repeatedly while we are awake and idle

// Asynchronous calls - These are called at any time. Interrupts are disabled on entry. Must be very fast and careful (only modify volatiles)

void tileEveryms(void);     // Called once per millisecond. Not called durring sleep. 

void tilesChanged(void);    // Called anytime a neighbor state changes 
                            // -could be called once for multiple changes
                            // -latching, so if anything changes *while* inside tilesChanged() then it will be called again immedeaetly on return
                            // -possible that something could change and change back before tileChanged is called (no change queue), so possible to get called an not *see* what changed

void buttonDown(void);

void buttonUp(void);
