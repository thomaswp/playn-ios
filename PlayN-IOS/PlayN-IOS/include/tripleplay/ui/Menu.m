//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/Menu.java
//
//  Created by Thomas on 7/10/13.
//

#import "IOSClass.h"
#import "IOSObjectArray.h"
#import "java/lang/Runnable.h"
#import "java/util/ArrayList.h"
#import "java/util/Iterator.h"
#import "java/util/List.h"
#import "playn/core/Asserts.h"
#import "playn/core/Connection.h"
#import "playn/core/Events.h"
#import "playn/core/GroupLayer.h"
#import "playn/core/Layer.h"
#import "playn/core/Pointer.h"
#import "pythagoras/f/Point.h"
#import "react/Connection.h"
#import "react/Signal.h"
#import "react/SignalView.h"
#import "react/Slot.h"
#import "react/Value.h"
#import "tripleplay/anim/AnimBuilder.h"
#import "tripleplay/anim/Animation.h"
#import "tripleplay/anim/Animator.h"
#import "tripleplay/ui/Element.h"
#import "tripleplay/ui/Elements.h"
#import "tripleplay/ui/Layout.h"
#import "tripleplay/ui/Menu.h"
#import "tripleplay/ui/MenuItem.h"
#import "tripleplay/ui/Selector.h"
#import "tripleplay/ui/Style.h"
#import "tripleplay/ui/Styles.h"

@implementation TripleplayUiMenu

static id<TripleplayUiMenu_AnimFn> TripleplayUiMenu_FADE_IN_;
static id<TripleplayUiMenu_AnimFn> TripleplayUiMenu_FADE_OUT_;
static TripleplayUiStyle * TripleplayUiMenu_OPENER_;
static TripleplayUiStyle * TripleplayUiMenu_CLOSER_;

@synthesize _descendantAdded = _descendantAdded_;
@synthesize _descendantRemoved = _descendantRemoved_;
@synthesize _itemListener = _itemListener_;
@synthesize _deactivated = _deactivated_;
@synthesize _itemTriggered = _itemTriggered_;
@synthesize _selector = _selector_;
@synthesize _items = _items_;
@synthesize _animator = _animator_;
@synthesize _anim = _anim_;
@synthesize _complete = _complete_;
@synthesize _postLayout = _postLayout_;
@synthesize _active = _active_;
@synthesize _pendingDrag = _pendingDrag_;
@synthesize _pendingEnd = _pendingEnd_;

+ (id<TripleplayUiMenu_AnimFn>)FADE_IN {
  return TripleplayUiMenu_FADE_IN_;
}

+ (void)setFADE_IN:(id<TripleplayUiMenu_AnimFn>)FADE_IN {
  TripleplayUiMenu_FADE_IN_ = FADE_IN;
}

+ (id<TripleplayUiMenu_AnimFn>)FADE_OUT {
  return TripleplayUiMenu_FADE_OUT_;
}

+ (void)setFADE_OUT:(id<TripleplayUiMenu_AnimFn>)FADE_OUT {
  TripleplayUiMenu_FADE_OUT_ = FADE_OUT;
}

+ (TripleplayUiStyle *)OPENER {
  return TripleplayUiMenu_OPENER_;
}

+ (void)setOPENER:(TripleplayUiStyle *)OPENER {
  TripleplayUiMenu_OPENER_ = OPENER;
}

+ (TripleplayUiStyle *)CLOSER {
  return TripleplayUiMenu_CLOSER_;
}

+ (void)setCLOSER:(TripleplayUiStyle *)CLOSER {
  TripleplayUiMenu_CLOSER_ = CLOSER;
}

