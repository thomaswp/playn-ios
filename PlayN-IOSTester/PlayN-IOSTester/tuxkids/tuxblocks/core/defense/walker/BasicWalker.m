//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/defense/walker/BasicWalker.java
//
//  Created by Thomas on 7/10/13.
//

#import "tuxkids/tuxblocks/core/defense/walker/BasicWalker.h"

@implementation TuxkidsTuxblocksCoreDefenseWalkerBasicWalker

@synthesize maxHp = maxHp_;
@synthesize walkCellTime_ = walkCellTime__;

- (id)initWithInt:(int)maxHp
          withInt:(int)walkCellTime {
  if ((self = [super init])) {
    self.maxHp = maxHp;
    self.walkCellTime_ = walkCellTime;
  }
  return self;
}

- (int)getMaxHp {
  return maxHp_;
}

- (int)walkCellTime {
  return walkCellTime__;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreDefenseWalkerBasicWalker *typedCopy = (TuxkidsTuxblocksCoreDefenseWalkerBasicWalker *) copy;
  typedCopy.maxHp = maxHp_;
  typedCopy.walkCellTime_ = walkCellTime__;
}

@end