//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/game/ScreenStack.java
//
//  Created by Thomas on 7/10/13.
//

#import "IOSObjectArray.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/Iterable.h"
#import "java/lang/RuntimeException.h"
#import "java/util/ArrayList.h"
#import "java/util/Iterator.h"
#import "java/util/List.h"
#import "playn/core/Graphics.h"
#import "playn/core/GroupLayer.h"
#import "playn/core/Layer.h"
#import "playn/core/PlayN.h"
#import "playn/core/Pointer.h"
#import "playn/core/util/Clock.h"
#import "tripleplay/game/Log.h"
#import "tripleplay/game/Screen.h"
#import "tripleplay/game/ScreenStack.h"
#import "tripleplay/game/trans/FlipTransition.h"
#import "tripleplay/game/trans/PageTurnTransition.h"
#import "tripleplay/game/trans/SlideTransition.h"
#import "tripleplay/util/Logger.h"

@implementation TripleplayGameScreenStack

static id<TripleplayGameScreenStack_Transition> TripleplayGameScreenStack_NOOP_;

@synthesize originX = originX_;
@synthesize originY = originY_;
@synthesize _transitor = _transitor_;
@synthesize _screens = _screens_;

+ (id<TripleplayGameScreenStack_Transition>)NOOP {
  return TripleplayGameScreenStack_NOOP_;
}

- (TripleplayGameTransSlideTransition *)slide {
  return [[TripleplayGameTransSlideTransition alloc] initWithTripleplayGameScreenStack:self];
}

- (TripleplayGameTransPageTurnTransition *)pageTurn {
  return [[TripleplayGameTransPageTurnTransition alloc] init];
}

- (TripleplayGameTransFlipTransition *)flip {
  return [[TripleplayGameTransFlipTransition alloc] init];
}

- (void)pushWithTripleplayGameScreen:(TripleplayGameScreen *)screen {
  [self pushWithTripleplayGameScreen:screen withTripleplayGameScreenStack_Transition:[self defaultPushTransition]];
}

- (void)pushWithTripleplayGameScreen:(TripleplayGameScreen *)screen
withTripleplayGameScreenStack_Transition:(id<TripleplayGameScreenStack_Transition>)trans {
  if ([((id<JavaUtilList>) NIL_CHK(_screens_)) isEmpty]) {
    [self addAndShowWithTripleplayGameScreen:screen];
  }
  else {
    TripleplayGameScreen *otop = [self top];
    [self transitionWithTripleplayGameScreenStack_Transitor:[[TripleplayGameScreenStack_$2 alloc] initWithTripleplayGameScreenStack:self withTripleplayGameScreen:otop withTripleplayGameScreen:screen withTripleplayGameScreenStack_Transition:trans withTripleplayGameScreen:otop]];
  }
}

- (void)pushWithJavaLangIterable:(id<JavaLangIterable>)screens {
  [self pushWithJavaLangIterable:screens withTripleplayGameScreenStack_Transition:[self defaultPushTransition]];
}

- (void)pushWithJavaLangIterable:(id<JavaLangIterable>)screens
withTripleplayGameScreenStack_Transition:(id<TripleplayGameScreenStack_Transition>)trans {
  if (![((id<JavaUtilIterator>) ((id<JavaUtilIterator>) [((id<JavaLangIterable>) NIL_CHK(screens)) iterator])) hasNext]) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Cannot push empty list of screens."];
  }
  if ([((id<JavaUtilList>) NIL_CHK(_screens_)) isEmpty]) {
    {
      id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaLangIterable>) NIL_CHK(screens)) iterator]);
      while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
        TripleplayGameScreen *screen = ((TripleplayGameScreen *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
        [self addWithTripleplayGameScreen:screen];
      }
    }
    [self justShowWithTripleplayGameScreen:[self top]];
  }
  else {
    TripleplayGameScreen *otop = [self top];
    TripleplayGameScreen *last = nil;
    {
      id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaLangIterable>) NIL_CHK(screens)) iterator]);
      while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
        TripleplayGameScreen *screen = ((TripleplayGameScreen *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
        if (last != nil) [self addWithTripleplayGameScreen:last];
        last = screen;
      }
    }
    [self transitionWithTripleplayGameScreenStack_Transitor:[[TripleplayGameScreenStack_$3 alloc] initWithTripleplayGameScreenStack:self withTripleplayGameScreen:otop withTripleplayGameScreen:last withTripleplayGameScreenStack_Transition:trans withTripleplayGameScreen:otop]];
  }
}

