//
//  Canvas.m
//  tuxblocks
//
//  Created by Thomas on 7/8/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <CoreText/CoreText.h>
#import "IOSCanvas.h"
#import "IOSCanvasState.h"
#import "IOSGLContext.h"
#import "IOSGradient.h"
#import "IOSCanvasState.h"
#import "IOSPath.h"
#import "IOSPattern.h"
#import "IOSGraphics.h"
#import "IOSFont.h"
#import "IOSTextLayout.h"
#include "playn/core/gl/Scale.h"
#include "playn/core/Path.h"
#include "playn/core/Canvas.h"

CGColorSpaceRef colorSpace;

@implementation IOSCanvas_ImageHolder

@end

@implementation IOSCanvas

- (id) initWithContext:(IOSGLContext *)context withWidth:(float)width_ withHeight:(float)height_ withInterpolate:(BOOL)interpolate {
    if (self = [super init]) {
        if (width_ <= 0 || height_ <= 0) @throw @"Invalid size";
        width = width_; height = height_;
        strokeWidth = 1;
        strokeColor = 0xFF000000;
        states = [[NSMutableArray alloc] init];
        [states addObject:[[IOSCanvasState alloc] init]];
        
        texWidth = [context.scale_ scaledCeilWithFloat:width];
        texHeight = [context.scale_ scaledCeilWithFloat:height];
        data = (char *) malloc(texWidth * texHeight * 4 * sizeof(char));
        
        if (!colorSpace) colorSpace = CGColorSpaceCreateDeviceRGB();
        bctx = CGBitmapContextCreate(data, texWidth, texHeight, 8, 4 * texWidth, colorSpace, kCGImageAlphaPremultipliedLast);
        contextHolder = [[IOSCanvas_ImageHolder alloc] init];
        contextHolder->bctx = bctx;
        
        if (!interpolate) {
            CGContextSetInterpolationQuality(bctx, kCGInterpolationNone);
        }
        
        CGContextTranslateCTM(bctx, 0, [context.scale_ scaledWithFloat:height]);
        CGContextScaleCTM(bctx, context.scale_.factor, -context.scale_.factor);
        
        [self clear];
    }
    return self;
}

- (char*) data {
    return data;
}

- (int) texWidth {
    return texWidth;
}

- (int) texHeight {
    return texHeight;
}

- (CGImageRef) cgImage {
    return CGBitmapContextCreateImage(bctx);
}

- (void) dispose {
    if (bctx) {
        CGContextRelease(bctx);
    }
    if (data) free(data);
}

- (float) width {
    return width;
}

- (float) height {
    return height;
}

- (id<PlaynCoreCanvas>) clear {
    return [self clearRectWithFloat:0 withFloat:0 withFloat:texWidth withFloat:texHeight];
}

- (id<PlaynCoreCanvas>) clearRectWithFloat:(float)x withFloat:(float)y withFloat:(float)width_ withFloat:(float)height_ {
    CGContextClearRect(bctx, CGRectMake(0, 0, width_, height_));
    isDirty_ = YES;
    return self;
}

- (id<PlaynCoreCanvas>) clipRectWithFloat:(float)x withFloat:(float)y withFloat:(float)width_ withFloat:(float)height_ {
    CGContextClipToRect(bctx, CGRectMake(x, y, width_, height_));
    return self;
}

- (id<PlaynCorePath>) createPath {
    return [[IOSPath alloc] init];
}

- (id<PlaynCoreCanvas>) drawPointWithFloat:(float)x withFloat:(float)y {
    [self save];
    [self setStrokeWidthWithFloat:0.5f];
    [self strokeRectWithFloat:x+0.25f withFloat:y+0.25f withFloat:0.5f withFloat:0.5f];
    [self restore];
    return self;
}

- (id<PlaynCoreCanvas>) drawTextWithNSString:(NSString *)text withFloat:(float)x withFloat:(float)y {
    CGContextSaveGState(bctx);
    CGContextTranslateCTM(bctx, x, y + CTFontGetDescent([IOSGraphics defaultFont]->ctFont));
    CGContextScaleCTM(bctx, 1, -1);
    CGContextSelectFont(bctx, [[[IOSGraphics defaultFont] iosName] UTF8String], [IOSGraphics defaultFont].size, kCGEncodingMacRoman);
    CGContextShowTextAtPoint(bctx, 0, 0, [text UTF8String], [text length]);
    CGContextRestoreGState(bctx);
    isDirty_ = YES;
    return self;
}

