//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/game/ScreenStack.java
//
//  Created by Thomas on 7/10/13.
//

@class JavaLangRuntimeException;
@class TripleplayGameScreen;
@class TripleplayGameScreenStack_Transitor;
@class TripleplayGameTransFlipTransition;
@class TripleplayGameTransPageTurnTransition;
@class TripleplayGameTransSlideTransition;
@protocol JavaLangIterable;
@protocol JavaUtilList;
@protocol PlaynCoreUtilClock;
@protocol TripleplayGameScreenStack_Predicate;
@protocol TripleplayGameScreenStack_Transition;

#import "JreEmulation.h"
#import "java/lang/Enum.h"
#import "tripleplay/util/Paintable.h"

@interface TripleplayGameScreenStack : NSObject < TripleplayUtilPaintable > {
 @public
  float originX_;
  float originY_;
  TripleplayGameScreenStack_Transitor *_transitor_;
  id<JavaUtilList> _screens_;
}

@property (nonatomic, assign) float originX;
@property (nonatomic, assign) float originY;
@property (nonatomic, strong) TripleplayGameScreenStack_Transitor *_transitor;
@property (nonatomic, strong) id<JavaUtilList> _screens;

+ (id<TripleplayGameScreenStack_Transition>)NOOP;
- (TripleplayGameTransSlideTransition *)slide;
- (TripleplayGameTransPageTurnTransition *)pageTurn;
- (TripleplayGameTransFlipTransition *)flip;
- (void)pushWithTripleplayGameScreen:(TripleplayGameScreen *)screen;
- (void)pushWithTripleplayGameScreen:(TripleplayGameScreen *)screen
withTripleplayGameScreenStack_Transition:(id<TripleplayGameScreenStack_Transition>)trans;
- (void)pushWithJavaLangIterable:(id<JavaLangIterable>)screens;
- (void)pushWithJavaLangIterable:(id<JavaLangIterable>)screens
withTripleplayGameScreenStack_Transition:(id<TripleplayGameScreenStack_Transition>)trans;
- (void)popToWithTripleplayGameScreen:(TripleplayGameScreen *)newTopScreen;
- (void)popToWithTripleplayGameScreen:(TripleplayGameScreen *)newTopScreen
withTripleplayGameScreenStack_Transition:(id<TripleplayGameScreenStack_Transition>)trans;
- (void)replaceWithTripleplayGameScreen:(TripleplayGameScreen *)screen;
- (void)replaceWithTripleplayGameScreen:(TripleplayGameScreen *)screen
withTripleplayGameScreenStack_Transition:(id<TripleplayGameScreenStack_Transition>)trans;
- (BOOL)removeWithTripleplayGameScreen:(TripleplayGameScreen *)screen;
- (BOOL)removeWithTripleplayGameScreen:(TripleplayGameScreen *)screen
withTripleplayGameScreenStack_Transition:(id<TripleplayGameScreenStack_Transition>)trans;
- (void)removeWithTripleplayGameScreenStack_Predicate:(id<TripleplayGameScreenStack_Predicate>)pred;
- (void)removeWithTripleplayGameScreenStack_Predicate:(id<TripleplayGameScreenStack_Predicate>)pred
             withTripleplayGameScreenStack_Transition:(id<TripleplayGameScreenStack_Transition>)trans;
- (TripleplayGameScreen *)top;
- (TripleplayGameScreen *)findWithTripleplayGameScreenStack_Predicate:(id<TripleplayGameScreenStack_Predicate>)pred;
- (BOOL)isTransiting;
- (int)size;
- (void)updateWithInt:(int)delta;
- (void)paintWithPlaynCoreUtilClock:(id<PlaynCoreUtilClock>)clock;
- (id<TripleplayGameScreenStack_Transition>)defaultPushTransition;
- (id<TripleplayGameScreenStack_Transition>)defaultPopTransition;
- (void)addWithTripleplayGameScreen:(TripleplayGameScreen *)screen;
- (void)addAndShowWithTripleplayGameScreen:(TripleplayGameScreen *)screen;
- (void)justShowWithTripleplayGameScreen:(TripleplayGameScreen *)screen;
- (void)hideWithTripleplayGameScreen:(TripleplayGameScreen *)screen;
- (BOOL)justRemoveWithTripleplayGameScreen:(TripleplayGameScreen *)screen;
- (void)wasRemovedWithTripleplayGameScreen:(TripleplayGameScreen *)screen;
- (void)transitionWithTripleplayGameScreenStack_Transitor:(TripleplayGameScreenStack_Transitor *)transitor;
- (void)handleErrorWithJavaLangRuntimeException:(JavaLangRuntimeException *)error;
- (id)init;
@end