- (void)popToWithTripleplayGameScreen:(TripleplayGameScreen *)newTopScreen {
  [self popToWithTripleplayGameScreen:newTopScreen withTripleplayGameScreenStack_Transition:[self defaultPopTransition]];
}

- (void)popToWithTripleplayGameScreen:(TripleplayGameScreen *)newTopScreen
withTripleplayGameScreenStack_Transition:(id<TripleplayGameScreenStack_Transition>)trans {
  if ([self top] == newTopScreen) return;
  while ([((id<JavaUtilList>) NIL_CHK(_screens_)) size] > 1 && ((TripleplayGameScreen *) [((id<JavaUtilList>) NIL_CHK(_screens_)) getWithInt:1]) != newTopScreen) {
    [self justRemoveWithTripleplayGameScreen:((TripleplayGameScreen *) [((id<JavaUtilList>) NIL_CHK(_screens_)) getWithInt:1])];
  }
  [self removeWithTripleplayGameScreen:[self top] withTripleplayGameScreenStack_Transition:trans];
}

- (void)replaceWithTripleplayGameScreen:(TripleplayGameScreen *)screen {
  [self replaceWithTripleplayGameScreen:screen withTripleplayGameScreenStack_Transition:[self defaultPushTransition]];
}

- (void)replaceWithTripleplayGameScreen:(TripleplayGameScreen *)screen
withTripleplayGameScreenStack_Transition:(id<TripleplayGameScreenStack_Transition>)trans {
  if ([((id<JavaUtilList>) NIL_CHK(_screens_)) isEmpty]) {
    [self addAndShowWithTripleplayGameScreen:screen];
  }
  else {
    TripleplayGameScreen *otop = ((TripleplayGameScreen *) [((id<JavaUtilList>) NIL_CHK(_screens_)) removeWithInt:0]);
    [self transitionWithTripleplayGameScreenStack_Transitor:[[TripleplayGameScreenStack_$4 alloc] initWithTripleplayGameScreenStack:self withTripleplayGameScreen:otop withTripleplayGameScreen:screen withTripleplayGameScreenStack_Transition:trans withTripleplayGameScreen:otop]];
  }
}

- (BOOL)removeWithTripleplayGameScreen:(TripleplayGameScreen *)screen {
  return [self removeWithTripleplayGameScreen:screen withTripleplayGameScreenStack_Transition:[self defaultPopTransition]];
}

- (BOOL)removeWithTripleplayGameScreen:(TripleplayGameScreen *)screen
withTripleplayGameScreenStack_Transition:(id<TripleplayGameScreenStack_Transition>)trans {
  if ([self top] != screen) return [self justRemoveWithTripleplayGameScreen:screen];
  if ([((id<JavaUtilList>) NIL_CHK(_screens_)) size] > 1) {
    TripleplayGameScreen *otop = ((TripleplayGameScreen *) [((id<JavaUtilList>) NIL_CHK(_screens_)) removeWithInt:0]);
    [self transitionWithTripleplayGameScreenStack_Transitor:[[TripleplayGameScreenStack_$5 alloc] initWithTripleplayGameScreenStack:self withTripleplayGameScreen:otop withTripleplayGameScreen:[self top] withTripleplayGameScreenStack_Transition:trans withTripleplayGameScreen:otop]];
  }
  else {
    [self hideWithTripleplayGameScreen:screen];
    [self justRemoveWithTripleplayGameScreen:screen];
  }
  return YES;
}

- (void)removeWithTripleplayGameScreenStack_Predicate:(id<TripleplayGameScreenStack_Predicate>)pred {
  [self removeWithTripleplayGameScreenStack_Predicate:pred withTripleplayGameScreenStack_Transition:[self defaultPopTransition]];
}

