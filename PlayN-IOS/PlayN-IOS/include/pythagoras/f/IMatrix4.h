//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/IMatrix4.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasFIMatrix4_RESTRICT
#define PythagorasFIMatrix4_INCLUDE_ALL 1
#endif
#undef PythagorasFIMatrix4_RESTRICT

#if !defined (_PythagorasFIMatrix4_) && (PythagorasFIMatrix4_INCLUDE_ALL || PythagorasFIMatrix4_INCLUDE)
#define _PythagorasFIMatrix4_

@class JavaNioFloatBuffer;
@class PythagorasFMatrix3;
@class PythagorasFMatrix4;
@class PythagorasFQuaternion;
@class PythagorasFVector3;
@class PythagorasFVector4;
@protocol PythagorasFIVector3;
@protocol PythagorasFIVector4;

@protocol PythagorasFIMatrix4 < NSObject, JavaObject >
- (float)m00;
- (float)m10;
- (float)m20;
- (float)m30;
- (float)m01;
- (float)m11;
- (float)m21;
- (float)m31;
- (float)m02;
- (float)m12;
- (float)m22;
- (float)m32;
- (float)m03;
- (float)m13;
- (float)m23;
- (float)m33;
- (PythagorasFMatrix4 *)transpose;
- (PythagorasFMatrix4 *)transposeWithPythagorasFMatrix4:(PythagorasFMatrix4 *)result;
- (PythagorasFMatrix4 *)multWithPythagorasFIMatrix4:(id<PythagorasFIMatrix4>)other;
- (PythagorasFMatrix4 *)multWithPythagorasFIMatrix4:(id<PythagorasFIMatrix4>)other
                             withPythagorasFMatrix4:(PythagorasFMatrix4 *)result;
- (BOOL)isAffine;
- (BOOL)isMirrored;
- (PythagorasFMatrix4 *)multAffineWithPythagorasFIMatrix4:(id<PythagorasFIMatrix4>)other;
- (PythagorasFMatrix4 *)multAffineWithPythagorasFIMatrix4:(id<PythagorasFIMatrix4>)other
                                   withPythagorasFMatrix4:(PythagorasFMatrix4 *)result;
- (PythagorasFMatrix4 *)invert;
- (PythagorasFMatrix4 *)invertWithPythagorasFMatrix4:(PythagorasFMatrix4 *)result;
- (PythagorasFMatrix4 *)invertAffine;
- (PythagorasFMatrix4 *)invertAffineWithPythagorasFMatrix4:(PythagorasFMatrix4 *)result;
- (PythagorasFMatrix4 *)lerpWithPythagorasFIMatrix4:(id<PythagorasFIMatrix4>)other
                                          withFloat:(float)t;
- (PythagorasFMatrix4 *)lerpWithPythagorasFIMatrix4:(id<PythagorasFIMatrix4>)other
                                          withFloat:(float)t
                             withPythagorasFMatrix4:(PythagorasFMatrix4 *)result;
- (PythagorasFMatrix4 *)lerpAffineWithPythagorasFIMatrix4:(id<PythagorasFIMatrix4>)other
                                                withFloat:(float)t;
- (PythagorasFMatrix4 *)lerpAffineWithPythagorasFIMatrix4:(id<PythagorasFIMatrix4>)other
                                                withFloat:(float)t
                                   withPythagorasFMatrix4:(PythagorasFMatrix4 *)result;
- (JavaNioFloatBuffer *)getWithJavaNioFloatBuffer:(JavaNioFloatBuffer *)buf;
- (PythagorasFVector3 *)projectPointLocalWithPythagorasFVector3:(PythagorasFVector3 *)point;
- (PythagorasFVector3 *)projectPointWithPythagorasFIVector3:(id<PythagorasFIVector3>)point;
- (PythagorasFVector3 *)projectPointWithPythagorasFIVector3:(id<PythagorasFIVector3>)point
                                     withPythagorasFVector3:(PythagorasFVector3 *)result;
- (PythagorasFVector3 *)transformPointLocalWithPythagorasFVector3:(PythagorasFVector3 *)point;
- (PythagorasFVector3 *)transformPointWithPythagorasFIVector3:(id<PythagorasFIVector3>)point;
- (PythagorasFVector3 *)transformPointWithPythagorasFIVector3:(id<PythagorasFIVector3>)point
                                       withPythagorasFVector3:(PythagorasFVector3 *)result;
- (float)transformPointZWithPythagorasFIVector3:(id<PythagorasFIVector3>)point;
- (PythagorasFVector3 *)transformVectorLocalWithPythagorasFVector3:(PythagorasFVector3 *)vector;
- (PythagorasFVector3 *)transformVectorWithPythagorasFIVector3:(id<PythagorasFIVector3>)vector;
- (PythagorasFVector3 *)transformVectorWithPythagorasFIVector3:(id<PythagorasFIVector3>)vector
                                        withPythagorasFVector3:(PythagorasFVector3 *)result;
- (PythagorasFVector4 *)transformWithPythagorasFIVector4:(id<PythagorasFIVector4>)vector;
- (PythagorasFVector4 *)transformWithPythagorasFIVector4:(id<PythagorasFIVector4>)vector
                                  withPythagorasFVector4:(PythagorasFVector4 *)result;
- (PythagorasFQuaternion *)extractRotation;
- (PythagorasFQuaternion *)extractRotationWithPythagorasFQuaternion:(PythagorasFQuaternion *)result;
- (PythagorasFMatrix3 *)extractRotationScaleWithPythagorasFMatrix3:(PythagorasFMatrix3 *)result;
- (PythagorasFVector3 *)extractScale;
- (PythagorasFVector3 *)extractScaleWithPythagorasFVector3:(PythagorasFVector3 *)result;
- (float)approximateUniformScale;
- (BOOL)epsilonEqualsWithPythagorasFIMatrix4:(id<PythagorasFIMatrix4>)other
                                   withFloat:(float)epsilon;
@end
#endif