- (id)initTripleplayUiMenuWithTripleplayUiLayout:(TripleplayUiLayout *)layout {
  if ((self = [super initWithTripleplayUiLayout:layout])) {
    _descendantAdded_ = [[TripleplayUiMenu_$7 alloc] initWithTripleplayUiMenu:self];
    _descendantRemoved_ = [[TripleplayUiMenu_$8 alloc] initWithTripleplayUiMenu:self];
    _itemListener_ = [[TripleplayUiMenu_$9 alloc] initWithTripleplayUiMenu:self];
    _deactivated_ = ((ReactSignal *) [ReactSignal create]);
    _itemTriggered_ = ((ReactSignal *) [ReactSignal create]);
    _selector_ = [[TripleplayUiSelector alloc] init];
    _items_ = [[JavaUtilArrayList alloc] init];
    (void) [((id<PlaynCoreGroupLayer>) NIL_CHK(layer_)) setHitTesterWithPlaynCoreLayer_HitTester:[[TripleplayUiMenu_$3 alloc] init]];
    (void) [((id<PlaynCoreGroupLayer>) NIL_CHK(layer_)) addListenerWithPlaynCorePointer_Listener:[[TripleplayUiMenu_$4 alloc] initWithTripleplayUiMenu:self]];
    (void) [((id<ReactSignalView>) [self childAdded]) connectWithReactSlot:_descendantAdded_];
    (void) [((id<ReactSignalView>) [self childRemoved]) connectWithReactSlot:_descendantRemoved_];
  }
  return self;
}

- (id)initWithTripleplayUiLayout:(TripleplayUiLayout *)layout {
  return [self initTripleplayUiMenuWithTripleplayUiLayout:layout];
}

- (id)initWithTripleplayUiLayout:(TripleplayUiLayout *)layout
          withTripleplayUiStyles:(TripleplayUiStyles *)styles {
  if ((self = [self initTripleplayUiMenuWithTripleplayUiLayout:layout])) {
    (void) [self setStylesWithTripleplayUiStyles:styles];
  }
  return self;
}

- (id)initWithTripleplayUiLayout:(TripleplayUiLayout *)layout
withTripleplayUiStyle_BindingArray:(IOSObjectArray *)styles {
  if ((self = [self initTripleplayUiMenuWithTripleplayUiLayout:layout])) {
    (void) [self setStylesWithTripleplayUiStyle_BindingArray:styles];
  }
  return self;
}

- (id<ReactSignalView>)deactivated {
  return _deactivated_;
}

- (void)activate {
  if (_active_) return;
  id<JavaLangRunnable> doActivation = [[TripleplayUiMenu_$5 alloc] initWithTripleplayUiMenu:self];
  if ([self isSetWithTripleplayUiElement_FlagEnum:[TripleplayUiElement_FlagEnum VALID]]) [((id<JavaLangRunnable>) NIL_CHK(doActivation)) run];
  else _postLayout_ = doActivation;
}

- (void)deactivate {
  [self fastForward];
  _active_ = NO;
  _complete_ = [[TripleplayUiMenu_$6 alloc] initWithTripleplayUiMenu:self];
  _anim_ = [[[[self close] then] actionWithJavaLangRunnable:_complete_] handle];
}

- (id<ReactSignalView>)itemTriggered {
  return _itemTriggered_;
}

- (BOOL)automaticallyConfine {
  return YES;
}

- (IOSClass *)getStyleClass {
  return [IOSClass classWithClass:[TripleplayUiMenu class]];
}

- (void)layout {
  [super layout];
  if (_postLayout_ != nil) {
    [_postLayout_ run];
    _postLayout_ = nil;
  }
}

- (TripleplayAnimAnimation *)open {
  return [((id<TripleplayUiMenu_AnimFn>) ((id<TripleplayUiMenu_AnimFn>) [self resolveStyleWithTripleplayUiStyle:TripleplayUiMenu_OPENER_])) goWithTripleplayUiMenu:self withTripleplayAnimAnimator:_animator_];
}

- (TripleplayAnimAnimation *)close {
  return [((id<TripleplayUiMenu_AnimFn>) ((id<TripleplayUiMenu_AnimFn>) [self resolveStyleWithTripleplayUiStyle:TripleplayUiMenu_CLOSER_])) goWithTripleplayUiMenu:self withTripleplayAnimAnimator:_animator_];
}

- (void)onOpened {
  [self clearAnim];
  _active_ = YES;
  id<PlaynCorePointer_Event> pd = _pendingDrag_, pe = _pendingEnd_;
  _pendingDrag_ = _pendingEnd_ = nil;
  if (pe != nil) [self onPointerEndWithPlaynCorePointer_Event:pe];
  else if (pd != nil) [self onPointerDragWithPlaynCorePointer_Event:pd];
}

- (void)onClosed {
  [self clearAnim];
  [((ReactSignal *) NIL_CHK(_deactivated_)) emitWithId:self];
  (void) [((ReactValue *) NIL_CHK(_selector_.selected)) updateWithId:nil];
}

