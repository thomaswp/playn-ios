//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/defense/round/Level.java
//
//  Created by Thomas on 7/26/13.
//

#ifndef _TuxkidsTuxblocksCoreDefenseRoundLevel_H_
#define _TuxkidsTuxblocksCoreDefenseRoundLevel_H_

@class TuxkidsTuxblocksCoreDefenseWalkerWalker;
@protocol JavaUtilList;

#import "JreEmulation.h"
#include "tuxkids/tuxblocks/core/defense/round/Round.h"

@protocol TuxkidsTuxblocksCoreDefenseRoundLevel_RoundCompletedListener < NSObject, JavaObject >
- (void)onRoundCompletedWithTuxkidsTuxblocksCoreDefenseRoundRound:(TuxkidsTuxblocksCoreDefenseRoundRound *)round;
@end

@interface TuxkidsTuxblocksCoreDefenseRoundLevel : NSObject {
 @public
  id<JavaUtilList> rounds_;
  id<JavaUtilList> waitTimes_;
  id<TuxkidsTuxblocksCoreDefenseRoundLevel_RoundCompletedListener> roundCompletedListener_;
  int timer_;
  TuxkidsTuxblocksCoreDefenseRoundRound *currentRound_;
  int round__;
}

@property (nonatomic, strong) id<JavaUtilList> rounds;
@property (nonatomic, strong) id<JavaUtilList> waitTimes;
@property (nonatomic, strong) id<TuxkidsTuxblocksCoreDefenseRoundLevel_RoundCompletedListener> roundCompletedListener;
@property (nonatomic, assign) int timer;
@property (nonatomic, strong) TuxkidsTuxblocksCoreDefenseRoundRound *currentRound;
@property (nonatomic, assign) int round_;

- (int)round;
- (int)timeUntilNextRound;
- (void)startNextRound;
- (BOOL)duringRound;
- (void)setRoundCompletedListenerWithTuxkidsTuxblocksCoreDefenseRoundLevel_RoundCompletedListener:(id<TuxkidsTuxblocksCoreDefenseRoundLevel_RoundCompletedListener>)roundCompletedListener;
- (void)populateLevel;
- (id)init;
- (void)addRoundWithTuxkidsTuxblocksCoreDefenseRoundRound:(TuxkidsTuxblocksCoreDefenseRoundRound *)round
                                                withFloat:(float)waitTimeSeconds;
- (TuxkidsTuxblocksCoreDefenseWalkerWalker *)updateWithInt:(int)delta;
- (BOOL)finished;
+ (TuxkidsTuxblocksCoreDefenseRoundLevel *)generate;
@end

@interface TuxkidsTuxblocksCoreDefenseRoundLevel_$1 : TuxkidsTuxblocksCoreDefenseRoundLevel {
 @public
  TuxkidsTuxblocksCoreDefenseWalkerWalker *val$basic_;
  TuxkidsTuxblocksCoreDefenseWalkerWalker *val$medium_;
  TuxkidsTuxblocksCoreDefenseWalkerWalker *val$quick_;
  TuxkidsTuxblocksCoreDefenseWalkerWalker *val$hard_;
}

@property (nonatomic, strong) TuxkidsTuxblocksCoreDefenseWalkerWalker *val$basic;
@property (nonatomic, strong) TuxkidsTuxblocksCoreDefenseWalkerWalker *val$medium;
@property (nonatomic, strong) TuxkidsTuxblocksCoreDefenseWalkerWalker *val$quick;
@property (nonatomic, strong) TuxkidsTuxblocksCoreDefenseWalkerWalker *val$hard;

- (void)populateLevel;
- (id)initWithTuxkidsTuxblocksCoreDefenseWalkerWalker:(TuxkidsTuxblocksCoreDefenseWalkerWalker *)capture$0
          withTuxkidsTuxblocksCoreDefenseWalkerWalker:(TuxkidsTuxblocksCoreDefenseWalkerWalker *)capture$1
          withTuxkidsTuxblocksCoreDefenseWalkerWalker:(TuxkidsTuxblocksCoreDefenseWalkerWalker *)capture$2
          withTuxkidsTuxblocksCoreDefenseWalkerWalker:(TuxkidsTuxblocksCoreDefenseWalkerWalker *)capture$3;
