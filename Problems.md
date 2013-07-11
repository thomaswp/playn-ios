## Problems ##

The following are problems identified using j2objc to transpile the PlayN libraries:

Pythagoras:
-Area.m in both f/ and d/ makes Xcode hang when archiving: simply avoided archiving
-Crossing.m in both f/ and d/ has ax and Ax with duplicate setters: commented out

PlayN:
-asFloat/Int/ShortBuffer() undefined:
  -gl/GL20Buffer.java: commented out
  -gl/GLContext.java
  -Buffers.java: commented out
-GL20 Constants interfere with UIKit: removed GL20 sources

React:
-AbstractSignal and AbstractValue use anonymous classes that use their subtypes, which causes an import loop: wrote fixes in manually, moving the offending anonymous classes to new files

TriplePlay:
-CompositeBackground.java throws error: AssertionError: could not find constructor
  -erased methods in Background.java referencing the class 
-anim/Animation_ChainBuilder has the import loop problem: wrote manual fix, since it's essentially an anonymous class
-sound/Soundboars: import loop with Anonymous class; also, generics with Float as a type parameter have a problem
-SyncDB has a disgusting amount of nesting so I just removed it
-util/Ref.java has crazy generisim, which created a duplicate method
-ui/Field.java just was missing an import of pythagoras/f/Dimension.h - no idea why

TuxBlocks:
-All walkers: pythagoras/i/Point not imported: added manually
-Sobol: 2d int array doesn't work…
-Grid: 2d boolean array also seg faults