- (void)fastForward {
  if (_anim_ != nil) {
    [_anim_ cancel];
    [((id<JavaLangRunnable>) NIL_CHK(_complete_)) run];
    [PlaynCoreAsserts checkWithBOOL:_anim_ == nil && _complete_ == nil];
  }
}

- (void)clearAnim {
  _complete_ = nil;
  _anim_ = nil;
}

- (void)connectItemWithTripleplayUiMenuItem:(TripleplayUiMenuItem *)item {
  [((id<JavaUtilList>) NIL_CHK(_items_)) addWithId:item];
  [((TripleplayUiMenuItem *) NIL_CHK(item)) setRelayWithPlaynCoreConnection:[((id<PlaynCoreGroupLayer>) NIL_CHK(item.layer)) addListenerWithPlaynCorePointer_Listener:_itemListener_]];
}

- (void)disconnectItemWithTripleplayUiMenuItem:(TripleplayUiMenuItem *)item {
  int itemIdx = [((id<JavaUtilList>) NIL_CHK(_items_)) indexOfWithId:item];
  (void) [((id<JavaUtilList>) NIL_CHK(_items_)) removeWithInt:itemIdx];
  [((TripleplayUiMenuItem *) NIL_CHK(item)) setRelayWithPlaynCoreConnection:nil];
  [self didDisconnectItemWithTripleplayUiMenuItem:item withInt:itemIdx];
}

- (void)didDisconnectItemWithTripleplayUiMenuItem:(TripleplayUiMenuItem *)item
                                          withInt:(int)itemIdx {
}

- (void)onPointerDragWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)e {
  if (!_active_) {
    _pendingDrag_ = e;
    return;
  }
  (void) [((ReactValue *) NIL_CHK(_selector_.selected)) updateWithId:[self getHoverWithPlaynCoreEvents_Position:e]];
}

- (void)onPointerEndWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)e {
  if (!_active_) {
    _pendingEnd_ = e;
    return;
  }
  TripleplayUiMenuItem *hover = [self getHoverWithPlaynCoreEvents_Position:e];
  TripleplayUiElement *selected = ((TripleplayUiElement *) [((ReactValue *) NIL_CHK(_selector_.selected)) get]);
  (void) [((ReactValue *) NIL_CHK(_selector_.selected)) updateWithId:hover];
  if (hover == nil) return;
  if (hover == selected || ((TripleplayUiMenuItem *) NIL_CHK(hover))._showText == [TripleplayUiMenuItem_ShowTextEnum ALWAYS]) {
    if ([self isVisible] && [((TripleplayUiMenuItem *) NIL_CHK(hover)) isEnabled]) {
      [((TripleplayUiMenuItem *) NIL_CHK(hover)) trigger];
      [((ReactSignal *) NIL_CHK(_itemTriggered_)) emitWithId:hover];
      [self deactivate];
    }
  }
}

- (TripleplayUiMenuItem *)getHoverWithPlaynCoreEvents_Position:(id<PlaynCoreEvents_Position>)e {
  id<PlaynCoreLayer> hit = [((id<PlaynCoreGroupLayer>) NIL_CHK(layer_)) hitTestWithPythagorasFPoint:[PlaynCoreLayer_Util screenToLayerWithPlaynCoreLayer:layer_ withFloat:[((id<PlaynCoreEvents_Position>) NIL_CHK(e)) x] withFloat:[((id<PlaynCoreEvents_Position>) NIL_CHK(e)) y]]];
  {
    id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilList>) NIL_CHK(_items_)) iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
      TripleplayUiMenuItem *item = ((TripleplayUiMenuItem *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
      if ([((TripleplayUiMenuItem *) NIL_CHK(item)) isVisible] && ((TripleplayUiMenuItem *) NIL_CHK(item)).layer == hit) {
        return item;
      }
    }
  }
  return nil;
}

- (void)init__WithTripleplayAnimAnimator:(TripleplayAnimAnimator *)animator OBJC_METHOD_FAMILY_NONE {
  _animator_ = animator;
}

