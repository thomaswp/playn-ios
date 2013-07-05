//
//  PlatformIOS.m
//  tuxblocks
//
//  Created by Thomas on 7/2/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "Platform.h"
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
#import "Graphics.h"
#import "GLContext.h"
#import "Assets.h"
#import "Pointer.h"
#import "Log.h"

@implementation Platform

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
        
        graphics = [[Graphics alloc] initWithPlatform:self withInt:screenWidth withInt:screenHeight withFloat:viewScale withFloat:deviceScale withBOOL:NO]; //TODO: support interpolation
        assets = [[Assets alloc] initWithPlatform:self];
        pointer = [[Pointer alloc] init];
        log = [[Log alloc] init];
        lastTick = (int) [self time];
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
    return (id<PlaynCoreGraphics>) graphics;
}

- (id<PlaynCoreAssets>) assets {
    return (id<PlaynCoreAssets>) assets;
}

- (id<PlaynCorePointer>) pointer {
    return (id<PlaynCorePointer>) pointer;
}

- (id<PlaynCoreLog>) log {
    return log;
}

- (id<PlaynCoreAudio>) audio {
    return nil;
}

- (float) random {
    return [JavaLangMath random];
}

- (double) time {
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
    NSLog(@"update");
    [runQueue_ execute];
    int delta = (int) [self time] - lastTick;
    elapsedTime += delta;
    [game tickWithInt: elapsedTime];
    [[graphics ctx] flush];
    lastTick += delta;
}

- (void) paint {
    NSLog(@"paint");
    [graphics paint];
}

@end
