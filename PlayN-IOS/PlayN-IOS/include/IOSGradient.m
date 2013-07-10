//
//  IOSGradient.m
//  tuxblocks
//
//  Created by Thomas on 7/8/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "IOSGradient.h"

CGGradientDrawingOptions cgOptions = kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation;

@implementation IOSGradient_Linear

- (id) initWithX0:(float)x0 withY0:(float)y0 withX1:(float)x1 withY1:(float)y1 withColors:(IOSIntArray *)colors withPositions:(IOSFloatArray *)positions {
    if (self = [super initWithColors:colors withPositions:positions]) {
        start = CGPointMake(x0, y0);
        end = CGPointMake(x1, y1);
    }
    return self;
}

- (void) fillWithContext:(CGContextRef)bctx {
    CGContextDrawLinearGradient(bctx, cgGradient, start, end, cgOptions);
}

@end

@implementation IOSGradient_Radial

- (id) initWithX:(float)x withY:(float)y withR:(float)r_ withColors:(IOSIntArray *)colors withPositions:(IOSFloatArray *)positions {
    if (self = [super initWithColors:colors withPositions:positions]) {
        center = CGPointMake(x, y);
        r = r_;
    }
    return self;
}

- (void) fillWithContext:(CGContextRef)bctx {
    CGContextDrawRadialGradient(bctx, cgGradient, center, 0, center, r, cgOptions);
}

@end

@implementation IOSGradient

- (id) initWithColors:(IOSIntArray *)colors withPositions:(IOSFloatArray *)positions {
    if (self = [super init]) {
        float* comps = (float *) malloc([colors count] * 4 * sizeof(float));
        float* posArray = (float *) malloc([positions count] * sizeof(float));
        [positions getFloats:posArray length:[positions count]];
        int cc = 0;
        for (int i = 0; i < [colors count]; i++) {
            int color = [colors intAtIndex:i];
            comps[cc++] = ((color >> 16) & 0xFF) / 255.0f;
            comps[cc++] = ((color >> 8) & 0xFF) / 255.0f;
            comps[cc++] = ((color >> 0) & 0xFF) / 255.0f;
            comps[cc++] = ((color >> 24) & 0xFF) / 255.0f;
        }
        
        CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
        cgGradient = CGGradientCreateWithColorComponents(nil, comps, posArray, [colors count]);
        CGColorSpaceRelease(colorSpace);
    }
    return self;
}

- (void) finalize {
    CGGradientRelease(cgGradient);
}

- (void) fillWithContext:(CGContextRef)bctx {
    //abstract
    [self doesNotRecognizeSelector:_cmd];
}

@end