+ (void)initialize {
  if (self == [TripleplayUiMenu class]) {
    TripleplayUiMenu_FADE_IN_ = [[TripleplayUiMenu_$1 alloc] init];
    TripleplayUiMenu_FADE_OUT_ = [[TripleplayUiMenu_$2 alloc] init];
    TripleplayUiMenu_OPENER_ = ((TripleplayUiStyle *) [TripleplayUiStyle newStyleWithBOOL:YES withId:TripleplayUiMenu_FADE_IN_]);
    TripleplayUiMenu_CLOSER_ = ((TripleplayUiStyle *) [TripleplayUiStyle newStyleWithBOOL:YES withId:TripleplayUiMenu_FADE_OUT_]);
  }
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiMenu *typedCopy = (TripleplayUiMenu *) copy;
  typedCopy._descendantAdded = _descendantAdded_;
  typedCopy._descendantRemoved = _descendantRemoved_;
  typedCopy._itemListener = _itemListener_;
  typedCopy._deactivated = _deactivated_;
  typedCopy._itemTriggered = _itemTriggered_;
  typedCopy._selector = _selector_;
  typedCopy._items = _items_;
  typedCopy._animator = _animator_;
  typedCopy._anim = _anim_;
  typedCopy._complete = _complete_;
  typedCopy._postLayout = _postLayout_;
  typedCopy._active = _active_;
  typedCopy._pendingDrag = _pendingDrag_;
  typedCopy._pendingEnd = _pendingEnd_;
}

@end
@implementation TripleplayUiMenu_$1

- (TripleplayAnimAnimation *)goWithTripleplayUiMenu:(TripleplayUiMenu *)menu
                         withTripleplayAnimAnimator:(TripleplayAnimAnimator *)animator {
  (void) [((id<PlaynCoreGroupLayer>) NIL_CHK(menu.layer)) setAlphaWithFloat:0];
  return ((TripleplayAnimAnimation_One *) [((TripleplayAnimAnimation_One *) [[[((TripleplayAnimAnimator *) NIL_CHK(animator)) tweenAlphaWithPlaynCoreLayer:((TripleplayUiMenu *) NIL_CHK(menu)).layer] toWithFloat:1] easeIn]) inWithFloat:200]);
}

- (id)init {
  return [super init];
}

@end
@implementation TripleplayUiMenu_$2

- (TripleplayAnimAnimation *)goWithTripleplayUiMenu:(TripleplayUiMenu *)menu
                         withTripleplayAnimAnimator:(TripleplayAnimAnimator *)animator {
  return ((TripleplayAnimAnimation_One *) [((TripleplayAnimAnimation_One *) [[[((TripleplayAnimAnimator *) NIL_CHK(animator)) tweenAlphaWithPlaynCoreLayer:((TripleplayUiMenu *) NIL_CHK(menu)).layer] toWithFloat:0] easeIn]) inWithFloat:40]);
}

- (id)init {
  return [super init];
}

@end
@implementation TripleplayUiMenu_$3

- (id<PlaynCoreLayer>)hitTestWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer
                           withPythagorasFPoint:(PythagorasFPoint *)p {
  id<PlaynCoreLayer> descendant = [((id<PlaynCoreLayer>) NIL_CHK(layer)) hitTestDefaultWithPythagorasFPoint:p];
  return descendant == nil ? layer : descendant;
}

- (id)init {
  return [super init];
}

@end
@implementation TripleplayUiMenu_$4

@synthesize this$0 = this$0_;

- (void)onPointerStartWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  if ([((id<PlaynCorePointer_Event>) NIL_CHK(event)) hit] == this$0_.layer) [this$0_ deactivate];
}

- (id)initWithTripleplayUiMenu:(TripleplayUiMenu *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiMenu_$4 *typedCopy = (TripleplayUiMenu_$4 *) copy;
  typedCopy.this$0 = this$0_;
}

@end
@implementation TripleplayUiMenu_$5

@synthesize this$0 = this$0_;

- (void)run {
  [this$0_ fastForward];
  this$0_._complete = [[TripleplayUiMenu_$5_$1 alloc] initWithTripleplayUiMenu_$5:self];
  this$0_._anim = [[[[this$0_ open] then] actionWithJavaLangRunnable:this$0_._complete] handle];
}

- (id)initWithTripleplayUiMenu:(TripleplayUiMenu *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiMenu_$5 *typedCopy = (TripleplayUiMenu_$5 *) copy;
  typedCopy.this$0 = this$0_;
}

@end
@implementation TripleplayUiMenu_$5_$1

@synthesize this$0 = this$0_;

- (void)run {
  [this$0_.this$0 onOpened];
}

- (id)initWithTripleplayUiMenu_$5:(TripleplayUiMenu_$5 *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiMenu_$5_$1 *typedCopy = (TripleplayUiMenu_$5_$1 *) copy;
  typedCopy.this$0 = this$0_;
}

