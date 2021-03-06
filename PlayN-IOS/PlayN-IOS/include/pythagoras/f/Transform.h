//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/Transform.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasFTransform_RESTRICT
#define PythagorasFTransform_INCLUDE_ALL 1
#endif
#undef PythagorasFTransform_RESTRICT

#if !defined (_PythagorasFTransform_) && (PythagorasFTransform_INCLUDE_ALL || PythagorasFTransform_INCLUDE)
#define _PythagorasFTransform_

@class IOSFloatArray;
@class IOSObjectArray;
@class PythagorasFPoint;
@class PythagorasFVector;
@protocol PythagorasFIPoint;
@protocol PythagorasFIVector;

@protocol PythagorasFTransform < NSObject, JavaObject >
- (float)uniformScale;
- (PythagorasFVector *)scale__;
- (float)scaleX;
- (float)scaleY;
- (float)rotation;
- (PythagorasFVector *)translation;
- (float)tx;
- (float)ty;
- (void)getWithFloatArray:(IOSFloatArray *)matrix;
- (id<PythagorasFTransform>)setUniformScaleWithFloat:(float)scale_;
- (id<PythagorasFTransform>)setScaleWithFloat:(float)scaleX
                                    withFloat:(float)scaleY;
- (id<PythagorasFTransform>)setScaleXWithFloat:(float)scaleX;
- (id<PythagorasFTransform>)setScaleYWithFloat:(float)scaleY;
- (id<PythagorasFTransform>)setRotationWithFloat:(float)angle;
- (id<PythagorasFTransform>)setTranslationWithFloat:(float)tx
                                          withFloat:(float)ty;
- (id<PythagorasFTransform>)setTxWithFloat:(float)tx;
- (id<PythagorasFTransform>)setTyWithFloat:(float)ty;
- (id<PythagorasFTransform>)setTransformWithFloat:(float)m00
                                        withFloat:(float)m01
                                        withFloat:(float)m10
                                        withFloat:(float)m11
                                        withFloat:(float)tx
                                        withFloat:(float)ty;
- (id<PythagorasFTransform>)uniformScaleWithFloat:(float)scale_;
- (id<PythagorasFTransform>)scale__WithFloat:(float)scaleX
                                   withFloat:(float)scaleY;
- (id<PythagorasFTransform>)scaleXWithFloat:(float)scaleX;
- (id<PythagorasFTransform>)scaleYWithFloat:(float)scaleY;
- (id<PythagorasFTransform>)rotateWithFloat:(float)angle;
- (id<PythagorasFTransform>)translateWithFloat:(float)tx
                                     withFloat:(float)ty;
- (id<PythagorasFTransform>)translateXWithFloat:(float)tx;
- (id<PythagorasFTransform>)translateYWithFloat:(float)ty;
- (id<PythagorasFTransform>)shearWithFloat:(float)tx
                                 withFloat:(float)ty;
- (id<PythagorasFTransform>)shearXWithFloat:(float)tx;
- (id<PythagorasFTransform>)shearYWithFloat:(float)ty;
- (id<PythagorasFTransform>)invert;
- (id<PythagorasFTransform>)concatenateWithPythagorasFTransform:(id<PythagorasFTransform>)other;
- (id<PythagorasFTransform>)preConcatenateWithPythagorasFTransform:(id<PythagorasFTransform>)other;
- (id<PythagorasFTransform>)lerpWithPythagorasFTransform:(id<PythagorasFTransform>)other
                                               withFloat:(float)t;
- (PythagorasFPoint *)transformWithPythagorasFIPoint:(id<PythagorasFIPoint>)p
                                withPythagorasFPoint:(PythagorasFPoint *)into;
- (void)transformWithPythagorasFIPointArray:(IOSObjectArray *)src
                                    withInt:(int)srcOff
                  withPythagorasFPointArray:(IOSObjectArray *)dst
                                    withInt:(int)dstOff
                                    withInt:(int)count;
- (void)transformWithFloatArray:(IOSFloatArray *)src
                        withInt:(int)srcOff
                 withFloatArray:(IOSFloatArray *)dst
                        withInt:(int)dstOff
                        withInt:(int)count;
- (PythagorasFPoint *)inverseTransformWithPythagorasFIPoint:(id<PythagorasFIPoint>)p
                                       withPythagorasFPoint:(PythagorasFPoint *)into;
- (PythagorasFVector *)transformPointWithPythagorasFIVector:(id<PythagorasFIVector>)v
                                      withPythagorasFVector:(PythagorasFVector *)into;
- (PythagorasFVector *)transformWithPythagorasFIVector:(id<PythagorasFIVector>)v
                                 withPythagorasFVector:(PythagorasFVector *)into;
- (PythagorasFVector *)inverseTransformWithPythagorasFIVector:(id<PythagorasFIVector>)v
                                        withPythagorasFVector:(PythagorasFVector *)into;
- (id<PythagorasFTransform>)clone;
- (id<PythagorasFTransform>)copy__ OBJC_METHOD_FAMILY_NONE;
- (int)generality;
@end
#endif
