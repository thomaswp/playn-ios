//
//  PlatformIOS.m
//  tuxblocks
//
//  Created by Thomas on 7/2/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "IOSPlatform.h"
#import "IOSGraphics.h"
#import "IOSGLContext.h"
#import "IOSAssets.h"
#import "IOSPointer.h"
#import "IOSLog.h"
#import "IOSKeyboard.h"
#import "java/lang/Runnable.h"
#import "java/lang/Math.h"
#import "java/lang/System.h"
#import "playn/core/PlayN.h"
#import "playn/core/Game.h"
#import "playn/core/Audio.h"
#import "playn/core/Graphics.h"
#import "playn/core/Mouse.h"
#import "playn/core/Keyboard.h"
#import "playn/core/Touch.h"
#import "playn/core/Pointer.h"
#import "playn/core/RegularExpression.h"
#import "playn/core/Assets.h"
#import "playn/core/Net.h"
#import "playn/core/util/RunQueue.h"
#import "playn/core/gl/GLContext.h"

@implementation IOSPlatform

bool DISPLAY_FPS = NO;

- (id) init {
    if (self = [super initWithPlaynCoreLog:nil]) {
        
        float deviceScale = [UIScreen mainScreen].scale;
        CGRect bounds = [UIScreen mainScreen].bounds;
        int screenWidth = (int)bounds.size.width, screenHeight = (int)bounds.size.height;
        BOOL useHalfSize = (screenWidth >= 768) && NO; //TODO: support ipad like iphone
        float viewScale = (useHalfSize ? 2 : 1) * deviceScale;
        if (useHalfSize) {
            screenWidth /= 2;
            screenHeight /= 2;
        }
        
        graphics = [[IOSGraphics alloc] initWithPlatform:self withInt:screenWidth withInt:screenHeight withFloat:viewScale withFloat:deviceScale withBOOL:NO]; //TODO: support interpolation
        assets = [[IOSAssets alloc] initWithPlatform:self];
        pointer = [[IOSPointer alloc] initWithGraphics:graphics];
        log = [[IOSLog alloc] init];
        lastTick = [self timeLong];
        lastFPS = lastTick;
    }
    return self;
}

- (void) invokeAsyncWithJavaLangRunnable:(id<JavaLangRunnable>)action {
    [action run]; //TODO: Make this async
}

- (PlaynCorePlatform_TypeEnum*) type {
    return [PlaynCorePlatform_TypeEnum IOS];
}

- (void) registerPlatform {
    [PlaynCorePlayN setPlatform: self];
}

- (void) viewDidInitWithInt:(int)defaultFrameBuffer {
    [[graphics ctx] viewDidInitWithInt:defaultFrameBuffer];
}

- (id<PlaynCoreGraphics>) graphics {
    return graphics;
}

- (id<PlaynCoreAssets>) assets {
    return assets;
}

- (id<PlaynCorePointer>) pointer {
    return pointer;
}

- (id<PlaynCoreLog>) log {
    return log;
}

- (id<PlaynCoreAudio>) audio {
    return nil;
}

- (id<PlaynCoreKeyboard>) keyboard {
    return keyboard;
}

- (float) random {
    return [JavaLangMath random];
}

- (double) time {
    return (double)[self timeLong];
}

- (long long) timeLong {
    return [JavaLangSystem currentTimeMillis];
}

- (int) tick {
    return elapsedTime;
}

- (void) runWithPlaynCoreGame:(id<PlaynCoreGame>)game_ {
    game = game_;
    [game init__];
}

- (void) update {
//    NSLog(@"update");
    [runQueue_ execute];
    int delta = [self timeLong] - lastTick;
    elapsedTime += delta;
    [game tickWithInt: elapsedTime];
    [[graphics ctx] flush];
    lastTick += delta;
}

- (void) paint {
//    NSLog(@"paint");
    [graphics paint];
    [self updateFPS];
}

- (void) updateFPS {
    if (!DISPLAY_FPS) return;
    frames++;
    if ([self timeLong] - lastFPS > 1000) {
        lastFPS += 1000;
        NSLog(@"%dfps", frames);
        frames = 0;
    }
}

@end
