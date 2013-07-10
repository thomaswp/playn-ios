//
//  GraphicsIOS.m
//  tuxblocks
//
//  Created by Thomas on 7/2/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "IOSGraphics.h"
#import "IOSGLContext.h"
#import "IOSCanvasImage.h"
#import "IOSGLContext.h"
#import "IOSPath.h"
#import "IOSGradient.h"
#import "IOSIntArray.h"
#import "IOSFloatArray.h"
#import "pythagoras/f/IPoint.h"
#import "pythagoras/f/Point.h"
#import "playn/core/ImageLayer.h"
#import "playn/core/CanvasImage.h"
#import "playn/core/Gradient.h"
#import "playn/core/Font.h"
#import "playn/core/TextLayout.h"
#import "playn/core/InternalTransform.h"
#import "playn/core/gl/GLContext.h"
#import "playn/core/gl/GroupLayerGL.h"
#import "playn/core/gl/GL20.h"

@implementation IOSGraphics

- (id) initWithPlatform:(IOSPlatform *)platform withInt:(int)screenWidth_ withInt:(int)screenHeight_ withFloat:(float)viewScale_ withFloat:(float)touchScale_ withBOOL:(BOOL)interpolateCanvasDrawing_ {
    if (self = [super init]) {
        screenWidth = screenWidth_;
        screenHeight = screenHeight_;
        touchScale = touchScale_;
        interpolateCanvasDrawing = interpolateCanvasDrawing_;
        ctx = [[IOSGLContext alloc] initWithPlaynCorePlatform: (id<PlaynCorePlatform>) platform withFloat:viewScale_ withInt:screenWidth_ withInt:screenHeight_];
        rootLayer = [[PlaynCoreGlGroupLayerGL alloc] initWithPlaynCoreGlGLContext:ctx];
        touchTemp = [[PythagorasFPoint alloc] init];
    }
    return self;
}

- (id<PlaynCoreCanvasImage>) createImageWithFloat:(float)width withFloat:(float)height {
    return [[IOSCanvasImage alloc] initWithContext:ctx withWidth:width withHeight:height withInterpolate:interpolateCanvasDrawing];
    return nil;
}

- (id<PlaynCoreGradient>) createLinearGradientWithFloat:(float)x0 withFloat:(float)y0 withFloat:(float)x1 withFloat:(float)y1 withJavaLangIntegerArray:(IOSIntArray *)colors withJavaLangFloatArray:(IOSFloatArray *)positions {
    return [[IOSGradient_Linear alloc] initWithX0:x0 withY0:y0 withX1:x1 withY1:y1 withColors:colors withPositions:positions];
}

- (id<PlaynCoreGradient>) createRadialGradientWithFloat:(float)x withFloat:(float)y withFloat:(float)r withJavaLangIntegerArray:(IOSIntArray *)colors withJavaLangFloatArray:(IOSFloatArray *)positions {
    return [[IOSGradient_Radial alloc] initWithX:x withY:y withR:r withColors:colors withPositions:positions];
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

- (IOSGLContext*) ctx {
    return ctx;
}

- (id<PythagorasFIPoint>) transformTouchWithX:(float)x withY:(int)y {
    [touchTemp setWithFloat:x * touchScale withFloat:y * touchScale];
    return [[ctx rootTransform] inverseTransformWithPythagorasFIPoint:touchTemp withPythagorasFPoint:touchTemp];
}

- (void) paint {
    [ctx paintWithGroupLayer:rootLayer];
}

@end
