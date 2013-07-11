//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/ICircle.java
//
//  Created by Thomas on 7/10/13.
//

@class PythagorasFCircle;
@protocol PythagorasFIPoint;

#import "JreEmulation.h"

@protocol PythagorasFICircle < NSObject >
- (float)x;
- (float)y;
- (float)radius;
- (BOOL)intersectsWithPythagorasFICircle:(id<PythagorasFICircle>)c;
- (BOOL)containsWithPythagorasFIPoint:(id<PythagorasFIPoint>)p;
- (BOOL)containsWithFloat:(float)x
                withFloat:(float)y;
- (PythagorasFCircle *)offsetWithFloat:(float)x
                             withFloat:(float)y;
- (PythagorasFCircle *)offsetWithFloat:(float)x
                             withFloat:(float)y
                 withPythagorasFCircle:(PythagorasFCircle *)result;
- (PythagorasFCircle *)clone;
@end