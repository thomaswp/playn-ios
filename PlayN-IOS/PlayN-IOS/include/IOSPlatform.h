//
//  PlatformIOS.h
//  tuxblocks
//
//  Created by Thomas on 7/2/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "playn/core/AbstractPlatform.h"

@class IOSGraphics;
@class IOSAssets;
@class IOSPointer;
@class IOSLog;

@interface IOSPlatform : PlaynCoreAbstractPlatform {
    long long lastTick;
    int elapsedTime;
    id<PlaynCoreGame> game;
    IOSGraphics* graphics;
    IOSAssets* assets;
    IOSPointer* pointer;
    IOSLog* log;
    int frames;
    long long lastFPS;
}

- (void) update;
- (void) paint;
- (void) registerPlatform;
- (void) viewDidInitWithInt:(int)defaultFrameBuffer;

@end
