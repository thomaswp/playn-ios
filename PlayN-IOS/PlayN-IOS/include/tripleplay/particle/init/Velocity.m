//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/particle/init/Velocity.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSFloatArray.h"
#include "playn/core/Graphics.h"
#include "playn/core/PlayN.h"
#include "playn/core/gl/GLContext.h"
#include "playn/core/gl/Scale.h"
#include "pythagoras/f/FloatMath.h"
#include "pythagoras/f/MathUtil.h"
#include "pythagoras/f/Vector.h"
#include "tripleplay/particle/Initializer.h"
#include "tripleplay/particle/ParticleBuffer.h"
#include "tripleplay/particle/init/Velocity.h"
#include "tripleplay/util/Randoms.h"

@implementation TripleplayParticleInitVelocity

+ (TripleplayParticleInitializer *)constantWithPythagorasFVector:(PythagorasFVector *)velocity {
  return [[TripleplayParticleInitVelocity_$1 alloc] initWithPythagorasFVector:velocity];
}

+ (TripleplayParticleInitializer *)randomSquareWithTripleplayUtilRandoms:(TripleplayUtilRandoms *)rando
                                                               withFloat:(float)xRange
                                                               withFloat:(float)yRange {
  return [TripleplayParticleInitVelocity randomSquareWithTripleplayUtilRandoms:rando withFloat:-xRange / 2 withFloat:xRange / 2 withFloat:-yRange / 2 withFloat:yRange / 2];
}

+ (TripleplayParticleInitializer *)randomSquareWithTripleplayUtilRandoms:(TripleplayUtilRandoms *)rando
                                                               withFloat:(float)minX
                                                               withFloat:(float)maxX
                                                               withFloat:(float)minY
                                                               withFloat:(float)maxY {
  return [[TripleplayParticleInitVelocity_$2 alloc] initWithTripleplayUtilRandoms:rando withFloat:minX withFloat:maxX withFloat:minY withFloat:maxY];
}

+ (TripleplayParticleInitializer *)randomNormalWithTripleplayUtilRandoms:(TripleplayUtilRandoms *)rando
                                                               withFloat:(float)mean
                                                               withFloat:(float)dev {
  return [TripleplayParticleInitVelocity randomNormalWithTripleplayUtilRandoms:rando withFloat:mean withFloat:dev withFloat:mean withFloat:dev];
}

+ (TripleplayParticleInitializer *)randomNormalWithTripleplayUtilRandoms:(TripleplayUtilRandoms *)rando
                                                               withFloat:(float)xMean
                                                               withFloat:(float)xDev
                                                               withFloat:(float)yMean
                                                               withFloat:(float)yDev {
  return [[TripleplayParticleInitVelocity_$3 alloc] initWithTripleplayUtilRandoms:rando withFloat:xMean withFloat:xDev withFloat:yMean withFloat:yDev];
}

+ (TripleplayParticleInitializer *)randomCircleWithTripleplayUtilRandoms:(TripleplayUtilRandoms *)rando
                                                               withFloat:(float)maximum {
  return [TripleplayParticleInitVelocity randomCircleWithTripleplayUtilRandoms:rando withFloat:0 withFloat:maximum];
}

+ (TripleplayParticleInitializer *)randomCircleWithTripleplayUtilRandoms:(TripleplayUtilRandoms *)rando
                                                               withFloat:(float)min
                                                               withFloat:(float)max {
  return [[TripleplayParticleInitVelocity_$4 alloc] initWithTripleplayUtilRandoms:rando withFloat:min withFloat:max];
}

+ (TripleplayParticleInitializer *)incrementWithFloat:(float)dx
                                            withFloat:(float)dy {
  return [[TripleplayParticleInitVelocity_$5 alloc] initWithFloat:dx withFloat:dy];
}

- (id)init {
  return [super init];
}

@end
@implementation TripleplayParticleInitVelocity_VelocityInitializer

@synthesize _vel = _vel_;

