//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tripleplay/particle/init/ColorEffector.java
//
//  Created by Thomas on 7/10/13.
//

@class IOSFloatArray;
@class TripleplayUtilInterpolator;

#import "JreEmulation.h"
#import "tripleplay/particle/Effector.h"

@interface TripleplayParticleInitColorEffector : TripleplayParticleEffector {
 @public
  float perc_;
}

@property (nonatomic, assign) float perc;

- (int)startColor;
- (int)endColor;
- (TripleplayUtilInterpolator *)interp;
- (float)getPercWithJavaLangFloatArray:(IOSFloatArray *)data
                               withInt:(int)start
                             withFloat:(float)now;
+ (TripleplayParticleEffector *)byAgeWithTripleplayUtilInterpolator:(TripleplayUtilInterpolator *)interp
                                                            withInt:(int)startColor
                                                            withInt:(int)endColor;
- (id)init;
@end

@interface TripleplayParticleInitColorEffector_$1 : TripleplayParticleInitColorEffector {
 @public
  int val$startColor_;
  int val$endColor_;
  TripleplayUtilInterpolator *val$interp_;
}

@property (nonatomic, assign) int val$startColor;
@property (nonatomic, assign) int val$endColor;
@property (nonatomic, strong) TripleplayUtilInterpolator *val$interp;

- (void)applyWithInt:(int)index
withJavaLangFloatArray:(IOSFloatArray *)data
             withInt:(int)start
           withFloat:(float)now
           withFloat:(float)dt;
- (int)startColor;
- (int)endColor;
- (TripleplayUtilInterpolator *)interp;
- (id)initWithInt:(int)capture$0
          withInt:(int)capture$1
withTripleplayUtilInterpolator:(TripleplayUtilInterpolator *)capture$2;
@end