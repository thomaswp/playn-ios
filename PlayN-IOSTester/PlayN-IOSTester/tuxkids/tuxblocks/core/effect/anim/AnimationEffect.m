//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/effect/anim/AnimationEffect.java
//
//  Created by Thomas on 7/26/13.
//

#include "IOSObjectArray.h"
#include "playn/core/Graphics.h"
#include "playn/core/GroupLayer.h"
#include "playn/core/Image.h"
#include "playn/core/ImageLayer.h"
#include "tuxkids/tuxblocks/core/PlayNObject.h"
#include "tuxkids/tuxblocks/core/effect/anim/Animation.h"
#include "tuxkids/tuxblocks/core/effect/anim/AnimationEffect.h"

@implementation TuxkidsTuxblocksCoreEffectAnimAnimationEffect

@synthesize animation = animation_;
@synthesize imageLayer = imageLayer_;
@synthesize index = index_;
@synthesize frameLength = frameLength_;
@synthesize timer = timer_;

- (id)initWithTuxkidsTuxblocksCoreEffectAnimAnimation:(TuxkidsTuxblocksCoreEffectAnimAnimation *)animation
                                              withInt:(int)frameLength {
  if ((self = [super init])) {
    self.animation = animation;
    imageLayer_ = [((id<PlaynCoreGraphics>) nil_chk([TuxkidsTuxblocksCorePlayNObject graphics])) createImageLayer];
    if ((int) [((IOSObjectArray *) nil_chk(((TuxkidsTuxblocksCoreEffectAnimAnimation *) nil_chk(animation)).images)) count] > 0) (void) [((id<PlaynCoreImageLayer>) nil_chk(imageLayer_)) setImageWithPlaynCoreImage:[((IOSObjectArray *) nil_chk(((TuxkidsTuxblocksCoreEffectAnimAnimation *) nil_chk(animation)).images)) objectAtIndex:0]];
    [TuxkidsTuxblocksCorePlayNObject centerImageLayerWithPlaynCoreImageLayer:imageLayer_];
    [((id<PlaynCoreGroupLayer>) nil_chk(layer__)) addWithPlaynCoreLayer:imageLayer_];
    self.frameLength = frameLength;
  }
  return self;
}

- (BOOL)updateWithInt:(int)delta {
  if (index_ >= (int) [((IOSObjectArray *) nil_chk(((TuxkidsTuxblocksCoreEffectAnimAnimation *) nil_chk(animation_)).images)) count]) {
    [((id<PlaynCoreGroupLayer>) nil_chk(layer__)) destroy];
    return YES;
  }
  timer_ += delta;
  if (timer_ > frameLength_) {
    (void) [((id<PlaynCoreImageLayer>) nil_chk(imageLayer_)) setImageWithPlaynCoreImage:[((IOSObjectArray *) nil_chk(((TuxkidsTuxblocksCoreEffectAnimAnimation *) nil_chk(animation_)).images)) objectAtIndex:index_++]];
    timer_ -= frameLength_;
  }
  return NO;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreEffectAnimAnimationEffect *typedCopy = (TuxkidsTuxblocksCoreEffectAnimAnimationEffect *) copy;
  typedCopy.animation = animation_;
  typedCopy.imageLayer = imageLayer_;
  typedCopy.index = index_;
  typedCopy.frameLength = frameLength_;
  typedCopy.timer = timer_;
}

@end
