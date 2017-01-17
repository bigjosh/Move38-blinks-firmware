#Blinks Firmware API##

##Overview 

An API for interfacing to Automatile board hardware with the Arduino IDE.

This interface would typically be used though the Move32-blinks-lib library which takes care of much of the busy work. 

You can, however, use this interface to talk directly to the hardware if you want to write a new library or implement features that are not available in the blinks-lib library.

##Model

This API is based on an event-driven synchronous message loop. All of your functionality goes into your `loop()` function, which is called repeatedly by the firmware. Each time you are called, you look around to see what changes, you update your internal state and issue any outward actions, and then return to wait for the next call into your `loop()`.

This model has the big advantage that while inside the `loop()`, your view of the world is completely static. Nothing can change until the next time you return from `loop()` so there are no issues with background updates or locking or race conditions. The world changes, you react to those changes, repeat.   

This model has the downside that the whole world stops while you are inside `loop()`, so you have to think in terms of synchronous state changes rather than continuous procedural flow. Let's see how this works in practice for the task of turning on an LED for 1 second...

###The procedural way

```c
void main() {
	ledOn();
	pauseSeconds(1);
	ledOff();
}
```


###The synchronous event loop way

```c

enum typedef {
	JUST_STARTED,
	RUNNING,
	DONE,
} stateType;

stateType currentState = JUST_STARTED;

int LEDOffTime;

uint8_t loop() {

	switch (currentState) {

		case JUST_STARTED:
				ledOn();
				LEDOffTime= now() + 1;
				currentState=RUNNING;
				break;

		case RUNNING:
				if (LEDOffTime<timeNow()) {	
					ledOff();
					currentState=DONE;
				}
				break;

		case DONE: 
				break;

	}

}
```

###Comparison

The procedural looks simpler and shorter, but it has some problems when we try and do something a bit more complicated. 

What if we now decide that we want to have the LED stay on for an additional 1 second if a button is pressed while it is on?

The procedural way starts to get more complicated fast. You will likely end up with code that has a lot of the elements of the event loop way, but more complicated and with more places for tricky errors and bugs.

In practice, the synchonous way usually ends procuding simpler and more reliable code for event-driven systems like our tiles.   


**A default blank sketch**
```c

#include <Autamatiles.h>

frameCountType sleepyTime;

void setup() {
	// This code will be run once on power-up, which should only 
	// happen when new batteries are installed.

	bedTime=getFrameCount()+SLEEP_TIMEOUT;    
}

loopReturn loop() {

	if neighborChanged() {
		setColor( getNeighbor(0) , getNeighbor(1) , getNeighbor(1) );    
	}

	if (buttonPressed() {
		bedTime=frameCount()+SLEEP_TIMEOUT;
	} 

	if (frameCount()>bedTime) {
		return( LOOP_SLEEP );
	}

	return(LOOP_FRAME);
}


```

###Model FAQ

Q:Why not break out each of the the event sources to independent method calls so I don't have to test for each inside the omnibus `loop()`?

A:Because several things can change simultaneously. If we had, say, a callback for `neighboorChanged(neighboor)`, how should we handle the case where TWO neighbors changed at the same time? We could serialize the simultaneous changes and call `neighboorChanged(neighboor)` twice in a row, once for each changed neighbor, but that starts to get complicated and presents a model that does not match the actual system we are molding. Those extra fast and simple tests on each `loop()` are worth it because they buy you a correct model with a single coherent snapshot of the real world.
  

##API

###Blink global defines###
**TILES**

The number of faces on each tile (these tiles are hexagons). 

```
#define TILE_SIDES 6
```

**LOOP_SLEEP**

Returning this from loop() puts the tile into low power sleep. Display LED is de-powered. We can only wake based on received data or a button state change, but there may be latency on the order of 100's of ms to wake up on received data.

On waking, LED is set to black.    

**LOOP_IDLE**

Returning this from loop() puts the tile into medium power sleep. Next loop call will happen immediately on received data or button change or next frame time. 


**LOOP_FRAME**

next frame

**LOOP_INSTANT**

loop() immedeately called again. 


###Blink global variables###


###Blink callbacks###

These are methods that you implement and are called by the firmware to let you act on state changes. 

**setup**
```c
void setup() {
	// This code will be run once on power-up, which should only 
	// happen when new batteries are installed.    
}
```


**loop**
```c
void loop() {
	// main event loop. 
	// Returning from loop() causes tile to go into deep sleep
}
```


###Blink inspection methods###

These are methods that the firmware provides for you to call to find out about the current blink state. These are only updated between calls to loop() to provide a coherent snapshot of a single moment.  


**getFrame**

Get the current frame count value.
Frame count starts at zero on power up and on waking from sleep, or after `reset()`.

```c
frameCount getFrame(void);
```

**getButton**

returns BUTTON_DOWN or BUTTON_UP.

```c
bool getButton();
```

**getNeighborData**

Returns the most recently received data message from the indicated adjacent tile. 

```c
uint8_t getNeighborData( uint8_t side );
```

**getNeighborTimestamp**

Returns the frame count when the most recently data message from the indicated adjacent tile was received. 

All timestamps are cleared to 0 on powerup and on waking from sleep. 

```c
uint16_t getNeighborTimeStamp( uint8_t side );
```

**getNeighborChangedFlag**

Returns true if the indicated adjacent tile has received a valid data message since the last time loop was called.  

```c
bool getNeighborChangedFlag( uint8_t side );
```

**reset**

Reset updates...

* current framecount to 0
* all tile timestamps for all neighbors to 0
* all change flags to false
 
Since the framecount runs out after about 90 minutes, it is good practice to call `reset()` at the end of an game.  

```c
void reset(void);
```

###Blink convenience test methods###

These do not add any functionality to the inspection methods, they just give a fast and easy shortcut to doing common tests. 

Each test method only indicates if the tested property has *changed* since the previous frame. 

**buttonChanged**

```c
bool buttonChanged();
```

**neighborDataChanged**

Returns TRUE if *different* data was received from any neighbor since last frame. 

```c
bool anyNeighborDataChanged();
```

**neighborTimestampChanged**

Returns TRUE if any neighbor received valid data since last frame, even if that data was the same as the previously received data. 

```c
bool anyNeighborTimestampChanged();
```

**getNeighborChangedFlag**

Returns true if the indicated adjacent tile has received a valid data message since the last time loop was called.  

```c
bool neighborTimestampChangedFlag( uint8_t side );
```


###Blink actions###

These are methods that the firmware provides for you to call to make the tile do something outward. 

**transmit**
```c
void transmit(uint8_t value);
// transmit this value to all adjecent tiles. Blind send. 
```

**setColor**
```c
void setColor(uint8_t r, uint8_t g, uint8_t b);
// instantly changes the color of the RGB LED to the values passed
```

###Power Management

Returning the value LOOP_SLEEP from loop() puts the tile into a lowest power sleep mode where it can only be awoken by a button change or valid recieved message.

