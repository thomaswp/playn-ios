//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/particle/effect/Alpha.java
//
//  Created by Thomas on 7/10/13.
//

@class IOSFloatArray;
@class TripleplayUtilInterpolator;

#import "JreEmulation.h"
#import "tripleplay/particle/Effector.h"

@interface TripleplayParticleEffectAlpha : NSObject {
}

+ (TripleplayParticleEffector *)byAgeWithTripleplayUtilInterpolator:(TripleplayUtilInterpolator *)interp;
+ (TripleplayParticleEffector *)byAgeWithTripleplayUtilInterpolator:(TripleplayUtilInterpolator *)interp
                                                          withFloat:(float)startAlpha
                                                          withFloat:(float)endAlpha;
- (id)init;
@end

@interface TripleplayParticleEffectAlpha_$1 : TripleplayParticleEffector {
 @public
  TripleplayUtilInterpolator *val$interp_;
  float val$startAlpha_;
  float val$rangeAlpha_;
}

@property (nonatomic, strong) TripleplayUtilInterpolator *val$interp;
@property (nonatomic, assign) float val$startAlpha;
@property (nonatomic, assign) float val$rangeAlpha;

- (void)applyWithInt:(int)index
withJavaLangFloatArray:(IOSFloatArray *)data
             withInt:(int)start
           withFloat:(float)now
           withFloat:(float)dt;
- (id)initWithTripleplayUtilInterpolator:(TripleplayUtilInterpolator *)capture$0
                               withFloat:(float)capture$1
                               withFloat:(float)capture$2;
@end
