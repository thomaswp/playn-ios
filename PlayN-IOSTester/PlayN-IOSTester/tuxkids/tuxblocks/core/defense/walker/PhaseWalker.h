//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/defense/walker/PhaseWalker.java
//
//  Created by Thomas on 7/26/13.
//

#ifndef _TuxkidsTuxblocksCoreDefenseWalkerPhaseWalker_H_
#define _TuxkidsTuxblocksCoreDefenseWalkerPhaseWalker_H_

@class TuxkidsTuxblocksCoreDefenseWalkerWalker;

#import "JreEmulation.h"
#include "tuxkids/tuxblocks/core/defense/walker/BasicWalker.h"

@interface TuxkidsTuxblocksCoreDefenseWalkerPhaseWalker : TuxkidsTuxblocksCoreDefenseWalkerBasicWalker {
}

- (id)initWithInt:(int)maxHp
          withInt:(int)walkCellTime;
- (void)updateMovementWithFloat:(float)perc;
- (TuxkidsTuxblocksCoreDefenseWalkerWalker *)copy__ OBJC_METHOD_FAMILY_NONE;
@end

#endif // _TuxkidsTuxblocksCoreDefenseWalkerPhaseWalker_H_