@end

@interface TuxkidsTuxblocksCoreDefenseRoundLevel_$1_$1 : TuxkidsTuxblocksCoreDefenseRoundRound {
 @public
  TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *this$0_;
}

@property (nonatomic, strong) TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *this$0;

- (void)populateRound;
- (id)initWithTuxkidsTuxblocksCoreDefenseRoundLevel_$1:(TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *)outer$;
@end

@interface TuxkidsTuxblocksCoreDefenseRoundLevel_$1_$2 : TuxkidsTuxblocksCoreDefenseRoundRound {
 @public
  TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *this$0_;
}

@property (nonatomic, strong) TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *this$0;

- (void)populateRound;
- (id)initWithTuxkidsTuxblocksCoreDefenseRoundLevel_$1:(TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *)outer$;
@end

@interface TuxkidsTuxblocksCoreDefenseRoundLevel_$1_$3 : TuxkidsTuxblocksCoreDefenseRoundRound {
 @public
  TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *this$0_;
}

@property (nonatomic, strong) TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *this$0;

- (void)populateRound;
- (id)initWithTuxkidsTuxblocksCoreDefenseRoundLevel_$1:(TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *)outer$;
@end

@interface TuxkidsTuxblocksCoreDefenseRoundLevel_$1_$4 : TuxkidsTuxblocksCoreDefenseRoundRound {
 @public
  TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *this$0_;
}

@property (nonatomic, strong) TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *this$0;

- (void)populateRound;
- (id)initWithTuxkidsTuxblocksCoreDefenseRoundLevel_$1:(TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *)outer$;
@end

@interface TuxkidsTuxblocksCoreDefenseRoundLevel_$1_$5 : TuxkidsTuxblocksCoreDefenseRoundRound {
 @public
  TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *this$0_;
}

@property (nonatomic, strong) TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *this$0;

- (void)populateRound;
- (id)initWithTuxkidsTuxblocksCoreDefenseRoundLevel_$1:(TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *)outer$;
@end

@interface TuxkidsTuxblocksCoreDefenseRoundLevel_$1_$6 : TuxkidsTuxblocksCoreDefenseRoundRound {
 @public
  TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *this$0_;
}

@property (nonatomic, strong) TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *this$0;

- (void)populateRound;
- (id)initWithTuxkidsTuxblocksCoreDefenseRoundLevel_$1:(TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *)outer$;
@end

@interface TuxkidsTuxblocksCoreDefenseRoundLevel_$1_$7 : TuxkidsTuxblocksCoreDefenseRoundRound {
 @public
  TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *this$0_;
}

@property (nonatomic, strong) TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *this$0;

- (void)populateRound;
- (id)initWithTuxkidsTuxblocksCoreDefenseRoundLevel_$1:(TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *)outer$;
@end

@interface TuxkidsTuxblocksCoreDefenseRoundLevel_$1_$8 : TuxkidsTuxblocksCoreDefenseRoundRound {
 @public
  TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *this$0_;
}

@property (nonatomic, strong) TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *this$0;

- (void)populateRound;
- (id)initWithTuxkidsTuxblocksCoreDefenseRoundLevel_$1:(TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *)outer$;
@end

@interface TuxkidsTuxblocksCoreDefenseRoundLevel_$1_$9 : TuxkidsTuxblocksCoreDefenseRoundRound {
 @public
  TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *this$0_;
}

@property (nonatomic, strong) TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *this$0;

- (void)populateRound;
- (id)initWithTuxkidsTuxblocksCoreDefenseRoundLevel_$1:(TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *)outer$;
@end

@interface TuxkidsTuxblocksCoreDefenseRoundLevel_$1_$10 : TuxkidsTuxblocksCoreDefenseRoundRound {
 @public
  TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *this$0_;
}

@property (nonatomic, strong) TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *this$0;

- (void)populateRound;
- (id)initWithTuxkidsTuxblocksCoreDefenseRoundLevel_$1:(TuxkidsTuxblocksCoreDefenseRoundLevel_$1 *)outer$;
@end

#endif // _TuxkidsTuxblocksCoreDefenseRoundLevel_H_
