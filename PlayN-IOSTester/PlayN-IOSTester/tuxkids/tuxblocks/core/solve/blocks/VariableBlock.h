//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/blocks/VariableBlock.java
//
//  Created by Thomas on 7/26/13.
//

#ifndef _TuxkidsTuxblocksCoreSolveBlocksVariableBlock_H_
#define _TuxkidsTuxblocksCoreSolveBlocksVariableBlock_H_

@class JavaUtilArrayList;
@class TuxkidsTuxblocksCoreSolveBlocksBlock;
@class TuxkidsTuxblocksCoreSolveBlocksModifierBlock;
@class TuxkidsTuxblocksCoreSolveBlocksSprite;
@class TuxkidsTuxblocksCoreSolveBlocksTimesBlock;
@class TuxkidsTuxblocksCoreUtilsHashCode;

#import "JreEmulation.h"
#include "tuxkids/tuxblocks/core/solve/blocks/BaseBlock.h"
#include "tuxkids/tuxblocks/core/solve/blocks/Sprite.h"

@interface TuxkidsTuxblocksCoreSolveBlocksVariableBlock : TuxkidsTuxblocksCoreSolveBlocksBaseBlock {
 @public
  NSString *symbol_;
  JavaUtilArrayList *verticalMods_;
}

@property (nonatomic, copy) NSString *symbol;
@property (nonatomic, strong) JavaUtilArrayList *verticalMods;

- (id)initWithNSString:(NSString *)symbol;
- (NSString *)text;
- (void)addFieldsWithTuxkidsTuxblocksCoreUtilsHashCode:(TuxkidsTuxblocksCoreUtilsHashCode *)hashCode;
- (TuxkidsTuxblocksCoreSolveBlocksBlock *)inverse;
- (TuxkidsTuxblocksCoreSolveBlocksSprite *)copyChild OBJC_METHOD_FAMILY_NONE;
- (BOOL)canAcceptWithTuxkidsTuxblocksCoreSolveBlocksBlock:(TuxkidsTuxblocksCoreSolveBlocksBlock *)sprite;
- (TuxkidsTuxblocksCoreSolveBlocksModifierBlock *)addBlockWithTuxkidsTuxblocksCoreSolveBlocksBlock:(TuxkidsTuxblocksCoreSolveBlocksBlock *)sprite
                                                                                          withBOOL:(BOOL)snap;
@end

@interface TuxkidsTuxblocksCoreSolveBlocksVariableBlock_$1 : NSObject < TuxkidsTuxblocksCoreSolveBlocksSprite_SimplifyListener > {
 @public
  TuxkidsTuxblocksCoreSolveBlocksVariableBlock *this$0_;
  TuxkidsTuxblocksCoreSolveBlocksTimesBlock *val$myFactor_;
  int val$answer_;
  TuxkidsTuxblocksCoreSolveBlocksBlock *val$sprite_;
}

@property (nonatomic, strong) TuxkidsTuxblocksCoreSolveBlocksVariableBlock *this$0;
@property (nonatomic, strong) TuxkidsTuxblocksCoreSolveBlocksTimesBlock *val$myFactor;
@property (nonatomic, assign) int val$answer;
@property (nonatomic, strong) TuxkidsTuxblocksCoreSolveBlocksBlock *val$sprite;

- (void)wasSimplifiedWithBOOL:(BOOL)success;
- (id)initWithTuxkidsTuxblocksCoreSolveBlocksVariableBlock:(TuxkidsTuxblocksCoreSolveBlocksVariableBlock *)outer$
             withTuxkidsTuxblocksCoreSolveBlocksTimesBlock:(TuxkidsTuxblocksCoreSolveBlocksTimesBlock *)capture$0
                                                   withInt:(int)capture$1
                  withTuxkidsTuxblocksCoreSolveBlocksBlock:(TuxkidsTuxblocksCoreSolveBlocksBlock *)capture$2;
@end

#endif // _TuxkidsTuxblocksCoreSolveBlocksVariableBlock_H_
