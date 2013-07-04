//
//  PlatformIOS.m
//  tuxblocks
//
//  Created by Thomas on 7/2/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "Platform.h"
#import "java/lang/Runnable.h"
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
#import "Assets.h"
#import "Pointer.h"

@implementation Platform

- (id) init {
    if (self = [super initWithPlaynCoreLog:nil]) {
        graphics = [[Graphics alloc] initWithPlatform:self withInt:320 withInt:480 withFloat:1 withFloat:1 withBOOL:NO];
        assets = [[Assets alloc] initWithPlatform:self];
        pointer = [[Pointer alloc] init];
        lastTick = (int) [self time];
    }
    return self;
}

- (void) registerPlatform {
    [PlaynCorePlayN setPlatform: self];
}

- (void) update {
    [runQueue_ execute];
    int delta = (int) [self time] - lastTick;
    elapsedTime += delta;
    [game tickWithInt: elapsedTime];
    [[graphics ctx] flush];
    lastTick += delta;
}

- (void) paint {
    [graphics paint];
}

- (double) time {
    return CACurrentMediaTime() * 1000;
}

- (void) runWithPlaynCoreGame:(id<PlaynCoreGame>)game_ {
    game = game_;
    [game init__];
}

- (void) invokeAsyncWithJavaLangRunnable:(id<JavaLangRunnable>)action {
    [action run]; //TODO: Make this async
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

- (id<PlaynCoreAudio>) audio {
    return nil;
}

- (int) tick {
    return elapsedTime;
}


@end
