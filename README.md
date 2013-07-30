### Playn-IOS ###

This is an Objective-C port of the iOS branch of the [PlayN cross-platform game engine](http://code.google.com/p/playn/). Using the [j2objc transpiler](http://code.google.com/p/j2objc/), it allows users to port their PlayN games to iOS for free, without the use of the proprietary Xaramin Studio.

#### Supported Versions: ####
PlayN-IOS supports PlayN v1.7 and tripleplay v1.7. Any other versions or project dependencies may be compatible but are not directly supported at present.

All sources are translated with j2objc-0.8.2, and this version should be used for any other source translation.

PlayN-IOS is built for iOS 6. It is likely compatible with other versions, but they are not directly supported yet.

This project is meant to be run on a Mac with Xcode, as iOS development is not possible on a PC.

#### Getting started ####
How to get started depends on what you want to do.
* If you'd like to see a sample of what PlayN-IOS can do, start by opening the PlayN-IOSTester project in Xcode. It should run right out of the box. Open the AppDelegate.m file to chose from 3 different PlayN samples to run. Uncomment the one you'd like to see. The Hello and Cute projects have been translated without any modification. The Showcase project has had the Peas sample removed (no Box2d support yet).
* If you'd like to see if your own project will work with PlayN-IOS:
  + Check the FAQ to see if your game's features are supported
  + Translate your sources (see instructions below)
  + Make a PlayN-IOS *sample* project (see instructions below)
* If you'd like to improve PlayN-IOS by adding support for your game's features:
  + Translate your sources (see instructions below)
  + Make a PlayN-IOS *tester* project (see instructions below), which will let your edit PlayN-IOS in the context of your game

#### Included in this distribution ####
This distribution contains the following:
* PlayN-IOS: an Xcode project including the translated sources of PlayN, tripleplay and their dependencies, as well as the natively written IOS backend.
* PlayN-IOSSample: a sample Xcode project using PlayN-IOS (as a compiled static library) to run a translated PlayN game, in this case the Hello sample from the playn-samples project.  For users interested in porting their own PlayN games to iOS, this is the template to follow.
* PlayN-IOSTester: an Xcode project which references the PlayN-IOS project as a sub-project, rather than a compiled binary. This allows the development of PlayN-IOS in the context of a sample game. This project includes translations of the Hello, Cute and Showcase sample projects from playn-samples.
* lib: contains the most recent compiled binary of PlayN-IOS
* Problems.md: lists the current incompatibilities between j2objc and PlayN. These translation problems have to be corrected manually, so it helps to have a list of them. While the problems are minimal and addressable, this does mean that the PlayN sources must be modified after translation.
* trans.sh: a shell script for translating a PlayN project's sources into Objective-C, for use with PlayN-IOS


#### FAQ ####
**Q**: How does PlayN-IOS work?  
**A**: PlayN-IOS uses a program called j2objc to translate the PlayN platform into Objective-C, the language that iOS uses. Since PlayN is platform agnostic, it doesn't need to interact directly with iOS. PlayN-IOS is a library that bridges that gap, allowing PlayN to communicate with iOS the same it does with LWJGL (on the PC), GWT (on the web) or Android. When your game's sources are translated by j2objc, they interact with PlayN the same way they did in Java, only now it can run on iOS.

**Q**: But doesn't PlayN already have an iOS backend?  
**A**: Yes, and PlayN-IOS is just an implementation of that backend in Objective-C, instead of Java. Unfortunately, PlayN's iOS backend relies on Xamarin Studio, proprietary software which charges a licensing fee ($300-$1000 a year). PlayN-IOS is a free and open source alternative to that.

**Q**: What features are supported?  
**A**: PlayN-IOS is still under heavy development, and no feature is 100% finished. Most PlayN features are supported, but many are still under development, including:
* Analytics
* Net
* Storage
* Sound
* Some text/canvas operations
* Performance is still a major issue, as well.

**Q**: But this looks complicated...  
**A**: Yes, it's not as simple as using the iOS build that comes with PlayN, but if you follow the instructions it should work without any real knowledge of Xcode or objective-c.


#### Translating your sources ####
* Download [j2objc](http://code.google.com/p/j2objc/downloads/list?can=1) version 0.8.2
* Copy the trans.sh file in this folder to your PlayN project's root folder
* Make sure that you have maven installed and that your project runs normally
* Open the copied trans.sh file and edit the first line so that J2OBJC_PATH points to your j2objc-0.8.2 installation folder
* If your maven repository directory is different from default (which is not likely), you will need to change the MAVEN_REPO variable to point to your repository folder
* If you project does not require tripleplay, comment out the first "find" command in the trans.sh file and use the second instead.
* Open a terminal and cd to your project's root directory
* run "sh trans.sh"
* Your translated sources will appear in the objc folder in your project's root directory


#### Making a PlayN-IOS project (like PlayN-IOSSample) ####
1. Create a new Empty iOS Project in Xcode. Make sure to check the Use ARC box.
2. Follow the instructions above on translating your PlayN project sources. Copy the contents of your translated "objc" folder to your project's main source folder (the one with the AppDelegate, not the .xcodeproj). Make sure you bring the *contents* of the "objc" folder, and not the folder itself. Add the contents to you project, creating *groups* (not folder references).
3. Inside of your original PlayN project, find the assets/src/main/resources/assets folder. Copy this folder into your project's main source folder (see above). This time, copy the folder itself, not the contents. Add this folder to your project, creating *folder references* (not groups).
4. Go to your project settings and select your project's main [Target](http://developer.apple.com/library/ios/#featuredarticles/XcodeConcepts/Concept-Targets.html). Under the Build Phases tab, under "Link Target with Binaries", click the (+) button. Chose "Add Other..." and browse to the lib/libPlayN-IOS.a file included with this download. Alternately, you can copy the binary into your project's folder and browse to its location there.
5. Click the (+) button again, and add the following Frameworks, if they are not already present:
 * Foundation
 * UIKit
 * GLKit
 * OpenGLES
 * CoreGraphics
 * CoreText
6. Now select the Build Settings tab. Search for "User Header Search Paths". Add the following items, each with a non-recursive search. The first two items are folders included in this distribution. Make sure to use a complete path to these folders. Alternatively, you may copy these folders into your project and reference them there:
 * The path to "PlayN-IOS/PlayN-IOS/include"
 * The path to "PlayN-IOS/PlayN-IOS/j2objc/include"
 * The relative path to your sources folder where you copied your translated sources, which should be: "$(SRCROOT)/my-project", where "my-project" is the name of your project
7. Now, again under Build Settings, search for the "Other Linker Flags" option. Add "-ObjC" (without quotes).
8. Edit your AppDelegate.h and .m to mirror those of PlayN-IOSSample, using your game instead. There are instructions in the comments. Make sure to import your own game's header and configure the Platform as you choose. Your AppDelegate should inherit IOSAppDelegate.
9. You should be ready to go. With any luck, your project will run without a hitch.


#### Making a Playn-IOS tester project (like PlayN-IOSTester) ####
Follow the steps for creating a PlayN-IOS sample project, above, with the following modifications:
* Insert step 3.5: Add the PlayN-IOS/PlayN-IOS.xcodeproj file to your project. This should appear as an expandable sub-project. If it does not, make sure PlayN-IOS is not open in any other Xcode windows and try again.
* In step 4., rather than selecting "Add Other..." and browsing for libPlayN-IOS.a, you should find it under the "Workspace" folder, after hitting the (+) button.
* In step 6., do *not* copy the included headers into your project. Reference the original files in PlayN-IOS directory, which you can then modify as you update PlayN-IOS to your liking.


#### To rebuild libPlayN-IOS.a ####
After you've modified PlayN-IOS, and you want to rebuild the static library:
* Open the PlayN-IOS project
* Under Target->Build Phases->Run Script, uncheck the "Run only when installing" box
* Clean the project (not necessarily required, but usually helps)
* Build the project, and it should execute a script. At the end, a folder should open with the newly built library in a Debug-universal folder. If it does not pop up, this folder should be located in your project's derived data folder.
* You may want to recheck the "Run only when installing" option afterwards, so the library isn't built with every compile

 
