//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/Crossing.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasFCrossing_RESTRICT
#define PythagorasFCrossing_INCLUDE_ALL 1
#endif
#undef PythagorasFCrossing_RESTRICT

#if !defined (_PythagorasFCrossing_) && (PythagorasFCrossing_INCLUDE_ALL || PythagorasFCrossing_INCLUDE)
#define _PythagorasFCrossing_

@class IOSFloatArray;
@protocol PythagorasFIShape;
@protocol PythagorasFPathIterator;

#define PythagorasFCrossing_CROSSING 255
#define PythagorasFCrossing_DELTA 1.0E-5
#define PythagorasFCrossing_ROOT_DELTA 1.0E-10
#define PythagorasFCrossing_UNKNOWN 254

@interface PythagorasFCrossing : NSObject {
}

+ (int)CROSSING;
+ (int)UNKNOWN;
+ (float)DELTA;
+ (float)ROOT_DELTA;
+ (int)solveQuadWithFloatArray:(IOSFloatArray *)eqn
                withFloatArray:(IOSFloatArray *)res;
+ (int)solveCubicWithFloatArray:(IOSFloatArray *)eqn
                 withFloatArray:(IOSFloatArray *)res;
+ (int)fixRootsWithFloatArray:(IOSFloatArray *)res
                      withInt:(int)rc;
+ (int)crossLineWithFloat:(float)x1
                withFloat:(float)y1
                withFloat:(float)x2
                withFloat:(float)y2
                withFloat:(float)x
                withFloat:(float)y;
+ (int)crossQuadWithFloat:(float)x1
                withFloat:(float)y1
                withFloat:(float)cx
                withFloat:(float)cy
                withFloat:(float)x2
                withFloat:(float)y2
                withFloat:(float)x
                withFloat:(float)y;
+ (int)crossCubicWithFloat:(float)x1
                 withFloat:(float)y1
                 withFloat:(float)cx1
                 withFloat:(float)cy1
                 withFloat:(float)cx2
                 withFloat:(float)cy2
                 withFloat:(float)x2
                 withFloat:(float)y2
                 withFloat:(float)x
                 withFloat:(float)y;
+ (int)crossPathWithPythagorasFPathIterator:(id<PythagorasFPathIterator>)p
                                  withFloat:(float)x
                                  withFloat:(float)y;
+ (int)crossShapeWithPythagorasFIShape:(id<PythagorasFIShape>)s
                             withFloat:(float)x
                             withFloat:(float)y;
+ (BOOL)isZeroWithFloat:(float)val;
+ (int)intersectLineWithFloat:(float)x1
                    withFloat:(float)y1
                    withFloat:(float)x2
                    withFloat:(float)y2
                    withFloat:(float)rx1
                    withFloat:(float)ry1
                    withFloat:(float)rx2
                    withFloat:(float)ry2;
+ (int)intersectQuadWithFloat:(float)x1
                    withFloat:(float)y1
                    withFloat:(float)cx
                    withFloat:(float)cy
                    withFloat:(float)x2
                    withFloat:(float)y2
                    withFloat:(float)rx1
                    withFloat:(float)ry1
                    withFloat:(float)rx2
                    withFloat:(float)ry2;
+ (int)intersectCubicWithFloat:(float)x1
                     withFloat:(float)y1
                     withFloat:(float)cx1
                     withFloat:(float)cy1
                     withFloat:(float)cx2
                     withFloat:(float)cy2
                     withFloat:(float)x2
                     withFloat:(float)y2
                     withFloat:(float)rx1
                     withFloat:(float)ry1
                     withFloat:(float)rx2
                     withFloat:(float)ry2;
+ (int)intersectPathWithPythagorasFPathIterator:(id<PythagorasFPathIterator>)p
                                      withFloat:(float)x
                                      withFloat:(float)y
                                      withFloat:(float)w
                                      withFloat:(float)h;
+ (int)intersectShapeWithPythagorasFIShape:(id<PythagorasFIShape>)s
                                 withFloat:(float)x
                                 withFloat:(float)y
                                 withFloat:(float)w
                                 withFloat:(float)h;
+ (BOOL)isInsideNonZeroWithInt:(int)cross;
+ (BOOL)isInsideEvenOddWithInt:(int)cross;
+ (void)sortBoundWithFloatArray:(IOSFloatArray *)bound
                        withInt:(int)bc;
