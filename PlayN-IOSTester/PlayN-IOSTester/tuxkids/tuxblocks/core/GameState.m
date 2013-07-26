//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/GameState.java
//
//  Created by Thomas on 7/26/13.
//

#include "IOSClass.h"
#include "IOSIntArray.h"
#include "IOSObjectArray.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "tuxkids/tuxblocks/core/GameBackgroundSprite.h"
#include "tuxkids/tuxblocks/core/GameState.h"
#include "tuxkids/tuxblocks/core/defense/round/Reward.h"
#include "tuxkids/tuxblocks/core/defense/select/Problem.h"
#include "tuxkids/tuxblocks/core/defense/tower/Tower.h"
#include "tuxkids/tuxblocks/core/defense/tower/TowerType.h"
#include "tuxkids/tuxblocks/core/solve/blocks/BaseBlock.h"
#include "tuxkids/tuxblocks/core/solve/blocks/BlockHolder.h"
#include "tuxkids/tuxblocks/core/solve/blocks/Equation.h"
#include "tuxkids/tuxblocks/core/solve/blocks/NumberBlock.h"
#include "tuxkids/tuxblocks/core/solve/blocks/VariableBlock.h"

@implementation TuxkidsTuxblocksCoreGameState

@synthesize towerCounts_ = towerCounts__;
@synthesize problems_ = problems__;
@synthesize background_ = background__;
@synthesize inventoryChangedListener = inventoryChangedListener_;
@synthesize problemAddedListener = problemAddedListener_;
@synthesize maxSteps = maxSteps_;
@synthesize minSteps = minSteps_;
@synthesize index = index_;
@synthesize eqs = eqs_;

- (IOSIntArray *)towerCounts {
  return towerCounts__;
}

- (id<JavaUtilList>)problems {
  return problems__;
}

- (TuxkidsTuxblocksCoreGameBackgroundSprite *)background {
  return background__;
}

- (int)themeColor {
  return [((TuxkidsTuxblocksCoreGameBackgroundSprite *) nil_chk([self background])) primaryColor];
}

- (void)newThemeColor OBJC_METHOD_FAMILY_NONE {
  [((TuxkidsTuxblocksCoreGameBackgroundSprite *) nil_chk(background__)) newThemeColor];
}

- (void)setInventoryChangedListenerWithTuxkidsTuxblocksCoreGameState_InventoryChangedListener:(id<TuxkidsTuxblocksCoreGameState_InventoryChangedListener>)inventoryChangedListener {
  self.inventoryChangedListener = inventoryChangedListener;
}

- (void)setProblemAddedListenerWithTuxkidsTuxblocksCoreGameState_ProblemAddedListener:(id<TuxkidsTuxblocksCoreGameState_ProblemAddedListener>)problemAddedListener {
  self.problemAddedListener = problemAddedListener;
}

