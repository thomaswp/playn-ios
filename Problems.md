## Problems ##

*The following are problems identified using j2objc to transpile the PlayN libraries:*

**Pythagoras:**
* Area.m in both f/ and d/ makes Xcode hang when archiving/profiling; seems like and Xcode bug: removed files
* Crossing.m in both f/ and d/ has ax and Ax with duplicate setters: commented out

**PlayN:**
* asFloat/Int/ShortBuffer() undefined:
 - gl/GL20Buffer.java: commented out
 - gl/GLContext.java
 - Buffers.java: commented out
* GL20 Constants interfere with UIKit: removed GL20 sources

**TriplePlay:**
* CompositeBackground.java throws error: AssertionError: could not find constructor
 - erased methods in Background.java referencing the class 
* sound/Soundboards: generics with Float as a type parameter have a problem
* util/Ref.java has crazy generisim, which created a duplicate method. Removed one version of the method (didn't seem to be used)
* ScreenStack.java: Transistor nils its parent's reference to itself before it's fully finished, meaning ARC destroys it before it's done: moved nil to end of complete logic

**TuxBlocks:**
* Renders have problem where inner classes don't assign a reference to the outer class until after a super constructor class: just moved outer class assignment to before constructor
* All Rounds have the same problem as above, and same solution
* TimesBlock.java/Ninepatch.java: 2d Arrays of protocols (interfaces) break jre_emul. Made TimesBlock just use a regular BlockLayer in the meantime.
