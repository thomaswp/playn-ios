//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/IRay2.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasFIRay2_RESTRICT
#define PythagorasFIRay2_INCLUDE_ALL 1
#endif
#undef PythagorasFIRay2_RESTRICT

#if !defined (_PythagorasFIRay2_) && (PythagorasFIRay2_INCLUDE_ALL || PythagorasFIRay2_INCLUDE)
#define _PythagorasFIRay2_

@class PythagorasFRay2;
@class PythagorasFVector;
@protocol PythagorasFIVector;
@protocol PythagorasFTransform;

@protocol PythagorasFIRay2 < NSObject, JavaObject >
- (id<PythagorasFIVector>)origin;
- (id<PythagorasFIVector>)direction;
- (PythagorasFRay2 *)transformWithPythagorasFTransform:(id<PythagorasFTransform>)transform;
- (PythagorasFRay2 *)transformWithPythagorasFTransform:(id<PythagorasFTransform>)transform
                                   withPythagorasFRay2:(PythagorasFRay2 *)result;
- (BOOL)intersectsWithPythagorasFIVector:(id<PythagorasFIVector>)pt;
- (BOOL)getIntersectionWithPythagorasFIVector:(id<PythagorasFIVector>)start
                       withPythagorasFIVector:(id<PythagorasFIVector>)end
                        withPythagorasFVector:(PythagorasFVector *)result;
- (BOOL)getIntersectionWithPythagorasFIVector:(id<PythagorasFIVector>)start
                       withPythagorasFIVector:(id<PythagorasFIVector>)end
                                    withFloat:(float)radius
                        withPythagorasFVector:(PythagorasFVector *)result;
- (BOOL)getIntersectionWithPythagorasFIVector:(id<PythagorasFIVector>)center
                                    withFloat:(float)radius
                        withPythagorasFVector:(PythagorasFVector *)result;
- (PythagorasFVector *)getNearestPointWithPythagorasFIVector:(id<PythagorasFIVector>)point
                                       withPythagorasFVector:(PythagorasFVector *)result;
@end
#endif
