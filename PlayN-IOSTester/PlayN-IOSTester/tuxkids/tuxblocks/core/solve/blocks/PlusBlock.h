//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/blocks/PlusBlock.java
//
//  Created by Thomas on 7/26/13.
//

#ifndef _TuxkidsTuxblocksCoreSolveBlocksPlusBlock_H_
#define _TuxkidsTuxblocksCoreSolveBlocksPlusBlock_H_

@class TuxkidsTuxblocksCoreSolveBlocksMinusBlock;
@class TuxkidsTuxblocksCoreSolveBlocksModifierBlock;

#import "JreEmulation.h"
#include "tuxkids/tuxblocks/core/solve/blocks/HorizontalModifierBlock.h"

@interface TuxkidsTuxblocksCoreSolveBlocksPlusBlock : TuxkidsTuxblocksCoreSolveBlocksHorizontalModifierBlock {
}

- (id)initWithInt:(int)value;
- (id)initWithTuxkidsTuxblocksCoreSolveBlocksMinusBlock:(TuxkidsTuxblocksCoreSolveBlocksMinusBlock *)inverse;
- (NSString *)operator__;
- (int)plusValue;
- (int)color;
- (TuxkidsTuxblocksCoreSolveBlocksModifierBlock *)inverseChild;
- (TuxkidsTuxblocksCoreSolveBlocksModifierBlock *)copyChild OBJC_METHOD_FAMILY_NONE;
- (void)setPlusValueWithInt:(int)value;
@end

#endif // _TuxkidsTuxblocksCoreSolveBlocksPlusBlock_H_