typedef enum {
  TripleplayGameScreenStack_Transition_Dir_UP = 0,
  TripleplayGameScreenStack_Transition_Dir_DOWN = 1,
  TripleplayGameScreenStack_Transition_Dir_LEFT = 2,
  TripleplayGameScreenStack_Transition_Dir_RIGHT = 3,
} TripleplayGameScreenStack_Transition_Dir;

@interface TripleplayGameScreenStack_Transition_DirEnum : JavaLangEnum < NSCopying > {
}
+ (TripleplayGameScreenStack_Transition_DirEnum *)UP;
+ (TripleplayGameScreenStack_Transition_DirEnum *)DOWN;
+ (TripleplayGameScreenStack_Transition_DirEnum *)LEFT;
+ (TripleplayGameScreenStack_Transition_DirEnum *)RIGHT;
+ (IOSObjectArray *)values;
+ (TripleplayGameScreenStack_Transition_DirEnum *)valueOfWithNSString:(NSString *)name;
- (id)copyWithZone:(NSZone *)zone;
- (id)initWithNSString:(NSString *)name withInt:(int)ordinal;
@end

@protocol TripleplayGameScreenStack_Predicate < NSObject >
- (BOOL)applyWithTripleplayGameScreen:(TripleplayGameScreen *)screen;
@end

@protocol TripleplayGameScreenStack_Transition < NSObject >
- (void)init__WithTripleplayGameScreen:(TripleplayGameScreen *)oscreen
              withTripleplayGameScreen:(TripleplayGameScreen *)nscreen OBJC_METHOD_FAMILY_NONE;
- (BOOL)updateWithTripleplayGameScreen:(TripleplayGameScreen *)oscreen
              withTripleplayGameScreen:(TripleplayGameScreen *)nscreen
                             withFloat:(float)elapsed;
- (void)completeWithTripleplayGameScreen:(TripleplayGameScreen *)oscreen
                withTripleplayGameScreen:(TripleplayGameScreen *)nscreen;
@end

@interface TripleplayGameScreenStack_$1 : NSObject < TripleplayGameScreenStack_Transition > {
}

- (void)init__WithTripleplayGameScreen:(TripleplayGameScreen *)oscreen
              withTripleplayGameScreen:(TripleplayGameScreen *)nscreen OBJC_METHOD_FAMILY_NONE;
- (BOOL)updateWithTripleplayGameScreen:(TripleplayGameScreen *)oscreen
              withTripleplayGameScreen:(TripleplayGameScreen *)nscreen
                             withFloat:(float)elapsed;
- (void)completeWithTripleplayGameScreen:(TripleplayGameScreen *)oscreen
                withTripleplayGameScreen:(TripleplayGameScreen *)nscreen;
- (id)init;
@end

@interface TripleplayGameScreenStack_Transitor : NSObject {
 @public
  TripleplayGameScreenStack *this$0_;
  TripleplayGameScreen *_oscreen_, *_nscreen_;
  id<TripleplayGameScreenStack_Transition> _trans_;
  float _elapsed_;
  BOOL _complete_;
}

@property (nonatomic, strong) TripleplayGameScreenStack *this$0;
@property (nonatomic, strong) TripleplayGameScreen *_oscreen;
@property (nonatomic, strong) TripleplayGameScreen *_nscreen;
@property (nonatomic, strong) id<TripleplayGameScreenStack_Transition> _trans;
@property (nonatomic, assign) float _elapsed;
@property (nonatomic, assign) BOOL _complete;

- (id)initWithTripleplayGameScreenStack:(TripleplayGameScreenStack *)outer$
               withTripleplayGameScreen:(TripleplayGameScreen *)oscreen
               withTripleplayGameScreen:(TripleplayGameScreen *)nscreen