- (id<PlaynCoreCanvas>) fillCircleWithFloat:(float)x withFloat:(float)y withFloat:(float)radius {
    IOSGradient* gradient = [self currentState]->gradient;
    if (gradient == nil) {
        CGContextFillEllipseInRect(bctx, CGRectMake(x - radius, y - radius, radius * 2, radius * 2));
    } else {
        //TODO: clip to circle
        [gradient fillWithContext:bctx];
    }
    isDirty_ = YES;
    return self;
}

- (id<PlaynCoreCanvas>) fillPathWithPlaynCorePath:(id<PlaynCorePath>)path {
    CGContextAddPath(bctx, ((IOSPath*)path)->cgPath);
    IOSGradient* gradient = [self currentState]->gradient;
    if (gradient == nil) {
        CGContextFillPath(bctx);
    } else {
        CGContextClip(bctx);
        [gradient fillWithContext:bctx];
    }
    isDirty_ = YES;
    return self;
}

- (id<PlaynCoreCanvas>) fillRectWithFloat:(float)x withFloat:(float)y withFloat:(float)width_ withFloat:(float)height_ {
    IOSGradient* gradient = [self currentState]->gradient;
    CGRect rect = CGRectMake(x, y, width_, height_);
    if (gradient == nil) {
        CGContextFillRect(bctx, rect);
    } else {
        CGContextSaveGState(bctx);
        CGContextClipToRect(bctx, rect);
        [gradient fillWithContext:bctx];
        CGContextRestoreGState(bctx);
    }
    isDirty_ = YES;
    return self;
}

- (id<PlaynCoreCanvas>) fillRoundRectWithFloat:(float)x withFloat:(float)y withFloat:(float)width_ withFloat:(float)height_ withFloat:(float)radius {
    [self addRoundRectPathWithX:x withY:y withWidth:width_ withHeight:height_ withRadius:radius];
    IOSGradient* gradient = [self currentState]->gradient;
    if (gradient == nil) {
        CGContextFillPath(bctx);
    } else {
        CGContextClip(bctx);
        [gradient fillWithContext:bctx];
    }
    isDirty_ = YES;
    return self;
}

- (id<PlaynCoreCanvas>) fillTextWithPlaynCoreTextLayout:(id<PlaynCoreTextLayout>)layout withFloat:(float)x withFloat:(float)y {
    [((IOSTextLayout*) layout) fillWithContext:bctx withX:x withY:y];
    isDirty_ = YES;
    return self;
}

- (id<PlaynCoreCanvas>) restore {
    [states removeObjectAtIndex:0];
    CGContextRestoreGState(bctx);
    return self;
}

- (id<PlaynCoreCanvas>) rotateWithFloat:(float)radians {
    CGContextRotateCTM(bctx, radians);
    return self;
}

- (id<PlaynCoreCanvas>) save {
    [states insertObject:[[IOSCanvasState alloc] init] atIndex:0];
    CGContextSaveGState(bctx);
    return self;
}

- (id<PlaynCoreCanvas>) scale__WithFloat:(float)x withFloat:(float)y {
    CGContextScaleCTM(bctx, x, y);
    return self;
}

- (id<PlaynCoreCanvas>) setAlphaWithFloat:(float)alpha {
    CGContextSetAlpha(bctx, alpha);
    return self;
}

- (id<PlaynCoreCanvas>) setCompositeOperationWithPlaynCoreCanvas_CompositeEnum:(PlaynCoreCanvas_CompositeEnum *)composite {
    CGContextSetBlendMode(bctx, [IOSCanvas compToBlendWithComposite:composite]);
    return self;
}

- (id<PlaynCoreCanvas>) setFillColorWithInt:(int)color {
    [self currentState]->gradient = nil;
    CGContextSetFillColorWithColor(bctx, [IOSCanvas toCGColor:color]);
    return  self;
}

