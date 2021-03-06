//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/AbstractVector.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasFAbstractVector_RESTRICT
#define PythagorasFAbstractVector_INCLUDE_ALL 1
#endif
#undef PythagorasFAbstractVector_RESTRICT

#if !defined (_PythagorasFAbstractVector_) && (PythagorasFAbstractVector_INCLUDE_ALL || PythagorasFAbstractVector_INCLUDE)
#define _PythagorasFAbstractVector_

@class PythagorasFVector;

#define PythagorasFIVector_RESTRICT 1
#define PythagorasFIVector_INCLUDE 1
#include "pythagoras/f/IVector.h"

@interface PythagorasFAbstractVector : NSObject < PythagorasFIVector > {
}

- (float)dotWithPythagorasFIVector:(id<PythagorasFIVector>)other;
- (PythagorasFVector *)crossWithPythagorasFIVector:(id<PythagorasFIVector>)other;
- (PythagorasFVector *)crossWithPythagorasFIVector:(id<PythagorasFIVector>)other
                             withPythagorasFVector:(PythagorasFVector *)result;
- (PythagorasFVector *)negate;
- (PythagorasFVector *)negateWithPythagorasFVector:(PythagorasFVector *)result;
- (PythagorasFVector *)normalize;
- (PythagorasFVector *)normalizeWithPythagorasFVector:(PythagorasFVector *)result;
- (float)length;
- (float)lengthSq;
- (BOOL)isZero;
- (float)distanceWithPythagorasFIVector:(id<PythagorasFIVector>)other;
- (float)distanceSqWithPythagorasFIVector:(id<PythagorasFIVector>)other;
- (float)angle;
- (float)angleBetweenWithPythagorasFIVector:(id<PythagorasFIVector>)other;
- (PythagorasFVector *)scale__WithFloat:(float)v;
- (PythagorasFVector *)scale__WithFloat:(float)v
                  withPythagorasFVector:(PythagorasFVector *)result;
- (PythagorasFVector *)scale__WithPythagorasFIVector:(id<PythagorasFIVector>)other;
- (PythagorasFVector *)scale__WithPythagorasFIVector:(id<PythagorasFIVector>)other
                               withPythagorasFVector:(PythagorasFVector *)result;
- (PythagorasFVector *)addWithPythagorasFIVector:(id<PythagorasFIVector>)other;
- (PythagorasFVector *)addWithPythagorasFIVector:(id<PythagorasFIVector>)other
                           withPythagorasFVector:(PythagorasFVector *)result;
- (PythagorasFVector *)subtractWithPythagorasFIVector:(id<PythagorasFIVector>)other;
- (PythagorasFVector *)subtractWithPythagorasFIVector:(id<PythagorasFIVector>)other
                                withPythagorasFVector:(PythagorasFVector *)result;
- (PythagorasFVector *)addWithFloat:(float)x
                          withFloat:(float)y;
- (PythagorasFVector *)addWithFloat:(float)x
                          withFloat:(float)y
              withPythagorasFVector:(PythagorasFVector *)result;
- (PythagorasFVector *)subtractWithFloat:(float)x
                               withFloat:(float)y;
- (PythagorasFVector *)subtractWithFloat:(float)x
                               withFloat:(float)y
                   withPythagorasFVector:(PythagorasFVector *)result;
- (PythagorasFVector *)addScaledWithPythagorasFIVector:(id<PythagorasFIVector>)other
                                             withFloat:(float)v;
- (PythagorasFVector *)addScaledWithPythagorasFIVector:(id<PythagorasFIVector>)other
                                             withFloat:(float)v
                                 withPythagorasFVector:(PythagorasFVector *)result;
- (PythagorasFVector *)rotateWithFloat:(float)angle;
- (PythagorasFVector *)rotateWithFloat:(float)angle
                 withPythagorasFVector:(PythagorasFVector *)result;
- (PythagorasFVector *)rotateAndAddWithFloat:(float)angle
                      withPythagorasFIVector:(id<PythagorasFIVector>)add
                       withPythagorasFVector:(PythagorasFVector *)result;
- (PythagorasFVector *)rotateScaleAndAddWithFloat:(float)angle
                                        withFloat:(float)scale_
                           withPythagorasFIVector:(id<PythagorasFIVector>)add
                            withPythagorasFVector:(PythagorasFVector *)result;
- (PythagorasFVector *)lerpWithPythagorasFIVector:(id<PythagorasFIVector>)other
                                        withFloat:(float)t;
- (PythagorasFVector *)lerpWithPythagorasFIVector:(id<PythagorasFIVector>)other
                                        withFloat:(float)t
                            withPythagorasFVector:(PythagorasFVector *)result;
- (PythagorasFVector *)clone;
- (BOOL)isEqual:(id)obj;
- (NSUInteger)hash;
- (NSString *)description;
- (float)x;
- (float)y;
- (id)init;
@end
#endif
