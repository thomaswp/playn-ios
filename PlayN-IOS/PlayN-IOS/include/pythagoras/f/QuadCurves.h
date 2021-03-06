//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/QuadCurves.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasFQuadCurves_RESTRICT
#define PythagorasFQuadCurves_INCLUDE_ALL 1
#endif
#undef PythagorasFQuadCurves_RESTRICT

#if !defined (_PythagorasFQuadCurves_) && (PythagorasFQuadCurves_INCLUDE_ALL || PythagorasFQuadCurves_INCLUDE)
#define _PythagorasFQuadCurves_

@class IOSFloatArray;
@class PythagorasFQuadCurve;
@protocol PythagorasFIQuadCurve;

@interface PythagorasFQuadCurves : NSObject {
}

+ (float)flatnessSqWithFloat:(float)x1
                   withFloat:(float)y1
                   withFloat:(float)ctrlx
                   withFloat:(float)ctrly
                   withFloat:(float)x2
                   withFloat:(float)y2;
+ (float)flatnessSqWithFloatArray:(IOSFloatArray *)coords
                          withInt:(int)offset;
+ (float)flatnessWithFloat:(float)x1
                 withFloat:(float)y1
                 withFloat:(float)ctrlx
                 withFloat:(float)ctrly
                 withFloat:(float)x2
                 withFloat:(float)y2;
+ (float)flatnessWithFloatArray:(IOSFloatArray *)coords
                        withInt:(int)offset;
+ (void)subdivideWithPythagorasFIQuadCurve:(id<PythagorasFIQuadCurve>)src
                  withPythagorasFQuadCurve:(PythagorasFQuadCurve *)left
                  withPythagorasFQuadCurve:(PythagorasFQuadCurve *)right;
+ (void)subdivideWithFloatArray:(IOSFloatArray *)src
                        withInt:(int)srcoff
                 withFloatArray:(IOSFloatArray *)left
                        withInt:(int)leftOff
                 withFloatArray:(IOSFloatArray *)right
                        withInt:(int)rightOff;
+ (int)solveQuadraticWithFloatArray:(IOSFloatArray *)eqn;
+ (int)solveQuadraticWithFloatArray:(IOSFloatArray *)eqn
                     withFloatArray:(IOSFloatArray *)res;
- (id)init;
@end
#endif
