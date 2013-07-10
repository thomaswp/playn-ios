//
//  CanvasImage.m
//  tuxblocks
//
//  Created by Thomas on 7/8/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "IOSCanvasImage.h"
#import "IOSGLContext.h"
#import "IOSCanvas.h"
#import "IOSImage.h"
#import "playn/core/Canvas.h"
#import "playn/core/Image.h"

@implementation IOSCanvasImage

- (id) initWithContext:(IOSGLContext *)context withWidth:(float)width withHeight:(float)height withInterpolate:(BOOL)interpolate {
    if (self = [super initWithPlaynCoreGlGLContext:context withPlaynCoreGlScale:[context scale_]]) {
        canvas = [[IOSCanvas alloc] initWithContext:context withWidth:width withHeight:height withInterpolate:interpolate];
    }
    return self;
}

- (id<PlaynCoreCanvas>) canvas {
    return canvas;
}

- (id<PlaynCoreImage>) snapshot {
    return [[IOSImage alloc] initWithPlaynCoreGlGLContext:ctx_ withCGImage:[canvas cgImage] withPlaynCoreGlScale:scale__];
}

- (CGImageRef) cgImage {
    return [canvas cgImage];
}

- (float) width {
    return [canvas width];
}

- (float) height {
    return [canvas height];
}

- (int) ensureTexture {
    if ([canvas dirty]) {
        [canvas clearDirty];
        [self clearTexture];
    }
    return [super ensureTexture];
}

- (void) setRgbWithInt:(int)startX withInt:(int)startY withInt:(int)width withInt:(int)height withJavaLangIntegerArray:(IOSIntArray *)rgbArray withInt:(int)offset withInt:(int)scanSize {
    NSLog(@"CanvasImage.setRgb()");
}

- (void) updateTextureWithInt:(int)tex {
    [((IOSGLContext*) ctx_) updateTextureWithInt:tex withInt:[canvas texWidth] withInt:[canvas texHeight] withData:[canvas data]];
}


@end
