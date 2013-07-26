//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/blocks/PlusBlock.java
//
//  Created by Thomas on 7/26/13.
//

#include "playn/core/Color.h"
#include "tuxkids/tuxblocks/core/solve/blocks/MinusBlock.h"
#include "tuxkids/tuxblocks/core/solve/blocks/ModifierBlock.h"
#include "tuxkids/tuxblocks/core/solve/blocks/PlusBlock.h"

@implementation TuxkidsTuxblocksCoreSolveBlocksPlusBlock

- (id)initWithInt:(int)value {
  return [super initWithInt:value];
}

- (id)initWithTuxkidsTuxblocksCoreSolveBlocksMinusBlock:(TuxkidsTuxblocksCoreSolveBlocksMinusBlock *)inverse {
  return [super initWithTuxkidsTuxblocksCoreSolveBlocksHorizontalModifierBlock:inverse];
}

- (NSString *)operator__ {
  return @"+";
}

- (int)plusValue {
  return value_;
}

- (int)color {
  return [PlaynCoreColor rgbWithInt:(int) 0xF7 withInt:(int) 0x04 withInt:(int) 0x04];
}

- (TuxkidsTuxblocksCoreSolveBlocksModifierBlock *)inverseChild {
  return [[TuxkidsTuxblocksCoreSolveBlocksMinusBlock alloc] initWithTuxkidsTuxblocksCoreSolveBlocksPlusBlock:self];
}

- (TuxkidsTuxblocksCoreSolveBlocksModifierBlock *)copyChild OBJC_METHOD_FAMILY_NONE {
  return [[TuxkidsTuxblocksCoreSolveBlocksPlusBlock alloc] initWithInt:value_];
}

- (void)setPlusValueWithInt:(int)value {
  [self setValueWithInt:value];
}

@end
