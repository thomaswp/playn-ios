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

- (void) setRgbWithInt:(int)startX withInt:(int)startY withInt:(int)width withInt:(int)height withIntArray:(IOSIntArray *)rgbArray withInt:(int)offset withInt:(int)scanSize {
    NSLog(@"CanvasImage.setRgb()");
    //TODO: fix... everything
    char* data = [canvas data];
    int regionBytesLength = width * height * 4;
    int x = 0;
    int y = 0; //height - 1; //inverted y
    for (int px = 0; px < regionBytesLength; px += 4) {
        int index = offset + y * scanSize + x;
        int color = [rgbArray intAtIndex:index];
        int a = color >> 24;
        int r = (color >> 16) & 0xFF;
        int g = (color >> 8) & 0xFF;
        int b = color & 0xFF;
        
        data[px    ] = r;
        data[px + 1] = g;
        data[px + 2] = b;
        data[px + 3] = a;
    
        x++;
        if (x == width) {
            x = 0;
            y++; //y--;
        }
    }
}

- (void) updateTextureWithInt:(int)tex {
    [((IOSGLContext*) ctx_) updateTextureWithInt:tex withInt:[canvas texWidth] withInt:[canvas texHeight] withData:[canvas data]];
}


@end