- (id)init {
  if ((self = [super init])) {
    maxSteps_ = 1;
    minSteps_ = 2;
    eqs_ = [IOSObjectArray arrayWithObjects:(id[]){ [((TuxkidsTuxblocksCoreSolveBlocksEquation_Builder *) nil_chk([((TuxkidsTuxblocksCoreSolveBlocksEquation_Builder *) nil_chk([((TuxkidsTuxblocksCoreSolveBlocksEquation_Builder *) [[TuxkidsTuxblocksCoreSolveBlocksEquation_Builder alloc] init]) addLeftWithTuxkidsTuxblocksCoreSolveBlocksBaseBlock:[((TuxkidsTuxblocksCoreSolveBlocksBaseBlock *) nil_chk([((TuxkidsTuxblocksCoreSolveBlocksVariableBlock *) [[TuxkidsTuxblocksCoreSolveBlocksVariableBlock alloc] initWithNSString:@"x"]) plusWithInt:2])) timesWithInt:3]])) addRightWithTuxkidsTuxblocksCoreSolveBlocksBaseBlock:[[TuxkidsTuxblocksCoreSolveBlocksNumberBlock alloc] initWithInt:9]])) createEquation], [((TuxkidsTuxblocksCoreSolveBlocksEquation_Builder *) nil_chk([((TuxkidsTuxblocksCoreSolveBlocksEquation_Builder *) nil_chk([((TuxkidsTuxblocksCoreSolveBlocksEquation_Builder *) nil_chk([((TuxkidsTuxblocksCoreSolveBlocksEquation_Builder *) [[TuxkidsTuxblocksCoreSolveBlocksEquation_Builder alloc] init]) addLeftWithTuxkidsTuxblocksCoreSolveBlocksBaseBlock:[((TuxkidsTuxblocksCoreSolveBlocksBaseBlock *) nil_chk([((TuxkidsTuxblocksCoreSolveBlocksBaseBlock *) nil_chk([((TuxkidsTuxblocksCoreSolveBlocksBaseBlock *) nil_chk([((TuxkidsTuxblocksCoreSolveBlocksVariableBlock *) [[TuxkidsTuxblocksCoreSolveBlocksVariableBlock alloc] initWithNSString:@"x"]) plusWithInt:2])) timesWithInt:3])) minusWithInt:3])) overWithInt:5]])) addLeftWithTuxkidsTuxblocksCoreSolveBlocksBaseBlock:[[TuxkidsTuxblocksCoreSolveBlocksBlockHolder alloc] init]])) addRightWithTuxkidsTuxblocksCoreSolveBlocksBaseBlock:[[TuxkidsTuxblocksCoreSolveBlocksNumberBlock alloc] initWithInt:3]])) createEquation], [((TuxkidsTuxblocksCoreSolveBlocksEquation_Builder *) nil_chk([((TuxkidsTuxblocksCoreSolveBlocksEquation_Builder *) nil_chk([((TuxkidsTuxblocksCoreSolveBlocksEquation_Builder *) nil_chk([((TuxkidsTuxblocksCoreSolveBlocksEquation_Builder *) [[TuxkidsTuxblocksCoreSolveBlocksEquation_Builder alloc] init]) addLeftWithTuxkidsTuxblocksCoreSolveBlocksBaseBlock:[((TuxkidsTuxblocksCoreSolveBlocksVariableBlock *) [[TuxkidsTuxblocksCoreSolveBlocksVariableBlock alloc] initWithNSString:@"x"]) timesWithInt:3]])) addLeftWithTuxkidsTuxblocksCoreSolveBlocksBaseBlock:[((TuxkidsTuxblocksCoreSolveBlocksBaseBlock *) nil_chk([((TuxkidsTuxblocksCoreSolveBlocksVariableBlock *) [[TuxkidsTuxblocksCoreSolveBlocksVariableBlock alloc] initWithNSString:@"x"]) minusWithInt:7])) overWithInt:4]])) addRightWithTuxkidsTuxblocksCoreSolveBlocksBaseBlock:[[TuxkidsTuxblocksCoreSolveBlocksNumberBlock alloc] initWithInt:8]])) createEquation], [((TuxkidsTuxblocksCoreSolveBlocksEquation_Builder *) nil_chk([((TuxkidsTuxblocksCoreSolveBlocksEquation_Builder *) nil_chk([((TuxkidsTuxblocksCoreSolveBlocksEquation_Builder *) nil_chk([((TuxkidsTuxblocksCoreSolveBlocksEquation_Builder *) nil_chk([((TuxkidsTuxblocksCoreSolveBlocksEquation_Builder *) [[TuxkidsTuxblocksCoreSolveBlocksEquation_Builder alloc] init]) addLeftWithTuxkidsTuxblocksCoreSolveBlocksBaseBlock:[((TuxkidsTuxblocksCoreSolveBlocksBaseBlock *) nil_chk([((TuxkidsTuxblocksCoreSolveBlocksVariableBlock *) [[TuxkidsTuxblocksCoreSolveBlocksVariableBlock alloc] initWithNSString:@"x"]) plusWithInt:12])) overWithInt:3]])) addLeftWithTuxkidsTuxblocksCoreSolveBlocksBaseBlock:[((TuxkidsTuxblocksCoreSolveBlocksBaseBlock *) nil_chk([((TuxkidsTuxblocksCoreSolveBlocksVariableBlock *) [[TuxkidsTuxblocksCoreSolveBlocksVariableBlock alloc] initWithNSString:@"x"]) timesWithInt:25])) overWithInt:6]])) addRightWithTuxkidsTuxblocksCoreSolveBlocksBaseBlock:[[TuxkidsTuxblocksCoreSolveBlocksNumberBlock alloc] initWithInt:8]])) addRightWithTuxkidsTuxblocksCoreSolveBlocksBaseBlock:[((TuxkidsTuxblocksCoreSolveBlocksVariableBlock *) [[TuxkidsTuxblocksCoreSolveBlocksVariableBlock alloc] initWithNSString:@"x"]) overWithInt:2]])) createEquation] } count:4 type:[IOSClass classWithClass:[TuxkidsTuxblocksCoreSolveBlocksEquation class]]];
    background__ = [[TuxkidsTuxblocksCoreGameBackgroundSprite alloc] init];
    towerCounts__ = [IOSIntArray arrayWithLength:[TuxkidsTuxblocksCoreDefenseTowerTower towerCount]];
    problems__ = [[JavaUtilArrayList alloc] init];
    [self addItemWithTuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum:[TuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum PeaShooter] withInt:2];
    [self addProblemWithRewardWithTuxkidsTuxblocksCoreDefenseRoundReward:[[TuxkidsTuxblocksCoreDefenseRoundReward alloc] initWithTuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum:[TuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum PeaShooter] withInt:2]];
    [self addProblemWithRewardWithTuxkidsTuxblocksCoreDefenseRoundReward:[[TuxkidsTuxblocksCoreDefenseRoundReward alloc] initWithTuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum:[TuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum PeaShooter] withInt:2]];
    [self addProblemWithRewardWithTuxkidsTuxblocksCoreDefenseRoundReward:[[TuxkidsTuxblocksCoreDefenseRoundReward alloc] initWithTuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum:[TuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum PeaShooter] withInt:2]];
    [self addProblemWithRewardWithTuxkidsTuxblocksCoreDefenseRoundReward:[[TuxkidsTuxblocksCoreDefenseRoundReward alloc] initWithTuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum:[TuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum PeaShooter] withInt:2]];
  }
  return self;
}

