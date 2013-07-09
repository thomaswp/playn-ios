//
//  Canvas.h
//  tuxblocks
//
//  Created by Thomas on 7/8/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "playn/core/gl/AbstractCanvasGL.h"

@class GLContext;


@interface Canvas : PlaynCoreGlAbstractCanvasGL {
    float width, height;
    int texWidth, texHeight;
    
    float strokeWidth;
    int strokeColor;
    void* data;
    CGContextRef bctx;
    NSArray* states;
}

- (id) initWithContext:(GLContext*)context withWidth:(float)width withHeight:(float)height withInterpolate:(BOOL)interpolate;

- (void*) data;
- (int) texWidth;
- (int) texHeight;
- (CGImageRef) cgImage;
- (void) dispose;

@end