- (id<PlaynCoreCanvas>) setFillGradientWithPlaynCoreGradient:(id<PlaynCoreGradient>)gradient {
    [self currentState]->gradient = (IOSGradient*) gradient;
    return self;
}

- (id<PlaynCoreCanvas>) setFillPatternWithPlaynCorePattern:(id<PlaynCorePattern>)pattern {
    [self currentState]->gradient = nil;
    CGContextSetFillColorWithColor(bctx, ((IOSPattern*)pattern)->colorWithPattern);
    return self;
}

- (id<PlaynCoreCanvas>) setLineJoinWithPlaynCoreCanvas_LineJoinEnum:(PlaynCoreCanvas_LineJoinEnum *)join {
    CGContextSetLineJoin(bctx, [IOSCanvas decodeJoinWithJoin:join]);
    return self;
}


- (id<PlaynCoreCanvas>) setLineCapWithPlaynCoreCanvas_LineCapEnum:(PlaynCoreCanvas_LineCapEnum *)cap {
    CGContextSetLineCap(bctx, [IOSCanvas decodeCapWithCap:cap]);
    return self;
}

- (id<PlaynCoreCanvas>) setMiterLimitWithFloat:(float)miter {
    CGContextSetMiterLimit(bctx, miter);
    return self;
}

- (id<PlaynCoreCanvas>) setStrokeColorWithInt:(int)color {
    strokeColor = color;
    CGContextSetStrokeColorWithColor(bctx, [self toCGColor:color]);
    return self;
}

- (id<PlaynCoreCanvas>) setStrokeWidthWithFloat:(float)strokeWidth_ {
    strokeWidth = strokeWidth_;
    CGContextSetLineWidth(bctx, strokeWidth);
    return self;
}

- (id<PlaynCoreCanvas>) strokeCircleWithFloat:(float)x withFloat:(float)y withFloat:(float)radius {
    CGContextStrokeEllipseInRect(bctx, CGRectMake(x - radius, y - radius, radius * 2, radius * 2));
    isDirty_ = YES;
    return self;
}

- (id<PlaynCoreCanvas>) strokePathWithPlaynCorePath:(id<PlaynCorePath>)path {
    CGContextAddPath(bctx, ((IOSPath*)path)->cgPath);
    CGContextStrokePath(bctx);
    isDirty_ = YES;
    return self;
}

- (id<PlaynCoreCanvas>) strokeRectWithFloat:(float)x withFloat:(float)y withFloat:(float)width_ withFloat:(float)height_ {
    CGContextStrokeRect(bctx, CGRectMake(x, y, width_, height_));
    isDirty_ = YES;
    return self;
}

- (id<PlaynCoreCanvas>) strokeRoundRectWithFloat:(float)x withFloat:(float)y withFloat:(float)width_ withFloat:(float)height_ withFloat:(float)radius {
    [self addRoundRectPathWithX:x withY:y withWidth:width_ withHeight:height_ withRadius:radius];
    CGContextStrokePath(bctx);
    isDirty_ = YES;
    return self;
}

- (id<PlaynCoreCanvas>) strokeTextWithPlaynCoreTextLayout:(id<PlaynCoreTextLayout>)layout withFloat:(float)x withFloat:(float)y {
    [((IOSTextLayout*) layout) strokeWithContext:bctx withX:x withY:y withStrokeWidth:strokeWidth withStrokeColor:strokeColor];
    isDirty_ = YES;
    return self;
}

- (id<PlaynCoreCanvas>) transformWithFloat:(float)m11 withFloat:(float)m12 withFloat:(float)m21 withFloat:(float)m22 withFloat:(float)dx withFloat:(float)dy {
    CGAffineTransform transform = CGAffineTransformMake(m11, m12, m21, m22, dx, dy);
    CGContextConcatCTM(bctx, transform);
    return self;
}

- (id<PlaynCoreCanvas>) translateWithFloat:(float)x withFloat:(float)y {
    CGContextTranslateCTM(bctx, x, y);
    return self;
}

- (id) gc {
    return contextHolder;
}