- (void)solveProblemWithTuxkidsTuxblocksCoreDefenseSelectProblem:(TuxkidsTuxblocksCoreDefenseSelectProblem *)problem {
  [((id<JavaUtilList>) nil_chk(problems__)) removeWithId:problem];
  [self addRewardWithTuxkidsTuxblocksCoreDefenseRoundReward:[((TuxkidsTuxblocksCoreDefenseSelectProblem *) nil_chk(problem)) reward]];
}

- (void)addRewardWithTuxkidsTuxblocksCoreDefenseRoundReward:(TuxkidsTuxblocksCoreDefenseRoundReward *)reward {
  if (((TuxkidsTuxblocksCoreDefenseRoundReward *) nil_chk(reward)).tower != nil) {
    (*[((IOSIntArray *) nil_chk([self towerCounts])) intRefAtIndex:[((TuxkidsTuxblocksCoreDefenseRoundReward *) nil_chk(reward)).tower index]]) += ((TuxkidsTuxblocksCoreDefenseRoundReward *) nil_chk(reward)).count;
    [self onInventoryChangedWithInt:[((TuxkidsTuxblocksCoreDefenseRoundReward *) nil_chk(reward)).tower index]];
  }
}

- (void)addProblemWithRewardWithTuxkidsTuxblocksCoreDefenseRoundReward:(TuxkidsTuxblocksCoreDefenseRoundReward *)reward {
  TuxkidsTuxblocksCoreSolveBlocksEquation *eq = [((IOSObjectArray *) nil_chk(eqs_)) objectAtIndex:index_++ % (int) [((IOSObjectArray *) nil_chk(eqs_)) count]];
  TuxkidsTuxblocksCoreDefenseSelectProblem *problem = [[TuxkidsTuxblocksCoreDefenseSelectProblem alloc] initWithTuxkidsTuxblocksCoreSolveBlocksEquation:eq withTuxkidsTuxblocksCoreDefenseRoundReward:reward];
  [((id<JavaUtilList>) nil_chk(problems__)) addWithId:problem];
  if (problemAddedListener_ != nil) [problemAddedListener_ onProblemAddedWithTuxkidsTuxblocksCoreDefenseSelectProblem:problem];
}

- (void)addItemWithTuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum:(TuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum *)type
                                                         withInt:(int)count {
  int index = [((TuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum *) nil_chk(type)) index];
  (*[((IOSIntArray *) nil_chk(towerCounts__)) intRefAtIndex:index]) += count;
  [self onInventoryChangedWithInt:index];
}

- (void)onInventoryChangedWithInt:(int)index {
  if (inventoryChangedListener_ != nil) {
    [inventoryChangedListener_ onInventoryChangedWithInt:index withInt:[((IOSIntArray *) nil_chk(towerCounts__)) intAtIndex:index]];
  }
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreGameState *typedCopy = (TuxkidsTuxblocksCoreGameState *) copy;
  typedCopy.towerCounts_ = towerCounts__;
  typedCopy.problems_ = problems__;
  typedCopy.background_ = background__;
  typedCopy.inventoryChangedListener = inventoryChangedListener_;
  typedCopy.problemAddedListener = problemAddedListener_;
  typedCopy.maxSteps = maxSteps_;
  typedCopy.minSteps = minSteps_;
  typedCopy.index = index_;
  typedCopy.eqs = eqs_;
}

@end
