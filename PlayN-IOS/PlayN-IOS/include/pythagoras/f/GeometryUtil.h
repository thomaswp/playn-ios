//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/GeometryUtil.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasFGeometryUtil_RESTRICT
#define PythagorasFGeometryUtil_INCLUDE_ALL 1
#endif
#undef PythagorasFGeometryUtil_RESTRICT

#if !defined (_PythagorasFGeometryUtil_) && (PythagorasFGeometryUtil_INCLUDE_ALL || PythagorasFGeometryUtil_INCLUDE)
#define _PythagorasFGeometryUtil_

@class IOSFloatArray;

@interface PythagorasFGeometryUtil : NSObject {
}

+ (float)EPSILON;
+ (int)intersectLinesWithParamsWithFloat:(float)x1
                               withFloat:(float)y1
                               withFloat:(float)x2
                               withFloat:(float)y2
                               withFloat:(float)x3
                               withFloat:(float)y3
                               withFloat:(float)x4
                               withFloat:(float)y4
                          withFloatArray:(IOSFloatArray *)params;
+ (int)intersectLinesWithFloat:(float)x1
                     withFloat:(float)y1
                     withFloat:(float)x2
                     withFloat:(float)y2
                     withFloat:(float)x3
                     withFloat:(float)y3
                     withFloat:(float)x4
                     withFloat:(float)y4
                withFloatArray:(IOSFloatArray *)point;
+ (int)intersectLineAndQuadWithFloat:(float)x1
                           withFloat:(float)y1
                           withFloat:(float)x2
                           withFloat:(float)y2
                           withFloat:(float)qx1
                           withFloat:(float)qy1
                           withFloat:(float)qx2
                           withFloat:(float)qy2
                           withFloat:(float)qx3
                           withFloat:(float)qy3
                      withFloatArray:(IOSFloatArray *)params;
+ (int)intersectLineAndCubicWithFloat:(float)x1
                            withFloat:(float)y1
                            withFloat:(float)x2
                            withFloat:(float)y2
                            withFloat:(float)cx1
                            withFloat:(float)cy1
                            withFloat:(float)cx2
                            withFloat:(float)cy2
                            withFloat:(float)cx3
                            withFloat:(float)cy3
                            withFloat:(float)cx4
                            withFloat:(float)cy4
                       withFloatArray:(IOSFloatArray *)params;
+ (int)intersectQuadsWithFloat:(float)x1
                     withFloat:(float)y1
                     withFloat:(float)x2
                     withFloat:(float)y2
                     withFloat:(float)x3
                     withFloat:(float)y3
                     withFloat:(float)qx1
                     withFloat:(float)qy1
                     withFloat:(float)qx2
                     withFloat:(float)qy2
                     withFloat:(float)qx3
                     withFloat:(float)qy3
                withFloatArray:(IOSFloatArray *)params;
+ (int)intersectQuadAndCubicWithFloat:(float)qx1
                            withFloat:(float)qy1
                            withFloat:(float)qx2
                            withFloat:(float)qy2
                            withFloat:(float)qx3
                            withFloat:(float)qy3
                            withFloat:(float)cx1
                            withFloat:(float)cy1
                            withFloat:(float)cx2
                            withFloat:(float)cy2
                            withFloat:(float)cx3
                            withFloat:(float)cy3
                            withFloat:(float)cx4
                            withFloat:(float)cy4
                       withFloatArray:(IOSFloatArray *)params;
+ (int)intersectCubicsWithFloat:(float)x1
                      withFloat:(float)y1
                      withFloat:(float)x2
                      withFloat:(float)y2
                      withFloat:(float)x3
                      withFloat:(float)y3
                      withFloat:(float)x4
                      withFloat:(float)y4
                      withFloat:(float)cx1
                      withFloat:(float)cy1
                      withFloat:(float)cx2
                      withFloat:(float)cy2
                      withFloat:(float)cx3
                      withFloat:(float)cy3
                      withFloat:(float)cx4
                      withFloat:(float)cy4
                 withFloatArray:(IOSFloatArray *)params;
+ (float)lineWithFloat:(float)t
             withFloat:(float)x1
             withFloat:(float)x2;
+ (float)quadWithFloat:(float)t
             withFloat:(float)x1
             withFloat:(float)x2
             withFloat:(float)x3;
+ (float)cubicWithFloat:(float)t
              withFloat:(float)x1
              withFloat:(float)x2
              withFloat:(float)x3
              withFloat:(float)x4;
+ (void)subQuadWithFloatArray:(IOSFloatArray *)coef
                    withFloat:(float)t0
                     withBOOL:(BOOL)left;
+ (void)subCubicWithFloatArray:(IOSFloatArray *)coef
                     withFloat:(float)t0
                      withBOOL:(BOOL)left;
+ (void)cubicNewtonWithFloatArray:(IOSFloatArray *)xCoefs1
                   withFloatArray:(IOSFloatArray *)yCoefs1
                   withFloatArray:(IOSFloatArray *)xCoefs2
                   withFloatArray:(IOSFloatArray *)yCoefs2
                   withFloatArray:(IOSFloatArray *)params;
+ (void)quadAndCubicNewtonWithFloatArray:(IOSFloatArray *)xCoefs1
                          withFloatArray:(IOSFloatArray *)yCoefs1
                          withFloatArray:(IOSFloatArray *)xCoefs2
                          withFloatArray:(IOSFloatArray *)yCoefs2
                          withFloatArray:(IOSFloatArray *)params;
+ (void)quadNewtonWithFloatArray:(IOSFloatArray *)xCoefs1
                  withFloatArray:(IOSFloatArray *)yCoefs1
                  withFloatArray:(IOSFloatArray *)xCoefs2
                  withFloatArray:(IOSFloatArray *)yCoefs2
                  withFloatArray:(IOSFloatArray *)params;
- (id)init;
@end
#endif
