//
//  PlatformIOS.h
//  tuxblocks
//
//  Created by Thomas on 7/2/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "playn/core/AbstractPlatform.h"

@class Graphics;
@class Assets;
@class Pointer;
@class Log;

@interface Platform : PlaynCoreAbstractPlatform {
    int lastTick;
    int elapsedTime;
    id<PlaynCoreGame> game;
    Graphics* graphics;
    Assets* assets;
    Pointer* pointer;
    Log* log;
}

- (void) update;
- (void) paint;
- (void) registerPlatform;
- (void) viewDidInitWithInt:(int)defaultFrameBuffer;

@end
