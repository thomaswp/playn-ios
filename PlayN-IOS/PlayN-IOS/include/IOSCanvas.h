//
//  Canvas.h
//  tuxblocks
//
//  Created by Thomas on 7/8/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "playn/core/gl/AbstractCanvasGL.h"

@class IOSGLContext;

@interface IOSCanvas_ImageHolder : NSObject {
@public CGContextRef bctx;
}

@end

@interface IOSCanvas : PlaynCoreGlAbstractCanvasGL {
    float width, height;
    int texWidth, texHeight;
    
    float strokeWidth;
    int strokeColor;
    char* data;
    CGContextRef bctx;
    IOSCanvas_ImageHolder* contextHolder;
    NSMutableArray* states;
}

+ (CGColorRef) toCGColor:(int)color;

- (id) initWithContext:(IOSGLContext*)context withWidth:(float)width withHeight:(float)height withInterpolate:(BOOL)interpolate;
- (char*) data;
- (int) texWidth;
- (int) texHeight;
- (CGImageRef) cgImage;
- (void) dispose;

@end