- (void)init__WithInt:(int)index
       withFloatArray:(IOSFloatArray *)data
              withInt:(int)start OBJC_METHOD_FAMILY_NONE {
  [self initVelocityWithPythagorasFVector:_vel_];
  float scale_ = ((PlaynCoreGlScale *) nil_chk(((PlaynCoreGlGLContext *) nil_chk([((id<PlaynCoreGraphics>) nil_chk([PlaynCorePlayN graphics])) ctx])).scale_)).factor;
  (*[((IOSFloatArray *) nil_chk(data)) floatRefAtIndex:start + TripleplayParticleParticleBuffer_VEL_X]) = ((PythagorasFVector *) nil_chk(_vel_)).x_ * scale_;
  (*[((IOSFloatArray *) nil_chk(data)) floatRefAtIndex:start + TripleplayParticleParticleBuffer_VEL_Y]) = ((PythagorasFVector *) nil_chk(_vel_)).y_ * scale_;
}

- (void)initVelocityWithPythagorasFVector:(PythagorasFVector *)vel OBJC_METHOD_FAMILY_NONE {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (id)init {
  if ((self = [super init])) {
    _vel_ = [[PythagorasFVector alloc] init];
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayParticleInitVelocity_VelocityInitializer *typedCopy = (TripleplayParticleInitVelocity_VelocityInitializer *) copy;
  typedCopy._vel = _vel_;
}

@end
@implementation TripleplayParticleInitVelocity_$1

@synthesize val$velocity = val$velocity_;

- (void)initVelocityWithPythagorasFVector:(PythagorasFVector *)vel OBJC_METHOD_FAMILY_NONE {
  (void) [((PythagorasFVector *) nil_chk(vel)) setWithPythagorasFIVector:val$velocity_];
}

- (id)initWithPythagorasFVector:(PythagorasFVector *)capture$0 {
  if ((self = [super init])) {
    val$velocity_ = capture$0;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayParticleInitVelocity_$1 *typedCopy = (TripleplayParticleInitVelocity_$1 *) copy;
  typedCopy.val$velocity = val$velocity_;
}

@end
@implementation TripleplayParticleInitVelocity_$2

@synthesize val$rando = val$rando_;
@synthesize val$minX = val$minX_;
@synthesize val$maxX = val$maxX_;
@synthesize val$minY = val$minY_;
@synthesize val$maxY = val$maxY_;

- (void)initVelocityWithPythagorasFVector:(PythagorasFVector *)vel OBJC_METHOD_FAMILY_NONE {
  (void) [((PythagorasFVector *) nil_chk(vel)) setWithFloat:[((TripleplayUtilRandoms *) nil_chk(val$rando_)) getInRangeWithFloat:val$minX_ withFloat:val$maxX_] withFloat:[((TripleplayUtilRandoms *) nil_chk(val$rando_)) getInRangeWithFloat:val$minY_ withFloat:val$maxY_]];
}

- (id)initWithTripleplayUtilRandoms:(TripleplayUtilRandoms *)capture$0
                          withFloat:(float)capture$1
                          withFloat:(float)capture$2
                          withFloat:(float)capture$3
                          withFloat:(float)capture$4 {
  if ((self = [super init])) {
    val$rando_ = capture$0;
    val$minX_ = capture$1;
    val$maxX_ = capture$2;
    val$minY_ = capture$3;
    val$maxY_ = capture$4;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayParticleInitVelocity_$2 *typedCopy = (TripleplayParticleInitVelocity_$2 *) copy;
  typedCopy.val$rando = val$rando_;
  typedCopy.val$minX = val$minX_;
  typedCopy.val$maxX = val$maxX_;
  typedCopy.val$minY = val$minY_;
  typedCopy.val$maxY = val$maxY_;
}

@end
@implementation TripleplayParticleInitVelocity_$3

@synthesize val$rando = val$rando_;
@synthesize val$xMean = val$xMean_;
@synthesize val$xDev = val$xDev_;
@synthesize val$yMean = val$yMean_;
@synthesize val$yDev = val$yDev_;

- (void)initVelocityWithPythagorasFVector:(PythagorasFVector *)vel OBJC_METHOD_FAMILY_NONE {
  (void) [((PythagorasFVector *) nil_chk(vel)) setWithFloat:[((TripleplayUtilRandoms *) nil_chk(val$rando_)) getNormalWithFloat:val$xMean_ withFloat:val$xDev_] withFloat:[((TripleplayUtilRandoms *) nil_chk(val$rando_)) getNormalWithFloat:val$yMean_ withFloat:val$yDev_]];
}

- (id)initWithTripleplayUtilRandoms:(TripleplayUtilRandoms *)capture$0
                          withFloat:(float)capture$1
                          withFloat:(float)capture$2
                          withFloat:(float)capture$3
                          withFloat:(float)capture$4 {
  if ((self = [super init])) {
    val$rando_ = capture$0;
    val$xMean_ = capture$1;
    val$xDev_ = capture$2;
    val$yMean_ = capture$3;
    val$yDev_ = capture$4;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayParticleInitVelocity_$3 *typedCopy = (TripleplayParticleInitVelocity_$3 *) copy;
  typedCopy.val$rando = val$rando_;
  typedCopy.val$xMean = val$xMean_;
  typedCopy.val$xDev = val$xDev_;
  typedCopy.val$yMean = val$yMean_;
  typedCopy.val$yDev = val$yDev_;
}

@end
@implementation TripleplayParticleInitVelocity_$4

@synthesize val$rando = val$rando_;
@synthesize val$min = val$min_;
@synthesize val$max = val$max_;

- (void)initVelocityWithPythagorasFVector:(PythagorasFVector *)vel OBJC_METHOD_FAMILY_NONE {
  float angle = [((TripleplayUtilRandoms *) nil_chk(val$rando_)) getFloatWithFloat:PythagorasFMathUtil_TWO_PI];
  float magnitude = val$min_ + [((TripleplayUtilRandoms *) nil_chk(val$rando_)) getFloatWithFloat:val$max_ - val$min_];
  (void) [((PythagorasFVector *) nil_chk(vel)) setWithFloat:[PythagorasFFloatMath sinWithFloat:angle] * magnitude withFloat:[PythagorasFFloatMath cosWithFloat:angle] * magnitude];
}

- (id)initWithTripleplayUtilRandoms:(TripleplayUtilRandoms *)capture$0
                          withFloat:(float)capture$1
                          withFloat:(float)capture$2 {
  if ((self = [super init])) {
    val$rando_ = capture$0;
    val$min_ = capture$1;
    val$max_ = capture$2;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayParticleInitVelocity_$4 *typedCopy = (TripleplayParticleInitVelocity_$4 *) copy;
  typedCopy.val$rando = val$rando_;
  typedCopy.val$min = val$min_;
  typedCopy.val$max = val$max_;
}

@end
@implementation TripleplayParticleInitVelocity_$5

@synthesize val$dx = val$dx_;
@synthesize val$dy = val$dy_;

- (void)init__WithInt:(int)index
       withFloatArray:(IOSFloatArray *)data
              withInt:(int)start OBJC_METHOD_FAMILY_NONE {
  float scale_ = ((PlaynCoreGlScale *) nil_chk(((PlaynCoreGlGLContext *) nil_chk([((id<PlaynCoreGraphics>) nil_chk([PlaynCorePlayN graphics])) ctx])).scale_)).factor;
  (*[((IOSFloatArray *) nil_chk(data)) floatRefAtIndex:start + TripleplayParticleParticleBuffer_VEL_X]) += val$dx_ * scale_;
  (*[((IOSFloatArray *) nil_chk(data)) floatRefAtIndex:start + TripleplayParticleParticleBuffer_VEL_Y]) += val$dy_ * scale_;
}

- (id)initWithFloat:(float)capture$0
          withFloat:(float)capture$1 {
  if ((self = [super init])) {
    val$dx_ = capture$0;
    val$dy_ = capture$1;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayParticleInitVelocity_$5 *typedCopy = (TripleplayParticleInitVelocity_$5 *) copy;
  typedCopy.val$dx = val$dx_;
  typedCopy.val$dy = val$dy_;
}

@end
