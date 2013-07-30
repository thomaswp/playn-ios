### Playn-IOS ###

This is an Objective-C port of the iOS branch of the PlayN cross-platform game engine. Using the j2objc transpiler, it allows users to port their PlayN games to iOS without the use of the proprietary Xaramin Studio.

Supported Versions:
PlayN-IOS supports PlayN v1.7, j2objc 0.8.2 and tripleplay v1.7. Any other versions or project dependencies may be compatible but are not directly supported at present.

PlayN-IOS is built for iOS 6. It is likely compatible with other versions, but they are not supported yet.

This project is meant to be run on a Mac with Xcode, as iOS development is not possible on a PC.

To translate your PlayN sources:
* Download [j2objc](http://code.google.com/p/j2objc/) version 0.8.2
* Copy the trans.sh file in this folder to your project's root folder
* Make sure that you have maven installed and your project runs normally
* Open the copied trans.sh file and edit the first line so that J2OBJC_PATH points to your j2objc-0.8.2 installation folder
* If your maven repository directory is different from default (which is not likely), you will need to change the MAVEN_REPO variable to point to your repository folder
* If you project does not require tripleplay, comment out the first "find" command in the trans.sh file and use the second instead.
* Open a terminal and move to your project's root directory
* run "sh trans.sh"
* Your translated sources will appear in the objc folder in your project's root directory


To rebuild libPlayN-IOS.a
* Open the PlayN-IOS project
* Under Target->Build Phases->Run Script, uncheck the "Run only when installing" box
* Build the project, and it should execute a script. At the end, a folder should open with the newly built library

To create an iOS distribution of your game, like PlayN-IOSSample:
* Create a new Empty iOS Project in Xcode. Make sure to check the Use ARC box.
* Add the PlayN-IOS.xcodeproj file to your project. This should appear as an expandable sub-project. If it does not, make sure PlayN-IOS is not open in any other Xcode windows and try again.
* Copy the contents of your translated "objc" folder to your project's main source folder (the one with the AppDelegate, not the .xcodeproj). Make sure you bring the contents of the "objc" folder, and not the folder itself. Add this folder to you project, creating *groups* (not folder references).
* Inside of your original PlayN project, find the assets/src/main/resources/assets folder. Copy this folder into your project's main source folder (see above). This time, copy the folder itself, not the contents. Add this folder to your project, creating *folder references* (not groups).
* Under your project's Targets menu, select the Build Settings tab. Search for "User Header Search Paths". Add the following items, each with a non-recursive search. For the first two items, make sure you are either using a relative path, or a full system path to the folder indicated:
** The path to "PlayN-IOS/PlayN-IOS/include"
** The path to "PlayN-IOS/PlayN-IOS/j2objc/include"
** The path to your sources folder, which should be: "$(SRCROOT)/my-project"
* Now, again under Build Settings, search for the "Other Linker Flags" option. Add "-ObjC" (without quotes).
* Under the PlayN-IOS project, you should see 6 frameworks. Make sure they are all included in your project, either by going to the Build Phases tab of your selected Target, and adding them under "Link Binary With Libraries" -or- by dragging them over from the PlayN-IOS project to your own (this should work and is easier).
* Under Target->Build Phases->Link Target With Binaries, add a new item. Look under the Workspaces folder and find libPlayN-IOS.a and add it
* Edit your AppDelegate.m to mirror that of PlayN-IOSTester, using your game instead. Make sure to import your own game's header and configure the Platform as you choose.
* You should be ready to go. With any luck, your project will run without a hitch.


To create a tester project, like PlayN-IOSTester:
* Create a new Empty iOS Project in Xcode. Make sure to check the Use ARC box.
* Add the PlayN-IOS.xcodeproj file to your project. This should appear as an expandable sub-project. If it does not, make sure PlayN-IOS is not open in any other Xcode windows and try again.
* Copy the contents of your translated "objc" folder to your project's main source folder (the one with the AppDelegate, not the .xcodeproj). Make sure you bring the contents of the "objc" folder, and not the folder itself. Add this folder to you project, creating *groups* (not folder references).
* Inside of your original PlayN project, find the assets/src/main/resources/assets folder. Copy this folder into your project's main source folder (see above). This time, copy the folder itself, not the contents. Add this folder to your project, creating *folder references* (not groups).
* Under your project's Targets menu, select the Build Settings tab. Search for "User Header Search Paths". Add the following items, each with a non-recursive search. For the first two items, make sure you are either using a relative path, or a full system path to the folder indicated:
** The path to "PlayN-IOS/PlayN-IOS/include"
** The path to "PlayN-IOS/PlayN-IOS/j2objc/include"
** The path to your sources folder, which should be: "$(SRCROOT)/my-project"
* Now, again under Build Settings, search for the "Other Linker Flags" option. Add "-ObjC" (without quotes).
* Under the PlayN-IOS project, you should see 6 frameworks. Make sure they are all included in your project, either by going to the Build Phases tab of your selected Target, and adding them under "Link Binary With Libraries" -or- by dragging them over from the PlayN-IOS project to your own (this should work and is easier).
* Under Target->Build Phases->Link Target With Binaries, add a new item. Look under the Workspaces folder and find libPlayN-IOS.a and add it
* Edit your AppDelegate.m to mirror that of PlayN-IOSTester, using your game instead. Make sure to import your own game's header and configure the Platform as you choose.
* You should be ready to go. With any luck, your project will run without a hitch.
