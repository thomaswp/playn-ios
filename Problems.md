## Problems ##

*The following are problems identified using j2objc to transpile the PlayN libraries:*

**Pythagoras:**
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
* sound/Soundboards: generics with Float as a type parameter have a problem: added manual cast
* util/Ref.java has crazy generisim, which created a duplicate method. Removed one version of the method (didn't seem to be used)
* ScreenStack.java: Transistor nils its parent's reference to itself before it's fully finished, meaning ARC destroys it before it's done: moved nil to end of complete logic

