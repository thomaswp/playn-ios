//
//  AppDelegate.m
//  PlayN-IOSSample
//
//  Created by Thomas on 7/10/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

// Required imports
#import "AppDelegate.h"
#import "IOSPlatform.h"
#import "playn/core/PlayN.h"

// Import your game using the full package path
// If you headers do not show up, recheck your "User header search paths"
// in your target's build options
#import "playn/sample/hello/core/HelloGame.h"
#import "playn/sample/cute/core/CuteGame.h"
#import "playn/showcase/core/Showcase.h"

// Check AppDelegate.h - make sure it inherits from IOSAppDelegate
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Call super
    [super application:application didFinishLaunchingWithOptions:launchOptions];
    
    // Create a Config and set options
    IOSPlatform_Config* config = [[IOSPlatform_Config alloc] init];
    // targetFPS = 60 / frameInterval
    config->frameInterval = 2;
    // You can target different orientations
    config->orients = [SupportedOrients ALL];
    // Register the IOS Platform
    [IOSPlatform registerPlatformWithApp:application withConfig:config];
    
    // Chose which sample game to test
//    PlaynSampleHelloCoreHelloGame* game = [[PlaynSampleHelloCoreHelloGame alloc] init];
//    PlaynSampleCuteCoreCuteGame* game = [[PlaynSampleCuteCoreCuteGame alloc] init];
    PlaynShowcaseCoreShowcase* game = [[PlaynShowcaseCoreShowcase alloc] initWithPlaynShowcaseCoreShowcase_DeviceService:nil];
    
    // Run the game
    [PlaynCorePlayN runWithPlaynCoreGame:game];
    
    return YES;
}
							


@end
