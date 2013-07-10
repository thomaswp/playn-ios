//
//  IOSPath.m
//  tuxblocks
//
//  Created by Thomas on 7/9/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "IOSPath.h"

@implementation IOSPath

- (id) init {
    if (self = [super init]) {
        cgPath = CGPathCreateMutable();
    }
    return self;
}

- (void) reset {
    CGPathRelease(cgPath);
    cgPath = CGPathCreateMutable();
}

- (void) close {
    CGPathCloseSubpath(cgPath);
}

- (void) moveToWithFloat:(float)x withFloat:(float)y {
    CGPathMoveToPoint(cgPath, nil, x, y);
}

- (void) lineToWithFloat:(float)x withFloat:(float)y {
    CGPathAddLineToPoint(cgPath, nil, x, y);
}

- (void) quadraticCurveToWithFloat:(float)cpx withFloat:(float)cpy withFloat:(float)x withFloat:(float)y {
    CGPathAddQuadCurveToPoint(cgPath, nil, cpx, cpy, x, y);
}

- (void) bezierToWithFloat:(float)c1x withFloat:(float)c1y withFloat:(float)c2x withFloat:(float)c2y withFloat:(float)x withFloat:(float)y {
    CGPathAddCurveToPoint(cgPath, nil, c1x, c1y, c2x, c2y, x, y);
}

@end