- (void)removeWithTripleplayGameScreenStack_Predicate:(id<TripleplayGameScreenStack_Predicate>)pred
             withTripleplayGameScreenStack_Transition:(id<TripleplayGameScreenStack_Transition>)trans {
  if ([((id<JavaUtilList>) NIL_CHK(_screens_)) size] > 1) {
    id<JavaUtilIterator> iter = ((id<JavaUtilIterator>) [((id<JavaUtilList>) NIL_CHK(_screens_)) iterator]);
    (void) [((id<JavaUtilIterator>) NIL_CHK(iter)) next];
    while ([((id<JavaUtilIterator>) NIL_CHK(iter)) hasNext]) {
      TripleplayGameScreen *screen = ((TripleplayGameScreen *) [((id<JavaUtilIterator>) NIL_CHK(iter)) next]);
      if ([((id<TripleplayGameScreenStack_Predicate>) NIL_CHK(pred)) applyWithTripleplayGameScreen:screen]) {
        [((id<JavaUtilIterator>) NIL_CHK(iter)) remove];
        [self wasRemovedWithTripleplayGameScreen:screen];
      }
    }
  }
  if ([((id<JavaUtilList>) NIL_CHK(_screens_)) size] > 0 && [((id<TripleplayGameScreenStack_Predicate>) NIL_CHK(pred)) applyWithTripleplayGameScreen:[self top]]) [self removeWithTripleplayGameScreen:[self top] withTripleplayGameScreenStack_Transition:trans];
}

- (TripleplayGameScreen *)top {
  return [((id<JavaUtilList>) NIL_CHK(_screens_)) isEmpty] ? nil : ((TripleplayGameScreen *) [((id<JavaUtilList>) NIL_CHK(_screens_)) getWithInt:0]);
}

- (TripleplayGameScreen *)findWithTripleplayGameScreenStack_Predicate:(id<TripleplayGameScreenStack_Predicate>)pred {
  {
    id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilList>) NIL_CHK(_screens_)) iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
      TripleplayGameScreen *screen = ((TripleplayGameScreen *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
      if ([((id<TripleplayGameScreenStack_Predicate>) NIL_CHK(pred)) applyWithTripleplayGameScreen:screen]) return screen;
    }
  }
  return nil;
}

- (BOOL)isTransiting {
  return _transitor_ != nil;
}

- (int)size {
  return [((id<JavaUtilList>) NIL_CHK(_screens_)) size];
}

- (void)updateWithInt:(int)delta {
  if (_transitor_ != nil) [_transitor_ updateWithInt:delta];
  else if (![((id<JavaUtilList>) NIL_CHK(_screens_)) isEmpty]) [[self top] updateWithInt:delta];
}

- (void)paintWithPlaynCoreUtilClock:(id<PlaynCoreUtilClock>)clock {
  if (_transitor_ != nil) [_transitor_ paintWithPlaynCoreUtilClock:clock];
  else if (![((id<JavaUtilList>) NIL_CHK(_screens_)) isEmpty]) [[self top] paintWithPlaynCoreUtilClock:clock];
}

- (id<TripleplayGameScreenStack_Transition>)defaultPushTransition {
  return TripleplayGameScreenStack_NOOP_;
}

- (id<TripleplayGameScreenStack_Transition>)defaultPopTransition {
  return TripleplayGameScreenStack_NOOP_;
}

- (void)addWithTripleplayGameScreen:(TripleplayGameScreen *)screen {
  if ([((id<JavaUtilList>) NIL_CHK(_screens_)) containsWithId:screen]) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Cannot add screen to stack twice."];
  }
  [((id<JavaUtilList>) NIL_CHK(_screens_)) addWithInt:0 withId:screen];
  @try {
    [((TripleplayGameScreen *) NIL_CHK(screen)) wasAdded];
  }
  @catch (JavaLangRuntimeException *e) {
    [self handleErrorWithJavaLangRuntimeException:e];
  }
}

- (void)addAndShowWithTripleplayGameScreen:(TripleplayGameScreen *)screen {
  [self addWithTripleplayGameScreen:screen];
  [self justShowWithTripleplayGameScreen:screen];
}

