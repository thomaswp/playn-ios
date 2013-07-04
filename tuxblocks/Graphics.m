//
//  GraphicsIOS.m
//  tuxblocks
//
//  Created by Thomas on 7/2/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "Graphics.h"
#import "playn/core/ImageLayer.h"
#import "playn/core/gl/GLContext.h"
#import "playn/core/gl/GroupLayerGL.h"
#import "GLContext.h"

@implementation Graphics

- (id) initWithPlatform:(Platform *)platform withInt:(int)screenWidth_ withInt:(int)screenHeight_ withFloat:(float)viewScale_ withFloat:(float)touchScale_ withBOOL:(BOOL)interpolateCanvasDrawing_ {
    if (self = [super init]) {
        screenWidth = screenWidth_;
        screenHeight = screenHeight_;
        touchScale = touchScale_;
        interpolateCanvasDrawing = interpolateCanvasDrawing_;
        ctx = [[GLContext alloc] initWithPlaynCorePlatform: (id<PlaynCorePlatform>) platform withFloat:viewScale_];
        rootLayer = [[PlaynCoreGlGroupLayerGL alloc] initWithPlaynCoreGlGLContext:ctx];
    }
    return self;
}

- (id<PlaynCoreGroupLayer>) rootLayer {
    return rootLayer;
}

- (int) width {
    return invertSizes ? screenHeight : screenWidth;
}

- (int) height {
    return invertSizes ? screenWidth : screenHeight;
}

- (GLContext*) ctx {
    return ctx;
}

- (void) paint {
    [ctx paintWithGroupLayer:rootLayer];
}

@end
