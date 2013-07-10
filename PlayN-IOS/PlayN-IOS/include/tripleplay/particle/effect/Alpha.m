//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/particle/effect/Alpha.java
//
//  Created by Thomas on 7/10/13.
//

#import "IOSFloatArray.h"
#import "tripleplay/particle/Effector.h"
#import "tripleplay/particle/ParticleBuffer.h"
#import "tripleplay/particle/effect/Alpha.h"
#import "tripleplay/util/Interpolator.h"

@implementation TripleplayParticleEffectAlpha

+ (TripleplayParticleEffector *)byAgeWithTripleplayUtilInterpolator:(TripleplayUtilInterpolator *)interp {
  return [TripleplayParticleEffectAlpha byAgeWithTripleplayUtilInterpolator:interp withFloat:1 withFloat:0];
}

+ (TripleplayParticleEffector *)byAgeWithTripleplayUtilInterpolator:(TripleplayUtilInterpolator *)interp
                                                          withFloat:(float)startAlpha
                                                          withFloat:(float)endAlpha {
  float rangeAlpha = endAlpha - startAlpha;
  return [[TripleplayParticleEffectAlpha_$1 alloc] initWithTripleplayUtilInterpolator:interp withFloat:startAlpha withFloat:rangeAlpha];
}

- (id)init {
  return [super init];
}

@end
@implementation TripleplayParticleEffectAlpha_$1

@synthesize val$interp = val$interp_;
@synthesize val$startAlpha = val$startAlpha_;
@synthesize val$rangeAlpha = val$rangeAlpha_;

- (void)applyWithInt:(int)index
withJavaLangFloatArray:(IOSFloatArray *)data
             withInt:(int)start
           withFloat:(float)now
           withFloat:(float)dt {
  [((IOSFloatArray *) NIL_CHK(data)) replaceFloatAtIndex:start + TripleplayParticleParticleBuffer_ALPHA withFloat:[((TripleplayUtilInterpolator *) NIL_CHK(val$interp_)) applyWithFloat:val$startAlpha_ withFloat:val$rangeAlpha_ withFloat:now - [((IOSFloatArray *) NIL_CHK(data)) floatAtIndex:start + TripleplayParticleParticleBuffer_BIRTH] withFloat:[((IOSFloatArray *) NIL_CHK(data)) floatAtIndex:start + TripleplayParticleParticleBuffer_LIFESPAN]]];
}

- (id)initWithTripleplayUtilInterpolator:(TripleplayUtilInterpolator *)capture$0
                               withFloat:(float)capture$1
                               withFloat:(float)capture$2 {
  if ((self = [super init])) {
    val$interp_ = capture$0;
    val$startAlpha_ = capture$1;
    val$rangeAlpha_ = capture$2;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayParticleEffectAlpha_$1 *typedCopy = (TripleplayParticleEffectAlpha_$1 *) copy;
  typedCopy.val$interp = val$interp_;
  typedCopy.val$startAlpha = val$startAlpha_;
  typedCopy.val$rangeAlpha = val$rangeAlpha_;
}

@end
