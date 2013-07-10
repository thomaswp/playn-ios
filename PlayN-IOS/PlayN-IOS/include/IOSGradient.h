//
//  IOSGradient.h
//  tuxblocks
//
//  Created by Thomas on 7/8/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "IOSIntArray.h"
#import "IOSFloatArray.h"
#import "playn/core/Gradient.h"

@interface IOSGradient : NSObject<PlaynCoreGradient> {
    CGGradientRef cgGradient;
}

- (id) initWithColors:(IOSIntArray*)colors withPositions:(IOSFloatArray*)positions;
- (void) fillWithContext:(CGContextRef)bctx;

@end

@interface IOSGradient_Linear : IOSGradient {
    CGPoint start, end;
}

- (id) initWithX0:(float)x0 withY0:(float)y0 withX1:(float)x1 withY1:(float)y1 withColors:(IOSIntArray*)colors withPositions:(IOSFloatArray*)positions;

@end

@interface IOSGradient_Radial : IOSGradient {
    CGPoint center;
    float r;
}

- (id) initWithX:(float)x withY:(float)y withR:(float)r withColors:(IOSIntArray*)colors withPositions:(IOSFloatArray*)positions;

@end
