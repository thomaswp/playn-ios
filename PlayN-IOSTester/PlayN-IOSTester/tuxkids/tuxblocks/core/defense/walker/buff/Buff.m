//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/defense/walker/buff/Buff.java
//
//  Created by Thomas on 7/26/13.
//

#include "IOSClass.h"
#include "tuxkids/tuxblocks/core/defense/walker/buff/Buff.h"
#include "tuxkids/tuxblocks/core/utils/HashCode.h"

@implementation TuxkidsTuxblocksCoreDefenseWalkerBuffBuff

@synthesize currentLife = currentLife_;

- (int)lifespan {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)modifySpeedWithFloat:(float)dt {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (BOOL)updateWithInt:(int)delta {
  currentLife_ -= delta;
  return currentLife_ <= 0;
}

- (void)addFieldsWithTuxkidsTuxblocksCoreUtilsHashCode:(TuxkidsTuxblocksCoreUtilsHashCode *)hashCode {
  [((TuxkidsTuxblocksCoreUtilsHashCode *) nil_chk(hashCode)) addFieldWithId:[self getClass]];
}

- (id)init {
  if ((self = [super init])) {
    currentLife_ = [self lifespan];
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreDefenseWalkerBuffBuff *typedCopy = (TuxkidsTuxblocksCoreDefenseWalkerBuffBuff *) copy;
  typedCopy.currentLife = currentLife_;
}

@end
