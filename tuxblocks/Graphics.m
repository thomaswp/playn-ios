//
//  GraphicsIOS.m
//  tuxblocks
//
//  Created by Thomas on 7/2/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "Graphics.h"
#import "playn/core/ImageLayer.h"
#import "playn/core/CanvasImage.h"
#import "playn/core/Gradient.h"
#import "playn/core/Font.h"
#import "playn/core/TextLayout.h"
#import "playn/core/gl/GLContext.h"
#import "playn/core/gl/GroupLayerGL.h"
#import "playn/core/gl/GL20.h"
#import "GLContext.h"

@implementation Graphics

- (id) initWithPlatform:(Platform *)platform withInt:(int)screenWidth_ withInt:(int)screenHeight_ withFloat:(float)viewScale_ withFloat:(float)touchScale_ withBOOL:(BOOL)interpolateCanvasDrawing_ {
    if (self = [super init]) {
        screenWidth = screenWidth_;
        screenHeight = screenHeight_;
        touchScale = touchScale_;
        interpolateCanvasDrawing = interpolateCanvasDrawing_;
        ctx = [[GLContext alloc] initWithPlaynCorePlatform: (id<PlaynCorePlatform>) platform withFloat:viewScale_ withInt:screenWidth_ withInt:screenHeight_];
        rootLayer = [[PlaynCoreGlGroupLayerGL alloc] initWithPlaynCoreGlGLContext:ctx];
    }
    return self;
}

- (id<PlaynCoreCanvasImage>) createImageWithFloat:(float)param0 withFloat:(float)param1 {
    NSLog(@"createImage()");
    return nil;
}

- (id<PlaynCoreGradient>) createLinearGradientWithFloat:(float)param0 withFloat:(float)param1 withFloat:(float)param2 withFloat:(float)param3 withJavaLangIntegerArray:(IOSIntArray *)param4 withJavaLangFloatArray:(IOSFloatArray *)param5 {
    NSLog(@"createLinearGradient()");
    return nil;
}

- (id<PlaynCoreGradient>) createRadialGradientWithFloat:(float)param0 withFloat:(float)param1 withFloat:(float)param2 withJavaLangIntegerArray:(IOSIntArray *)param3 withJavaLangFloatArray:(IOSFloatArray *)param4 {
    NSLog(@"createRadialGradient()");
    return nil;
}

- (id<PlaynCoreTextLayout>) layoutTextWithNSString:(NSString *)param0 withPlaynCoreTextFormat:(PlaynCoreTextFormat *)param1 {
    NSLog(@"layoutText()");
    return nil;
}

- (int) width {
    return invertSizes ? [ctx viewHeight] : [ctx viewWidth];
}

- (int) height {
    return invertSizes ? [ctx viewWidth] : [ctx viewHeight];
}

- (int) screenWidth {
    return invertSizes ? screenHeight : screenWidth;
}

- (int) screenHeight {
    return invertSizes ? screenWidth : screenHeight;
}

- (id<PlaynCoreGroupLayer>) rootLayer {
    return rootLayer;
}

- (id<PlaynCoreGlGL20>) gl20 {
    NSLog(@"GL20!");
    return nil;
}

- (GLContext*) ctx {
    return ctx;
}

- (void) paint {
    [ctx paintWithGroupLayer:rootLayer];
}

@end