- (void)justShowWithTripleplayGameScreen:(TripleplayGameScreen *)screen {
  [((id<PlaynCoreGroupLayer>) [((id<PlaynCoreGraphics>) [PlaynCorePlayN graphics]) rootLayer]) addAtWithPlaynCoreLayer:((TripleplayGameScreen *) NIL_CHK(screen)).layer withFloat:originX_ withFloat:originY_];
  @try {
    [((TripleplayGameScreen *) NIL_CHK(screen)) wasShown];
  }
  @catch (JavaLangRuntimeException *e) {
    [self handleErrorWithJavaLangRuntimeException:e];
  }
}

- (void)hideWithTripleplayGameScreen:(TripleplayGameScreen *)screen {
  [((id<PlaynCoreGroupLayer>) [((id<PlaynCoreGraphics>) [PlaynCorePlayN graphics]) rootLayer]) removeWithPlaynCoreLayer:((TripleplayGameScreen *) NIL_CHK(screen)).layer];
  @try {
    [((TripleplayGameScreen *) NIL_CHK(screen)) wasHidden];
  }
  @catch (JavaLangRuntimeException *e) {
    [self handleErrorWithJavaLangRuntimeException:e];
  }
}

- (BOOL)justRemoveWithTripleplayGameScreen:(TripleplayGameScreen *)screen {
  BOOL removed = [((id<JavaUtilList>) NIL_CHK(_screens_)) removeWithId:screen];
  if (removed) [self wasRemovedWithTripleplayGameScreen:screen];
  return removed;
}

- (void)wasRemovedWithTripleplayGameScreen:(TripleplayGameScreen *)screen {
  @try {
    [((TripleplayGameScreen *) NIL_CHK(screen)) wasRemoved];
  }
  @catch (JavaLangRuntimeException *e) {
    [self handleErrorWithJavaLangRuntimeException:e];
  }
}

- (void)transitionWithTripleplayGameScreenStack_Transitor:(TripleplayGameScreenStack_Transitor *)transitor {
  if (_transitor_ != nil) [_transitor_ complete];
  _transitor_ = transitor;
  [((TripleplayGameScreenStack_Transitor *) NIL_CHK(_transitor_)) init__];
}

- (void)handleErrorWithJavaLangRuntimeException:(JavaLangRuntimeException *)error {
  [((TripleplayUtilLogger *) NIL_CHK([TripleplayGameLog log])) warningWithNSString:@"Screen choked" withNSObjectArray:[IOSObjectArray arrayWithType:[IOSClass classWithClass:[NSObject class]] count:1, error ]];
}

- (id)init {
  if ((self = [super init])) {
    originX_ = 0;
    originY_ = 0;
    _screens_ = [[JavaUtilArrayList alloc] init];
  }
  return self;
}

+ (void)initialize {
  if (self == [TripleplayGameScreenStack class]) {
    TripleplayGameScreenStack_NOOP_ = [[TripleplayGameScreenStack_$1 alloc] init];
  }
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayGameScreenStack *typedCopy = (TripleplayGameScreenStack *) copy;
  typedCopy.originX = originX_;
  typedCopy.originY = originY_;
  typedCopy._transitor = _transitor_;
  typedCopy._screens = _screens_;
}

@end

static TripleplayGameScreenStack_Transition_DirEnum *TripleplayGameScreenStack_Transition_DirEnum_UP;
static TripleplayGameScreenStack_Transition_DirEnum *TripleplayGameScreenStack_Transition_DirEnum_DOWN;
static TripleplayGameScreenStack_Transition_DirEnum *TripleplayGameScreenStack_Transition_DirEnum_LEFT;
static TripleplayGameScreenStack_Transition_DirEnum *TripleplayGameScreenStack_Transition_DirEnum_RIGHT;
IOSObjectArray *TripleplayGameScreenStack_Transition_DirEnum_values;

@implementation TripleplayGameScreenStack_Transition_DirEnum

