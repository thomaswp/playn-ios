//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/IPoint.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasDIPoint_RESTRICT
#define PythagorasDIPoint_INCLUDE_ALL 1
#endif
#undef PythagorasDIPoint_RESTRICT

#if !defined (_PythagorasDIPoint_) && (PythagorasDIPoint_INCLUDE_ALL || PythagorasDIPoint_INCLUDE)
#define _PythagorasDIPoint_

@class PythagorasDPoint;

#define PythagorasDXY_RESTRICT 1
#define PythagorasDXY_INCLUDE 1
#include "pythagoras/d/XY.h"

@protocol PythagorasDIPoint < PythagorasDXY, NSCopying, NSObject, JavaObject >
- (double)distanceSqWithDouble:(double)px
                    withDouble:(double)py;
- (double)distanceSqWithPythagorasDIPoint:(id<PythagorasDIPoint>)p;
- (double)distanceWithDouble:(double)px
                  withDouble:(double)py;
- (double)distanceWithPythagorasDIPoint:(id<PythagorasDIPoint>)p;
- (double)directionWithPythagorasDIPoint:(id<PythagorasDIPoint>)other;
- (PythagorasDPoint *)multWithDouble:(double)s;
- (PythagorasDPoint *)multWithDouble:(double)s
                withPythagorasDPoint:(PythagorasDPoint *)result;
- (PythagorasDPoint *)addWithDouble:(double)x
                         withDouble:(double)y;
- (PythagorasDPoint *)addWithDouble:(double)x
                         withDouble:(double)y
               withPythagorasDPoint:(PythagorasDPoint *)result;
- (PythagorasDPoint *)subtractWithDouble:(double)x
                              withDouble:(double)y;
- (PythagorasDPoint *)subtractWithDouble:(double)x
                              withDouble:(double)y
                    withPythagorasDPoint:(PythagorasDPoint *)result;
- (PythagorasDPoint *)subtractWithPythagorasDIPoint:(id<PythagorasDIPoint>)other
                               withPythagorasDPoint:(PythagorasDPoint *)result;
- (PythagorasDPoint *)rotateWithDouble:(double)angle;
- (PythagorasDPoint *)rotateWithDouble:(double)angle
                  withPythagorasDPoint:(PythagorasDPoint *)result;
- (PythagorasDPoint *)clone;
- (id)copyWithZone:(NSZone *)zone;
@end
#endif
