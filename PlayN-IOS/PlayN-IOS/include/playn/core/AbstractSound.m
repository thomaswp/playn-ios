//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/AbstractSound.java
//
//  Created by Thomas on 7/25/13.
//

#include "java/lang/Throwable.h"
#include "java/util/List.h"
#include "playn/core/AbstractSound.h"
#include "playn/core/util/Callback.h"
#include "playn/core/util/Callbacks.h"
#include "pythagoras/f/MathUtil.h"

@implementation PlaynCoreAbstractSound

@synthesize callbacks = callbacks_;
@synthesize error = error_;
@synthesize playing = playing_;
@synthesize looping = looping_;
@synthesize volume_ = volume__;
@synthesize impl = impl_;

- (void)onLoadedWithId:(id)impl {
  self.impl = impl;
  callbacks_ = [PlaynCoreUtilCallbacks dispatchSuccessClearWithJavaUtilList:callbacks_ withId:self];
  [self setVolumeImplWithFloat:volume__];
  [self setLoopingImplWithBOOL:looping_];
  if (playing_) [self playImpl];
}

- (void)onLoadErrorWithJavaLangThrowable:(JavaLangThrowable *)error {
  self.error = error;
  callbacks_ = [PlaynCoreUtilCallbacks dispatchFailureClearWithJavaUtilList:callbacks_ withJavaLangThrowable:error];
}

- (BOOL)prepare {
  return (impl_ != nil) ? [self prepareImpl] : NO;
}

- (BOOL)isPlaying {
  return (impl_ != nil) ? [self playingImpl] : playing_;
}

- (BOOL)play {
  self.playing = YES;
  if (impl_ != nil) return [self playImpl];
  else return NO;
}

- (void)stop {
  self.playing = NO;
  if (impl_ != nil) [self stopImpl];
}

- (void)setLoopingWithBOOL:(BOOL)looping {
  self.looping = looping;
  if (impl_ != nil) [self setLoopingImplWithBOOL:looping];
}

- (float)volume {
  return volume__;
}

- (void)setVolumeWithFloat:(float)volume {
  self.volume_ = [PythagorasFMathUtil clampWithFloat:volume withFloat:0 withFloat:1];
  if (impl_ != nil) [self setVolumeImplWithFloat:self.volume_];
}

- (void)release__ {
  if (impl_ != nil) {
    [self releaseImpl];
    impl_ = nil;
  }
}

- (void)addCallbackWithPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback {
  if (impl_ != nil) [((id<PlaynCoreUtilCallback>) nil_chk(callback)) onSuccessWithId:self];
  else if (error_ != nil) [((id<PlaynCoreUtilCallback>) nil_chk(callback)) onFailureWithJavaLangThrowable:error_];
  else callbacks_ = [PlaynCoreUtilCallbacks createAddWithJavaUtilList:callbacks_ withPlaynCoreUtilCallback:callback];
}

- (void)dealloc {
  [self release__];
  impl_ = nil;
  error_ = nil;
  callbacks_ = nil;
}

- (BOOL)prepareImpl {
  return NO;
}

- (BOOL)playingImpl {
  return playing_;
}

- (BOOL)playImpl {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)stopImpl {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)setLoopingImplWithBOOL:(BOOL)looping {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)setVolumeImplWithFloat:(float)volume {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)releaseImpl {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (id)init {
  if ((self = [super init])) {
    volume__ = 1;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreAbstractSound *typedCopy = (PlaynCoreAbstractSound *) copy;
  typedCopy.callbacks = callbacks_;
  typedCopy.error = error_;
  typedCopy.playing = playing_;
  typedCopy.looping = looping_;
  typedCopy.volume_ = volume__;
  typedCopy.impl = impl_;
}

@end