withTripleplayGameScreenStack_Transition:(id<TripleplayGameScreenStack_Transition>)trans;
- (void)init__ OBJC_METHOD_FAMILY_NONE;
- (void)updateWithInt:(int)delta;
- (void)paintWithPlaynCoreUtilClock:(id<PlaynCoreUtilClock>)clock;
- (void)complete;
- (void)showNewScreen;
- (void)onComplete;
@end

@interface TripleplayGameScreenStack_$2 : TripleplayGameScreenStack_Transitor {
 @public
  TripleplayGameScreenStack *this$1_;
  TripleplayGameScreen *val$otop_;
}

@property (nonatomic, strong) TripleplayGameScreenStack *this$1;
@property (nonatomic, strong) TripleplayGameScreen *val$otop;

- (void)onComplete;
- (id)initWithTripleplayGameScreenStack:(TripleplayGameScreenStack *)outer$
               withTripleplayGameScreen:(TripleplayGameScreen *)arg$0
               withTripleplayGameScreen:(TripleplayGameScreen *)arg$1
withTripleplayGameScreenStack_Transition:(id<TripleplayGameScreenStack_Transition>)arg$2
               withTripleplayGameScreen:(TripleplayGameScreen *)capture$0;
@end

@interface TripleplayGameScreenStack_$3 : TripleplayGameScreenStack_Transitor {
 @public
  TripleplayGameScreenStack *this$1_;
  TripleplayGameScreen *val$otop_;
}

@property (nonatomic, strong) TripleplayGameScreenStack *this$1;
@property (nonatomic, strong) TripleplayGameScreen *val$otop;

- (void)onComplete;
- (id)initWithTripleplayGameScreenStack:(TripleplayGameScreenStack *)outer$
               withTripleplayGameScreen:(TripleplayGameScreen *)arg$0
               withTripleplayGameScreen:(TripleplayGameScreen *)arg$1
withTripleplayGameScreenStack_Transition:(id<TripleplayGameScreenStack_Transition>)arg$2
               withTripleplayGameScreen:(TripleplayGameScreen *)capture$0;
@end

@interface TripleplayGameScreenStack_$4 : TripleplayGameScreenStack_Transitor {
 @public
  TripleplayGameScreenStack *this$1_;
  TripleplayGameScreen *val$otop_;
}

@property (nonatomic, strong) TripleplayGameScreenStack *this$1;
@property (nonatomic, strong) TripleplayGameScreen *val$otop;

- (void)onComplete;
- (id)initWithTripleplayGameScreenStack:(TripleplayGameScreenStack *)outer$
               withTripleplayGameScreen:(TripleplayGameScreen *)arg$0
               withTripleplayGameScreen:(TripleplayGameScreen *)arg$1
withTripleplayGameScreenStack_Transition:(id<TripleplayGameScreenStack_Transition>)arg$2
               withTripleplayGameScreen:(TripleplayGameScreen *)capture$0;
@end

@interface TripleplayGameScreenStack_Untransitor : TripleplayGameScreenStack_Transitor {
 @public
  TripleplayGameScreenStack *this$1_;
}

@property (nonatomic, strong) TripleplayGameScreenStack *this$1;

- (id)initWithTripleplayGameScreenStack:(TripleplayGameScreenStack *)outer$
               withTripleplayGameScreen:(TripleplayGameScreen *)oscreen
               withTripleplayGameScreen:(TripleplayGameScreen *)nscreen
withTripleplayGameScreenStack_Transition:(id<TripleplayGameScreenStack_Transition>)trans;
- (void)showNewScreen;
@end

@interface TripleplayGameScreenStack_$5 : TripleplayGameScreenStack_Untransitor {
 @public
  TripleplayGameScreenStack *this$2_;
  TripleplayGameScreen *val$otop_;
}

@property (nonatomic, strong) TripleplayGameScreenStack *this$2;
@property (nonatomic, strong) TripleplayGameScreen *val$otop;

- (void)onComplete;
- (id)initWithTripleplayGameScreenStack:(TripleplayGameScreenStack *)outer$
               withTripleplayGameScreen:(TripleplayGameScreen *)arg$0
               withTripleplayGameScreen:(TripleplayGameScreen *)arg$1
withTripleplayGameScreenStack_Transition:(id<TripleplayGameScreenStack_Transition>)arg$2
               withTripleplayGameScreen:(TripleplayGameScreen *)capture$0;
@end