@end
@implementation TripleplayUiMenu_$6

@synthesize this$0 = this$0_;

- (void)run {
  [this$0_ onClosed];
}

- (id)initWithTripleplayUiMenu:(TripleplayUiMenu *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiMenu_$6 *typedCopy = (TripleplayUiMenu_$6 *) copy;
  typedCopy.this$0 = this$0_;
}

@end
@implementation TripleplayUiMenu_DescendingSlot

- (void)onEmitWithId:(TripleplayUiElement *)elem {
  if ([elem isKindOfClass:[TripleplayUiElements class]]) {
    TripleplayUiElements *es = (TripleplayUiElements *) elem;
    [self visitElemsWithTripleplayUiElements:es];
    {
      id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((TripleplayUiElements *) NIL_CHK(es)) iterator]);
      while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
        TripleplayUiElement *child = ((TripleplayUiElement *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
        [self onEmitWithId:child];
      }
    }
  }
  if ([elem isKindOfClass:[TripleplayUiMenuItem class]]) [self visitItemWithTripleplayUiMenuItem:(TripleplayUiMenuItem *) elem];
}

- (void)visitElemsWithTripleplayUiElements:(TripleplayUiElements *)elems {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)visitItemWithTripleplayUiMenuItem:(TripleplayUiMenuItem *)item {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (id)initWithTripleplayUiMenu:(TripleplayUiMenu *)outer$ {
  return [super init];
}

@end
@implementation TripleplayUiMenu_$7

@synthesize this$1 = this$1_;

- (void)visitElemsWithTripleplayUiElements:(TripleplayUiElements *)elems {
  (void) [((id<ReactSignalView>) [((TripleplayUiElements *) NIL_CHK(elems)) childAdded]) connectWithReactSlot:this$1_._descendantAdded];
  (void) [((id<ReactSignalView>) [((TripleplayUiElements *) NIL_CHK(elems)) childRemoved]) connectWithReactSlot:this$1_._descendantRemoved];
}

- (void)visitItemWithTripleplayUiMenuItem:(TripleplayUiMenuItem *)item {
  [this$1_ connectItemWithTripleplayUiMenuItem:item];
}

- (id)initWithTripleplayUiMenu:(TripleplayUiMenu *)outer$ {
  if ((self = [super initWithTripleplayUiMenu:outer$])) {
    this$1_ = outer$;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiMenu_$7 *typedCopy = (TripleplayUiMenu_$7 *) copy;
  typedCopy.this$1 = this$1_;
}

@end
@implementation TripleplayUiMenu_$8

@synthesize this$1 = this$1_;

- (void)visitElemsWithTripleplayUiElements:(TripleplayUiElements *)elems {
  [((id<ReactSignalView>) [((TripleplayUiElements *) NIL_CHK(elems)) childAdded]) disconnectWithReactSlot:this$1_._descendantAdded];
  [((id<ReactSignalView>) [((TripleplayUiElements *) NIL_CHK(elems)) childRemoved]) disconnectWithReactSlot:this$1_._descendantRemoved];
}

- (void)visitItemWithTripleplayUiMenuItem:(TripleplayUiMenuItem *)item {
  [this$1_ disconnectItemWithTripleplayUiMenuItem:item];
}

- (id)initWithTripleplayUiMenu:(TripleplayUiMenu *)outer$ {
  if ((self = [super initWithTripleplayUiMenu:outer$])) {
    this$1_ = outer$;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiMenu_$8 *typedCopy = (TripleplayUiMenu_$8 *) copy;
  typedCopy.this$1 = this$1_;
}

@end
@implementation TripleplayUiMenu_$9

@synthesize this$0 = this$0_;

- (void)onPointerStartWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  [this$0_ onPointerDragWithPlaynCorePointer_Event:event];
}

- (void)onPointerDragWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  [this$0_ onPointerDragWithPlaynCorePointer_Event:event];
}

- (void)onPointerEndWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  [this$0_ onPointerEndWithPlaynCorePointer_Event:event];
}

- (void)onPointerCancelWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
}

- (id)initWithTripleplayUiMenu:(TripleplayUiMenu *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiMenu_$9 *typedCopy = (TripleplayUiMenu_$9 *) copy;
  typedCopy.this$0 = this$0_;
}

@end