+ (int)crossBoundWithFloatArray:(IOSFloatArray *)bound
                        withInt:(int)bc
                      withFloat:(float)py1
                      withFloat:(float)py2;
- (id)init;
@end
#endif

#if !defined (_PythagorasFCrossing_QuadCurve_) && (PythagorasFCrossing_INCLUDE_ALL || PythagorasFCrossing_QuadCurve_INCLUDE)
#define _PythagorasFCrossing_QuadCurve_

@class IOSFloatArray;

@interface PythagorasFCrossing_QuadCurve : NSObject {
 @public
  float ax_, ay_, bx_, by_;
  float Ax_, Ay_, Bx_, By_;
}

@property (nonatomic, assign) float ax;
@property (nonatomic, assign) float ay;
@property (nonatomic, assign) float bx;
@property (nonatomic, assign) float by;
@property (nonatomic, assign) float Ax;
@property (nonatomic, assign) float Ay;
@property (nonatomic, assign) float Bx;
@property (nonatomic, assign) float By;

- (id)initWithFloat:(float)x1
          withFloat:(float)y1
          withFloat:(float)cx
          withFloat:(float)cy
          withFloat:(float)x2
          withFloat:(float)y2;
- (int)crossWithFloatArray:(IOSFloatArray *)res
                   withInt:(int)rc
                 withFloat:(float)py1
                 withFloat:(float)py2;
- (int)solvePointWithFloatArray:(IOSFloatArray *)res
                      withFloat:(float)px;
- (int)solveExtremeWithFloatArray:(IOSFloatArray *)res;
- (int)addBoundWithFloatArray:(IOSFloatArray *)bound
                      withInt:(int)bc
               withFloatArray:(IOSFloatArray *)res
                      withInt:(int)rc
                    withFloat:(float)minX
                    withFloat:(float)maxX
                     withBOOL:(BOOL)changeId
                      withInt:(int)id_;
@end
#endif

#if !defined (_PythagorasFCrossing_CubicCurveH_) && (PythagorasFCrossing_INCLUDE_ALL || PythagorasFCrossing_CubicCurveH_INCLUDE)
#define _PythagorasFCrossing_CubicCurveH_

@class IOSFloatArray;

@interface PythagorasFCrossing_CubicCurveH : NSObject {
 @public
  float ax_, ay_, bx_, by_, cx_, cy_;
  float Ax_, Ay_, Bx_, By_, Cx_, Cy_;
  float Ax3_, Bx2_;
}

@property (nonatomic, assign) float ax;
@property (nonatomic, assign) float ay;
@property (nonatomic, assign) float bx;
@property (nonatomic, assign) float by;
@property (nonatomic, assign) float cx;
@property (nonatomic, assign) float cy;
@property (nonatomic, assign) float Ax;
@property (nonatomic, assign) float Ay;
@property (nonatomic, assign) float Bx;
@property (nonatomic, assign) float By;
@property (nonatomic, assign) float Cx;
@property (nonatomic, assign) float Cy;
@property (nonatomic, assign) float Ax3;
@property (nonatomic, assign) float Bx2;

- (id)initWithFloat:(float)x1
          withFloat:(float)y1
          withFloat:(float)cx1
          withFloat:(float)cy1
          withFloat:(float)cx2
          withFloat:(float)cy2
          withFloat:(float)x2
          withFloat:(float)y2;
- (int)crossWithFloatArray:(IOSFloatArray *)res
                   withInt:(int)rc
                 withFloat:(float)py1
                 withFloat:(float)py2;
- (int)solvePointWithFloatArray:(IOSFloatArray *)res
                      withFloat:(float)px;
- (int)solveExtremeXWithFloatArray:(IOSFloatArray *)res;
- (int)solveExtremeYWithFloatArray:(IOSFloatArray *)res;
- (int)addBoundWithFloatArray:(IOSFloatArray *)bound
                      withInt:(int)bc
               withFloatArray:(IOSFloatArray *)res
                      withInt:(int)rc
                    withFloat:(float)minX
                    withFloat:(float)maxX
                     withBOOL:(BOOL)changeId
                      withInt:(int)id_;
@end
#endif