- (void) addRoundRectPathWithX:(float)x withY:(float)y withWidth:(float)width_ withHeight:(float)height_ withRadius:(float)radius {
    float midx = x + width_/2, midy = y + height_/2, maxx = x + width_, maxy = y + height_;
    CGContextBeginPath(bctx);
    CGContextMoveToPoint(bctx, x, midy);
    CGContextAddArcToPoint(bctx, x, y, midx, y, radius);
    CGContextAddArcToPoint(bctx, maxx, y, maxx, midy, radius);
    CGContextAddArcToPoint(bctx, maxx, maxy, midx, maxy, radius);
    CGContextAddArcToPoint(bctx, x, maxy, x, midy, radius);
    CGContextClosePath(bctx);
}

- (IOSCanvasState*) currentState {
    return states.lastObject;
}

- (CGColorRef) toCGColor:(int)color {
    return [IOSCanvas toCGColor:color];
}

+ (CGColorRef) toCGColor:(int)color {
    float blue = (color & 0xFF) / 255.0f;
    color >>= 8;
    float green = (color & 0xFF) / 255.0f;
    color >>= 8;
    float red = (color & 0xFF) / 255.0f;
    color >>= 8;
    float alpha = (color & 0xFF) / 255.0f;
    color >>= 8;
    float* colors = (float*) malloc(4 * sizeof(float));
    colors[0] = red; colors[1] = green; colors[2] = blue; colors[3] = alpha;
    return CGColorCreate(colorSpace, colors);
}

+ (CGBlendMode) compToBlendWithComposite:(PlaynCoreCanvas_CompositeEnum*)composite {
    
    if (composite == [PlaynCoreCanvas_CompositeEnum SRC]) {
        return kCGBlendModeCopy;
    } else if (composite == [PlaynCoreCanvas_CompositeEnum DST_ATOP]) {
        return kCGBlendModeDestinationAtop;
    } else if (composite == [PlaynCoreCanvas_CompositeEnum SRC_OVER]) {
        return kCGBlendModeNormal;
    } else if (composite == [PlaynCoreCanvas_CompositeEnum DST_OVER]) {
        return kCGBlendModeDestinationOver;
    } else if (composite == [PlaynCoreCanvas_CompositeEnum SRC_IN]) {
        return kCGBlendModeSourceIn;
    } else if (composite == [PlaynCoreCanvas_CompositeEnum DST_IN]) {
        return kCGBlendModeDestinationOut;
    } else if (composite == [PlaynCoreCanvas_CompositeEnum SRC_OUT]) {
        return kCGBlendModeSourceOut;
    } else if (composite == [PlaynCoreCanvas_CompositeEnum DST_OUT]) {
        return kCGBlendModeDestinationOut;
    } else if (composite == [PlaynCoreCanvas_CompositeEnum SRC_ATOP]) {
        return kCGBlendModeSourceAtop;
    } else if (composite == [PlaynCoreCanvas_CompositeEnum XOR]) {
        return kCGBlendModeXOR;
    } else if (composite == [PlaynCoreCanvas_CompositeEnum MULTIPLY]) {
        return kCGBlendModeMultiply;
    }
    return 0;
}

+ (CGLineCap) decodeCapWithCap:(PlaynCoreCanvas_LineCapEnum*)cap {
    if (cap == [PlaynCoreCanvas_LineCapEnum BUTT]) {
        return kCGLineCapButt;
    } else if (cap == [PlaynCoreCanvas_LineCapEnum ROUND]) {
        return kCGLineCapRound;
    } else if (cap == [PlaynCoreCanvas_LineCapEnum SQUARE]) {
        return kCGLineCapSquare;
    }
    return 0;
}

+ (CGLineJoin) decodeJoinWithJoin:(PlaynCoreCanvas_LineJoinEnum*)join {
    if (join == [PlaynCoreCanvas_LineJoinEnum BEVEL]) {
        return kCGLineJoinBevel;
    } else if (join == [PlaynCoreCanvas_LineJoinEnum MITER]) {
        return kCGLineJoinMiter;
    } else if (join == [PlaynCoreCanvas_LineJoinEnum ROUND]) {
        return kCGLineJoinRound;
    }
    return 0;
}

@end
