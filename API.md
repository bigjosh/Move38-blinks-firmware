#Blinks Firmware API##

##Overview 

An API for interfacing to Autamatile board hardware with the Arduino IDE.

This interface would typically be used though the Move32-blinks-lib library which takes care of much of the busy work. 

You can, however, use this interface to talk directly to the hardware if you want to write a new library or implement features that are not available in the blinks-lib library.


**A default blank sketch**
```c

#include <Autamatiles.h>

void setup() {
	// This code will be run once on power-up, which should only 
	// happen when new batteries are installed.    
}

void loop() {
	// continuous time logic here
}

void neighborChanged() {
	// Called when any neighbor has changed state.
	// It is possible that more than one neighbors changed, or none if one
	// changed back before you have a chance to check. 
	// Note that you have to look at neighbors[] to 
	// find out which neighbor(s) changed. (if you care) 
}

void buttonPressed() {
	// Called when the top button is first pressed. 
	// Only called once per press (debounced). 
}

void onStep() {
	// discrete time logic here
}

```


##API

###Blink global defines###
**TILES**

The number of faces on each tile (these tiles are hexagons). 

```
#define FACE_COUNT 6
```

###Blink global variables###

**neighbors**
```c
int neighbors[6];
// publicly accessible neighbor array, allows for quick simple access to any of the neighbors at all times
```

###Blink methods###
**setState**
```c
void setState(uint16_t n);
// sets the local state of the tile, which is communicated to other tiles ~30fps
```

**setColor**
```c
void setColor(uint8_t r, uint8_t g, uint8_t b);
// instantly changes the color of the RGB LED to the values passed
```

**sendStep**
```c
void sendStep();
// Sends an out of band message to all neighboring tiles that 
// communicates for all connected neighbors to step forward in discrete time
// used for games that are not based on real-time and need to globally update the board at "the same time"
// Does not effect our current state. 
```

###Blink callbacks###

**neighborChanged**
```c
void neighborChanged();
// handles when a neighbor is changed
// (should also know which neighbors have been changed)
```

**onStep**
```c
void onStep();
// handles a discrete step
// (i.e. received a sent step from a neighbor, or called a step was invoked locally)
```

**onWake**
```c
void onWake();
// called once when woken (either by button press or neighbor)
```

**onSleep**
```c
void onSleep();
// called once just before going to sleep (could be a good time to store information if in memory and needed later...)
```

**button**
```c
void buttonPressed();
void buttonReleased();
```