+ (TripleplayGameScreenStack_Transition_DirEnum *)UP {
  return TripleplayGameScreenStack_Transition_DirEnum_UP;
}
+ (TripleplayGameScreenStack_Transition_DirEnum *)DOWN {
  return TripleplayGameScreenStack_Transition_DirEnum_DOWN;
}
+ (TripleplayGameScreenStack_Transition_DirEnum *)LEFT {
  return TripleplayGameScreenStack_Transition_DirEnum_LEFT;
}
+ (TripleplayGameScreenStack_Transition_DirEnum *)RIGHT {
  return TripleplayGameScreenStack_Transition_DirEnum_RIGHT;
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

- (id)initWithNSString:(NSString *)name withInt:(int)ordinal {
  return [super initWithNSString:name withInt:ordinal];
}

+ (void)initialize {
  if (self == [TripleplayGameScreenStack_Transition_DirEnum class]) {
    TripleplayGameScreenStack_Transition_DirEnum_UP = [[TripleplayGameScreenStack_Transition_DirEnum alloc] initWithNSString:@"UP" withInt:0];
    TripleplayGameScreenStack_Transition_DirEnum_DOWN = [[TripleplayGameScreenStack_Transition_DirEnum alloc] initWithNSString:@"DOWN" withInt:1];
    TripleplayGameScreenStack_Transition_DirEnum_LEFT = [[TripleplayGameScreenStack_Transition_DirEnum alloc] initWithNSString:@"LEFT" withInt:2];
    TripleplayGameScreenStack_Transition_DirEnum_RIGHT = [[TripleplayGameScreenStack_Transition_DirEnum alloc] initWithNSString:@"RIGHT" withInt:3];
    TripleplayGameScreenStack_Transition_DirEnum_values = [[IOSObjectArray alloc] initWithObjects:(id[]){ TripleplayGameScreenStack_Transition_DirEnum_UP, TripleplayGameScreenStack_Transition_DirEnum_DOWN, TripleplayGameScreenStack_Transition_DirEnum_LEFT, TripleplayGameScreenStack_Transition_DirEnum_RIGHT, nil } count:4 type:[IOSClass classWithClass:[TripleplayGameScreenStack_Transition_DirEnum class]]];
  }
}

+ (IOSObjectArray *)values {
  return [IOSObjectArray arrayWithArray:TripleplayGameScreenStack_Transition_DirEnum_values];
}

+ (TripleplayGameScreenStack_Transition_DirEnum *)valueOfWithNSString:(NSString *)name {
  for (int i = 0; i < [TripleplayGameScreenStack_Transition_DirEnum_values count]; i++) {
    TripleplayGameScreenStack_Transition_DirEnum *e = [TripleplayGameScreenStack_Transition_DirEnum_values objectAtIndex:i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

@end
@implementation TripleplayGameScreenStack_$1

- (void)init__WithTripleplayGameScreen:(TripleplayGameScreen *)oscreen
              withTripleplayGameScreen:(TripleplayGameScreen *)nscreen OBJC_METHOD_FAMILY_NONE {
}

- (BOOL)updateWithTripleplayGameScreen:(TripleplayGameScreen *)oscreen
              withTripleplayGameScreen:(TripleplayGameScreen *)nscreen
                             withFloat:(float)elapsed {
  return YES;
}

- (void)completeWithTripleplayGameScreen:(TripleplayGameScreen *)oscreen
                withTripleplayGameScreen:(TripleplayGameScreen *)nscreen {
}

- (id)init {
  return [super init];
}

@end
@implementation TripleplayGameScreenStack_Transitor

@synthesize this$0 = this$0_;
@synthesize _oscreen = _oscreen_;
@synthesize _nscreen = _nscreen_;
@synthesize _trans = _trans_;
@synthesize _elapsed = _elapsed_;
@synthesize _complete = _complete_;

- (id)initWithTripleplayGameScreenStack:(TripleplayGameScreenStack *)outer$
               withTripleplayGameScreen:(TripleplayGameScreen *)oscreen
               withTripleplayGameScreen:(TripleplayGameScreen *)nscreen
withTripleplayGameScreenStack_Transition:(id<TripleplayGameScreenStack_Transition>)trans {
  if ((self = [super init])) {
    this$0_ = outer$;
    _oscreen_ = oscreen;
    _nscreen_ = nscreen;
    _trans_ = trans;
  }
  return self;
}

- (void)init__ OBJC_METHOD_FAMILY_NONE {
  [((id<TripleplayGameScreenStack_Transition>) NIL_CHK(_trans_)) init__WithTripleplayGameScreen:_oscreen_ withTripleplayGameScreen:_nscreen_];
  [((id<PlaynCorePointer>) [PlaynCorePlayN pointer]) setEnabledWithBOOL:NO];
  [((TripleplayGameScreen *) NIL_CHK(_oscreen_)) hideTransitionStarted];
  [self showNewScreen];
}

- (void)updateWithInt:(int)delta {
  [((TripleplayGameScreen *) NIL_CHK(_oscreen_)) updateWithInt:delta];
  [((TripleplayGameScreen *) NIL_CHK(_nscreen_)) updateWithInt:delta];
  if (_complete_) [self complete];
}

- (void)paintWithPlaynCoreUtilClock:(id<PlaynCoreUtilClock>)clock {
  [((TripleplayGameScreen *) NIL_CHK(_oscreen_)) paintWithPlaynCoreUtilClock:clock];
  [((TripleplayGameScreen *) NIL_CHK(_nscreen_)) paintWithPlaynCoreUtilClock:clock];
  _complete_ = [((id<TripleplayGameScreenStack_Transition>) NIL_CHK(_trans_)) updateWithTripleplayGameScreen:_oscreen_ withTripleplayGameScreen:_nscreen_ withFloat:_elapsed_ += [((id<PlaynCoreUtilClock>) NIL_CHK(clock)) dt]];
}

- (void)complete {
  this$0_._transitor = nil;
  [((id<TripleplayGameScreenStack_Transition>) NIL_CHK(_trans_)) completeWithTripleplayGameScreen:_oscreen_ withTripleplayGameScreen:_nscreen_];
  (void) [((id<PlaynCoreGroupLayer>) NIL_CHK(_nscreen_.layer)) setTranslationWithFloat:this$0_.originX withFloat:this$0_.originY];
  [((TripleplayGameScreen *) NIL_CHK(_nscreen_)) showTransitionCompleted];
  [((id<PlaynCorePointer>) [PlaynCorePlayN pointer]) setEnabledWithBOOL:YES];
  [self onComplete];
}

- (void)showNewScreen {
  [this$0_ addAndShowWithTripleplayGameScreen:_nscreen_];
}

- (void)onComplete {
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayGameScreenStack_Transitor *typedCopy = (TripleplayGameScreenStack_Transitor *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy._oscreen = _oscreen_;
  typedCopy._nscreen = _nscreen_;
  typedCopy._trans = _trans_;
  typedCopy._elapsed = _elapsed_;
  typedCopy._complete = _complete_;
}

@end
@implementation TripleplayGameScreenStack_$2

@synthesize this$1 = this$1_;
@synthesize val$otop = val$otop_;

- (void)onComplete {
  [this$1_ hideWithTripleplayGameScreen:val$otop_];
}

- (id)initWithTripleplayGameScreenStack:(TripleplayGameScreenStack *)outer$
               withTripleplayGameScreen:(TripleplayGameScreen *)arg$0
               withTripleplayGameScreen:(TripleplayGameScreen *)arg$1
withTripleplayGameScreenStack_Transition:(id<TripleplayGameScreenStack_Transition>)arg$2
               withTripleplayGameScreen:(TripleplayGameScreen *)capture$0 {
  if ((self = [super initWithTripleplayGameScreenStack:outer$ withTripleplayGameScreen:arg$0 withTripleplayGameScreen:arg$1 withTripleplayGameScreenStack_Transition:arg$2])) {
    this$1_ = outer$;
    val$otop_ = capture$0;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayGameScreenStack_$2 *typedCopy = (TripleplayGameScreenStack_$2 *) copy;
  typedCopy.this$1 = this$1_;
  typedCopy.val$otop = val$otop_;
}

@end
@implementation TripleplayGameScreenStack_$3

@synthesize this$1 = this$1_;
@synthesize val$otop = val$otop_;

- (void)onComplete {
  [this$1_ hideWithTripleplayGameScreen:val$otop_];
}

- (id)initWithTripleplayGameScreenStack:(TripleplayGameScreenStack *)outer$
               withTripleplayGameScreen:(TripleplayGameScreen *)arg$0
               withTripleplayGameScreen:(TripleplayGameScreen *)arg$1
withTripleplayGameScreenStack_Transition:(id<TripleplayGameScreenStack_Transition>)arg$2
               withTripleplayGameScreen:(TripleplayGameScreen *)capture$0 {
  if ((self = [super initWithTripleplayGameScreenStack:outer$ withTripleplayGameScreen:arg$0 withTripleplayGameScreen:arg$1 withTripleplayGameScreenStack_Transition:arg$2])) {
    this$1_ = outer$;
    val$otop_ = capture$0;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayGameScreenStack_$3 *typedCopy = (TripleplayGameScreenStack_$3 *) copy;
  typedCopy.this$1 = this$1_;
  typedCopy.val$otop = val$otop_;
}

@end
@implementation TripleplayGameScreenStack_$4

@synthesize this$1 = this$1_;
@synthesize val$otop = val$otop_;

- (void)onComplete {
  [this$1_ hideWithTripleplayGameScreen:val$otop_];
  [this$1_ wasRemovedWithTripleplayGameScreen:val$otop_];
}

- (id)initWithTripleplayGameScreenStack:(TripleplayGameScreenStack *)outer$
               withTripleplayGameScreen:(TripleplayGameScreen *)arg$0
               withTripleplayGameScreen:(TripleplayGameScreen *)arg$1
withTripleplayGameScreenStack_Transition:(id<TripleplayGameScreenStack_Transition>)arg$2
               withTripleplayGameScreen:(TripleplayGameScreen *)capture$0 {
  if ((self = [super initWithTripleplayGameScreenStack:outer$ withTripleplayGameScreen:arg$0 withTripleplayGameScreen:arg$1 withTripleplayGameScreenStack_Transition:arg$2])) {
    this$1_ = outer$;
    val$otop_ = capture$0;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayGameScreenStack_$4 *typedCopy = (TripleplayGameScreenStack_$4 *) copy;
  typedCopy.this$1 = this$1_;
  typedCopy.val$otop = val$otop_;
}

@end
@implementation TripleplayGameScreenStack_Untransitor

@synthesize this$1 = this$1_;

- (id)initWithTripleplayGameScreenStack:(TripleplayGameScreenStack *)outer$
               withTripleplayGameScreen:(TripleplayGameScreen *)oscreen
               withTripleplayGameScreen:(TripleplayGameScreen *)nscreen
withTripleplayGameScreenStack_Transition:(id<TripleplayGameScreenStack_Transition>)trans {
  if ((self = [super initWithTripleplayGameScreenStack:outer$ withTripleplayGameScreen:oscreen withTripleplayGameScreen:nscreen withTripleplayGameScreenStack_Transition:trans])) {
    this$1_ = outer$;
  }
  return self;
}

- (void)showNewScreen {
  [this$1_ justShowWithTripleplayGameScreen:_nscreen_];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayGameScreenStack_Untransitor *typedCopy = (TripleplayGameScreenStack_Untransitor *) copy;
  typedCopy.this$1 = this$1_;
}

@end
@implementation TripleplayGameScreenStack_$5

@synthesize this$2 = this$2_;
@synthesize val$otop = val$otop_;

- (void)onComplete {
  [this$2_ hideWithTripleplayGameScreen:val$otop_];
  [this$2_ wasRemovedWithTripleplayGameScreen:val$otop_];
}

- (id)initWithTripleplayGameScreenStack:(TripleplayGameScreenStack *)outer$
               withTripleplayGameScreen:(TripleplayGameScreen *)arg$0
               withTripleplayGameScreen:(TripleplayGameScreen *)arg$1
withTripleplayGameScreenStack_Transition:(id<TripleplayGameScreenStack_Transition>)arg$2
               withTripleplayGameScreen:(TripleplayGameScreen *)capture$0 {
  if ((self = [super initWithTripleplayGameScreenStack:outer$ withTripleplayGameScreen:arg$0 withTripleplayGameScreen:arg$1 withTripleplayGameScreenStack_Transition:arg$2])) {
    this$2_ = outer$;
    val$otop_ = capture$0;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayGameScreenStack_$5 *typedCopy = (TripleplayGameScreenStack_$5 *) copy;
  typedCopy.this$2 = this$2_;
  typedCopy.val$otop = val$otop_;
}

@end
