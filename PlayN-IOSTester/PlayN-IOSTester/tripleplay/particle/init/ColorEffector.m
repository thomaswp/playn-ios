//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tripleplay/particle/init/ColorEffector.java
//
//  Created by Thomas on 7/26/13.
//

#include "IOSFloatArray.h"
#include "playn/core/Color.h"
#include "tripleplay/particle/Effector.h"
#include "tripleplay/particle/ParticleBuffer.h"
#include "tripleplay/particle/init/ColorEffector.h"
#include "tripleplay/util/Colors.h"
#include "tripleplay/util/Interpolator.h"

@implementation TripleplayParticleInitColorEffector

@synthesize perc = perc_;

- (int)startColor {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (int)endColor {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (TripleplayUtilInterpolator *)interp {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)getPercWithFloatArray:(IOSFloatArray *)data
                       withInt:(int)start
                     withFloat:(float)now {
  return [((TripleplayUtilInterpolator *) nil_chk([self interp])) applyWithFloat:0 withFloat:1 withFloat:now - [((IOSFloatArray *) nil_chk(data)) floatAtIndex:start + TripleplayParticleParticleBuffer_BIRTH] withFloat:[((IOSFloatArray *) nil_chk(data)) floatAtIndex:start + TripleplayParticleParticleBuffer_LIFESPAN]];
}

+ (TripleplayParticleEffector *)byAgeWithTripleplayUtilInterpolator:(TripleplayUtilInterpolator *)interp
                                                            withInt:(int)startColor
                                                            withInt:(int)endColor {
  return [[TripleplayParticleInitColorEffector_$1 alloc] initWithInt:startColor withInt:endColor withTripleplayUtilInterpolator:interp];
}

- (id)init {
  return [super init];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayParticleInitColorEffector *typedCopy = (TripleplayParticleInitColorEffector *) copy;
  typedCopy.perc = perc_;
}

@end
@implementation TripleplayParticleInitColorEffector_$1

@synthesize val$startColor = val$startColor_;
@synthesize val$endColor = val$endColor_;
@synthesize val$interp = val$interp_;

- (void)applyWithInt:(int)index
      withFloatArray:(IOSFloatArray *)data
             withInt:(int)start
           withFloat:(float)now
           withFloat:(float)dt {
  self.perc = [self getPercWithFloatArray:data withInt:start withFloat:now];
  int color = [TripleplayUtilColors blendWithInt:val$startColor_ withInt:val$endColor_ withFloat:1 - perc_];
  (*[((IOSFloatArray *) nil_chk(data)) floatRefAtIndex:start + TripleplayParticleParticleBuffer_RED]) = [PlaynCoreColor redWithInt:color] / 255.0f;
  (*[((IOSFloatArray *) nil_chk(data)) floatRefAtIndex:start + TripleplayParticleParticleBuffer_GREEN]) = [PlaynCoreColor greenWithInt:color] / 255.0f;
  (*[((IOSFloatArray *) nil_chk(data)) floatRefAtIndex:start + TripleplayParticleParticleBuffer_BLUE]) = [PlaynCoreColor blueWithInt:color] / 255.0f;
}

- (int)startColor {
  return val$startColor_;
}

- (int)endColor {
  return val$endColor_;
}

- (TripleplayUtilInterpolator *)interp {
  return val$interp_;
}

- (id)initWithInt:(int)capture$0
          withInt:(int)capture$1
withTripleplayUtilInterpolator:(TripleplayUtilInterpolator *)capture$2 {
  if ((self = [super init])) {
    val$startColor_ = capture$0;
    val$endColor_ = capture$1;
    val$interp_ = capture$2;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayParticleInitColorEffector_$1 *typedCopy = (TripleplayParticleInitColorEffector_$1 *) copy;
  typedCopy.val$startColor = val$startColor_;
  typedCopy.val$endColor = val$endColor_;
  typedCopy.val$interp = val$interp_;
}

@end
