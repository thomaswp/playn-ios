//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/AbstractLayer.java
//
//  Created by Thomas on 7/10/13.
//

#import "IOSClass.h"
#import "IOSObjectArray.h"
#import "java/lang/Float.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/IllegalStateException.h"
#import "java/lang/StringBuilder.h"
#import "playn/core/AbstractLayer.h"
#import "playn/core/Asserts.h"
#import "playn/core/Connection.h"
#import "playn/core/GroupLayer.h"
#import "playn/core/InternalTransform.h"
#import "playn/core/Layer.h"
#import "playn/core/Mouse.h"
#import "playn/core/ParentLayer.h"
#import "playn/core/Pointer.h"
#import "playn/core/StockInternalTransform.h"
#import "playn/core/Tint.h"
#import "playn/core/Touch.h"
#import "playn/core/gl/GLShader.h"
#import "pythagoras/f/FloatMath.h"
#import "pythagoras/f/MathUtil.h"
#import "pythagoras/f/Point.h"
#import "pythagoras/f/Transform.h"

@implementation PlaynCoreAbstractLayer

@synthesize scaleX_ = scaleX__;
@synthesize scaleY_ = scaleY__;
@synthesize rotation_ = rotation__;
@synthesize transform_ = transform__;
@synthesize parent_ = parent__;
@synthesize originX_ = originX__;
@synthesize originY_ = originY__;
@synthesize tint_ = tint__;
@synthesize alpha_ = alpha__;
@synthesize depth_ = depth__;
@synthesize flags = flags_;
@synthesize rootInteractor = rootInteractor_;
@synthesize hitTester = hitTester_;

- (id)init {
  return [self initPlaynCoreAbstractLayerWithPlaynCoreInternalTransform:[[PlaynCoreStockInternalTransform alloc] init]];
}

- (id)initPlaynCoreAbstractLayerWithPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)transform {
  if ((self = [super init])) {
    scaleX__ = 1;
    scaleY__ = 1;
    rotation__ = 0;
    tint__ = PlaynCoreTint_NOOP_TINT;
    alpha__ = 1;
    self.transform_ = transform;
    [self setFlagWithPlaynCoreAbstractLayer_FlagEnum:[PlaynCoreAbstractLayer_FlagEnum VISIBLE] withBOOL:YES];
  }
  return self;
}

- (id)initWithPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)transform {
  return [self initPlaynCoreAbstractLayerWithPlaynCoreInternalTransform:transform];
}

- (void)destroy {
  if ([self parent] != nil) {
    [((id<PlaynCoreGroupLayer>) [self parent]) removeWithPlaynCoreLayer:self];
  }
  [self setFlagWithPlaynCoreAbstractLayer_FlagEnum:[PlaynCoreAbstractLayer_FlagEnum DESTROYED] withBOOL:YES];
}

- (BOOL)destroyed {
  return [self isSetWithPlaynCoreAbstractLayer_FlagEnum:[PlaynCoreAbstractLayer_FlagEnum DESTROYED]];
}

- (BOOL)visible {
  return [self isSetWithPlaynCoreAbstractLayer_FlagEnum:[PlaynCoreAbstractLayer_FlagEnum VISIBLE]];
}

- (id<PlaynCoreLayer>)setVisibleWithBOOL:(BOOL)visible {
  [self setFlagWithPlaynCoreAbstractLayer_FlagEnum:[PlaynCoreAbstractLayer_FlagEnum VISIBLE] withBOOL:visible];
  return self;
}

- (BOOL)interactive {
  return [self isSetWithPlaynCoreAbstractLayer_FlagEnum:[PlaynCoreAbstractLayer_FlagEnum INTERACTIVE]];
}

- (id<PlaynCoreLayer>)setInteractiveWithBOOL:(BOOL)interactive {
  if ([self interactive] != interactive) {
    if (interactive && parent__ != nil) (void) [((id<PlaynCoreGroupLayer>) NIL_CHK(parent__)) setInteractiveWithBOOL:interactive];
    [self setFlagWithPlaynCoreAbstractLayer_FlagEnum:[PlaynCoreAbstractLayer_FlagEnum INTERACTIVE] withBOOL:interactive];
  }
  return self;
}

- (float)alpha {
  return alpha__;
}

- (id<PlaynCoreLayer>)setAlphaWithFloat:(float)alpha {
  self.alpha_ = alpha;
  int ialpha = (int) ((int) 0xFF * [PythagorasFMathUtil clampWithFloat:alpha withFloat:0 withFloat:1]);
  self.tint_ = (ialpha << 24) | (tint__ & (int) 0xFFFFFF);
  return self;
}

- (int)tint {
  return tint__;
}

- (id<PlaynCoreLayer>)setTintWithInt:(int)tint {
  self.tint_ = tint;
  self.alpha_ = ((tint >> 24) & (int) 0xFF) / 255.0f;
  return self;
}

- (float)originX {
  return originX__;
}

- (float)originY {
  return originY__;
}

- (id<PlaynCoreLayer>)setOriginWithFloat:(float)x
                               withFloat:(float)y {
  self.originX_ = x;
  self.originY_ = y;
  return self;
}

- (float)depth {
  return depth__;
}

- (id<PlaynCoreLayer>)setDepthWithFloat:(float)depth {
  float oldDepth = self.depth_;
  if (depth != oldDepth) {
    self.depth_ = depth;
    if (parent__ != nil) {
      [((id<PlaynCoreParentLayer>) parent__) depthChangedWithPlaynCoreLayer:self withFloat:oldDepth];
    }
  }
  return self;
}

- (float)tx {
  return [((id<PlaynCoreInternalTransform>) NIL_CHK(transform__)) tx];
}

- (float)ty {
  return [((id<PlaynCoreInternalTransform>) NIL_CHK(transform__)) ty];
}

- (id<PlaynCoreLayer>)setTxWithFloat:(float)x {
  (void) [((id<PlaynCoreInternalTransform>) NIL_CHK(transform__)) setTxWithFloat:x];
  return self;
}

- (id<PlaynCoreLayer>)setTyWithFloat:(float)y {
  (void) [((id<PlaynCoreInternalTransform>) NIL_CHK(transform__)) setTyWithFloat:y];
  return self;
}

- (id<PlaynCoreLayer>)setTranslationWithFloat:(float)x
                                    withFloat:(float)y {
  (void) [((id<PlaynCoreInternalTransform>) NIL_CHK(transform__)) setTranslationWithFloat:x withFloat:y];
  return self;
}

- (float)rotation {
  return rotation__;
}

- (id<PlaynCoreLayer>)setRotationWithFloat:(float)angle {
  if (rotation__ != angle) {
    rotation__ = angle;
    [self setFlagWithPlaynCoreAbstractLayer_FlagEnum:[PlaynCoreAbstractLayer_FlagEnum XFDIRTY] withBOOL:YES];
  }
  return self;
}

- (float)scaleX {
  return scaleX__;
}

- (float)scaleY {
  return scaleY__;
}

- (id<PlaynCoreLayer>)setScaleWithFloat:(float)s {
  return [self setScaleWithFloat:s withFloat:s];
}

- (id<PlaynCoreLayer>)setScaleXWithFloat:(float)sx {
  [PlaynCoreAsserts checkArgumentWithBOOL:sx != 0 withNSString:@"Scale must be non-zero (got sx=%s)" withNSObjectArray:[IOSObjectArray arrayWithType:[IOSClass classWithClass:[NSObject class]] count:1, [JavaLangFloat valueOfWithFloat:sx] ]];
  if (scaleX__ != sx) {
    scaleX__ = sx;
    [self setFlagWithPlaynCoreAbstractLayer_FlagEnum:[PlaynCoreAbstractLayer_FlagEnum XFDIRTY] withBOOL:YES];
  }
  return self;
}

- (id<PlaynCoreLayer>)setScaleYWithFloat:(float)sy {
  [PlaynCoreAsserts checkArgumentWithBOOL:sy != 0 withNSString:@"Scale must be non-zero (got sy=%s)" withNSObjectArray:[IOSObjectArray arrayWithType:[IOSClass classWithClass:[NSObject class]] count:1, [JavaLangFloat valueOfWithFloat:sy] ]];
  if (scaleY__ != sy) {
    scaleY__ = sy;
    [self setFlagWithPlaynCoreAbstractLayer_FlagEnum:[PlaynCoreAbstractLayer_FlagEnum XFDIRTY] withBOOL:YES];
  }
  return self;
}

- (id<PlaynCoreLayer>)setScaleWithFloat:(float)sx
                              withFloat:(float)sy {
  [PlaynCoreAsserts checkArgumentWithBOOL:sx != 0 && sy != 0 withNSString:@"Scale must be non-zero (got sx=%s, sy=%s)" withNSObjectArray:[IOSObjectArray arrayWithType:[IOSClass classWithClass:[NSObject class]] count:2, [JavaLangFloat valueOfWithFloat:sx], [JavaLangFloat valueOfWithFloat:sy] ]];
  if (sx != scaleX__ || sy != scaleY__) {
    scaleX__ = sx;
    scaleY__ = sy;
    [self setFlagWithPlaynCoreAbstractLayer_FlagEnum:[PlaynCoreAbstractLayer_FlagEnum XFDIRTY] withBOOL:YES];
  }
  return self;
}

- (id<PlaynCoreLayer>)hitTestWithPythagorasFPoint:(PythagorasFPoint *)p {
  return (hitTester_ == nil) ? [self hitTestDefaultWithPythagorasFPoint:p] : [((id<PlaynCoreLayer_HitTester>) NIL_CHK(hitTester_)) hitTestWithPlaynCoreLayer:self withPythagorasFPoint:p];
}

- (id<PlaynCoreLayer>)hitTestDefaultWithPythagorasFPoint:(PythagorasFPoint *)p {
  return (((PythagorasFPoint *) NIL_CHK(p)).x_ >= 0 && ((PythagorasFPoint *) NIL_CHK(p)).y_ >= 0 && ((PythagorasFPoint *) NIL_CHK(p)).x_ < [self width] && ((PythagorasFPoint *) NIL_CHK(p)).y_ < [self height]) ? self : nil;
}

- (id<PlaynCoreLayer>)setHitTesterWithPlaynCoreLayer_HitTester:(id<PlaynCoreLayer_HitTester>)tester {
  hitTester_ = tester;
  return self;
}

- (id<PythagorasFTransform>)transform {
  if ([self isSetWithPlaynCoreAbstractLayer_FlagEnum:[PlaynCoreAbstractLayer_FlagEnum XFDIRTY]]) {
    float sina = [PythagorasFFloatMath sinWithFloat:rotation__], cosa = [PythagorasFFloatMath cosWithFloat:rotation__];
    float m00 = cosa * scaleX__, m01 = sina * scaleY__;
    float m10 = -sina * scaleX__, m11 = cosa * scaleY__;
    float tx = [((id<PlaynCoreInternalTransform>) NIL_CHK(transform__)) tx], ty = [((id<PlaynCoreInternalTransform>) NIL_CHK(transform__)) ty];
    (void) [((id<PlaynCoreInternalTransform>) NIL_CHK(transform__)) setTransformWithFloat:m00 withFloat:m01 withFloat:m10 withFloat:m11 withFloat:tx withFloat:ty];
    [self setFlagWithPlaynCoreAbstractLayer_FlagEnum:[PlaynCoreAbstractLayer_FlagEnum XFDIRTY] withBOOL:NO];
  }
  return transform__;
}

- (id<PlaynCoreGroupLayer>)parent {
  return parent__;
}

- (id<PlaynCoreConnection>)addListenerWithPlaynCorePointer_Listener:(id<PlaynCorePointer_Listener>)listener {
  return [self addInteractorWithIOSClass:[IOSClass classWithProtocol:@protocol(PlaynCorePointer_Listener)] withId:listener];
}

- (id<PlaynCoreConnection>)addListenerWithPlaynCoreMouse_LayerListener:(id<PlaynCoreMouse_LayerListener>)listener {
  return [self addInteractorWithIOSClass:[IOSClass classWithProtocol:@protocol(PlaynCoreMouse_LayerListener)] withId:listener];
}

- (id<PlaynCoreConnection>)addListenerWithPlaynCoreTouch_LayerListener:(id<PlaynCoreTouch_LayerListener>)listener {
  return [self addInteractorWithIOSClass:[IOSClass classWithProtocol:@protocol(PlaynCoreTouch_LayerListener)] withId:listener];
}

- (id<PlaynCoreLayer>)setShaderWithPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)shader {
  return self;
}

- (float)width {
  return 0;
}

- (float)height {
  return 0;
}

- (void)onAdd {
  if ([self destroyed]) @throw [[JavaLangIllegalStateException alloc] initWithNSString:[NSString stringWithFormat:@"Illegal to use destroyed layer: %@", self]];
}

- (void)onRemove {
}

- (void)setParentWithPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)parent {
  self.parent_ = parent;
}

- (NSString *)description {
  NSString *cname = [[self getClass] getName];
  JavaLangStringBuilder *bldr = [[JavaLangStringBuilder alloc] initWithNSString:[NIL_CHK(cname) substring:[NIL_CHK(cname) lastIndexOfString:@"."] + 1]];
  (void) [[((JavaLangStringBuilder *) NIL_CHK(bldr)) appendWithNSString:@" [hashCode="] appendWithInt:[self hash]];
  (void) [[((JavaLangStringBuilder *) NIL_CHK(bldr)) appendWithNSString:@", tx="] appendWithId:[self transform]];
  if (hitTester_ != nil) (void) [[((JavaLangStringBuilder *) NIL_CHK(bldr)) appendWithNSString:@", hitTester="] appendWithId:hitTester_];
  return [((JavaLangStringBuilder *) NIL_CHK(bldr)) description];
}

- (BOOL)isSetWithPlaynCoreAbstractLayer_FlagEnum:(PlaynCoreAbstractLayer_FlagEnum *)flag {
  return (flags_ & ((PlaynCoreAbstractLayer_FlagEnum *) NIL_CHK(flag)).bitmask) != 0;
}

- (void)setFlagWithPlaynCoreAbstractLayer_FlagEnum:(PlaynCoreAbstractLayer_FlagEnum *)flag
                                          withBOOL:(BOOL)active {
  if (active) {
    flags_ |= ((PlaynCoreAbstractLayer_FlagEnum *) NIL_CHK(flag)).bitmask;
  }
  else {
    flags_ &= ~((PlaynCoreAbstractLayer_FlagEnum *) NIL_CHK(flag)).bitmask;
  }
}

- (void)interactWithIOSClass:(IOSClass *)listenerType
withPlaynCoreAbstractLayer_Interaction:(id<PlaynCoreAbstractLayer_Interaction>)interaction
                      withId:(id)argument {
  [self interactWithIOSClass:listenerType withPlaynCoreAbstractLayer_Interaction:interaction withPlaynCoreAbstractLayer_Interactor:rootInteractor_ withId:argument];
}

- (BOOL)hasInteractors {
  return rootInteractor_ != nil;
}

- (void)interactWithIOSClass:(IOSClass *)type
withPlaynCoreAbstractLayer_Interaction:(id<PlaynCoreAbstractLayer_Interaction>)interaction
withPlaynCoreAbstractLayer_Interactor:(PlaynCoreAbstractLayer_Interactor *)current
                      withId:(id)argument {
  if (current == nil) return;
  [self interactWithIOSClass:type withPlaynCoreAbstractLayer_Interaction:interaction withPlaynCoreAbstractLayer_Interactor:((PlaynCoreAbstractLayer_Interactor *) NIL_CHK(current)).next withId:argument];
  if (((PlaynCoreAbstractLayer_Interactor *) NIL_CHK(current)).listenerType == type) {
    id listener = (id) ((PlaynCoreAbstractLayer_Interactor *) NIL_CHK(current)).listener;
    [((id<PlaynCoreAbstractLayer_Interaction>) NIL_CHK(interaction)) interactWithId:listener withId:argument];
  }
}

- (id<PlaynCoreConnection>)addInteractorWithIOSClass:(IOSClass *)listenerType
                                              withId:(id)listener {
  PlaynCoreAbstractLayer_Interactor *newint = [[PlaynCoreAbstractLayer_Interactor alloc] initWithIOSClass:listenerType withId:listener withPlaynCoreAbstractLayer_Interactor:rootInteractor_];
  rootInteractor_ = newint;
  (void) [self setInteractiveWithBOOL:YES];
  return [[PlaynCoreAbstractLayer_$1 alloc] initWithPlaynCoreAbstractLayer:self withPlaynCoreAbstractLayer_Interactor:newint];
}

- (PlaynCoreAbstractLayer_Interactor *)removeInteractorWithPlaynCoreAbstractLayer_Interactor:(PlaynCoreAbstractLayer_Interactor *)current
                                                       withPlaynCoreAbstractLayer_Interactor:(PlaynCoreAbstractLayer_Interactor *)target {
  if (current == nil) return nil;
  if (current == target) return ((PlaynCoreAbstractLayer_Interactor *) NIL_CHK(current)).next;
  ((PlaynCoreAbstractLayer_Interactor *) NIL_CHK(current)).next = [self removeInteractorWithPlaynCoreAbstractLayer_Interactor:((PlaynCoreAbstractLayer_Interactor *) NIL_CHK(current)).next withPlaynCoreAbstractLayer_Interactor:target];
  return current;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreAbstractLayer *typedCopy = (PlaynCoreAbstractLayer *) copy;
  typedCopy.scaleX_ = scaleX__;
  typedCopy.scaleY_ = scaleY__;
  typedCopy.rotation_ = rotation__;
  typedCopy.transform_ = transform__;
  typedCopy.parent_ = parent__;
  typedCopy.originX_ = originX__;
  typedCopy.originY_ = originY__;
  typedCopy.tint_ = tint__;
  typedCopy.alpha_ = alpha__;
  typedCopy.depth_ = depth__;
  typedCopy.flags = flags_;
  typedCopy.rootInteractor = rootInteractor_;
  typedCopy.hitTester = hitTester_;
}

@end
@implementation PlaynCoreAbstractLayer_Interactor

@synthesize listenerType = listenerType_;
@synthesize listener = listener_;
@synthesize next = next_;

- (id)initWithIOSClass:(IOSClass *)listenerType
                withId:(id)listener
withPlaynCoreAbstractLayer_Interactor:(PlaynCoreAbstractLayer_Interactor *)next {
  if ((self = [super init])) {
    self.listenerType = listenerType;
    self.listener = listener;
    self.next = next;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreAbstractLayer_Interactor *typedCopy = (PlaynCoreAbstractLayer_Interactor *) copy;
  typedCopy.listenerType = listenerType_;
  typedCopy.listener = listener_;
  typedCopy.next = next_;
}

@end

static PlaynCoreAbstractLayer_FlagEnum *PlaynCoreAbstractLayer_FlagEnum_DESTROYED;
static PlaynCoreAbstractLayer_FlagEnum *PlaynCoreAbstractLayer_FlagEnum_VISIBLE;
static PlaynCoreAbstractLayer_FlagEnum *PlaynCoreAbstractLayer_FlagEnum_INTERACTIVE;
static PlaynCoreAbstractLayer_FlagEnum *PlaynCoreAbstractLayer_FlagEnum_SHOWN;
static PlaynCoreAbstractLayer_FlagEnum *PlaynCoreAbstractLayer_FlagEnum_XFDIRTY;
IOSObjectArray *PlaynCoreAbstractLayer_FlagEnum_values;

@implementation PlaynCoreAbstractLayer_FlagEnum

+ (PlaynCoreAbstractLayer_FlagEnum *)DESTROYED {
  return PlaynCoreAbstractLayer_FlagEnum_DESTROYED;
}
+ (PlaynCoreAbstractLayer_FlagEnum *)VISIBLE {
  return PlaynCoreAbstractLayer_FlagEnum_VISIBLE;
}
+ (PlaynCoreAbstractLayer_FlagEnum *)INTERACTIVE {
  return PlaynCoreAbstractLayer_FlagEnum_INTERACTIVE;
}
+ (PlaynCoreAbstractLayer_FlagEnum *)SHOWN {
  return PlaynCoreAbstractLayer_FlagEnum_SHOWN;
}
+ (PlaynCoreAbstractLayer_FlagEnum *)XFDIRTY {
  return PlaynCoreAbstractLayer_FlagEnum_XFDIRTY;
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

@synthesize bitmask = bitmask_;

- (id)initWithInt:(int)bitmask
     withNSString:(NSString *)name
          withInt:(int)ordinal {
  if ((self = [super initWithNSString:name withInt:ordinal])) {
    self.bitmask = bitmask;
  }
  return self;
}

+ (void)initialize {
  if (self == [PlaynCoreAbstractLayer_FlagEnum class]) {
    PlaynCoreAbstractLayer_FlagEnum_DESTROYED = [[PlaynCoreAbstractLayer_FlagEnum alloc] initWithInt:1 << 0 withNSString:@"PlaynCoreAbstractLayer_Flag_DESTROYED" withInt:0];
    PlaynCoreAbstractLayer_FlagEnum_VISIBLE = [[PlaynCoreAbstractLayer_FlagEnum alloc] initWithInt:1 << 1 withNSString:@"PlaynCoreAbstractLayer_Flag_VISIBLE" withInt:1];
    PlaynCoreAbstractLayer_FlagEnum_INTERACTIVE = [[PlaynCoreAbstractLayer_FlagEnum alloc] initWithInt:1 << 2 withNSString:@"PlaynCoreAbstractLayer_Flag_INTERACTIVE" withInt:2];
    PlaynCoreAbstractLayer_FlagEnum_SHOWN = [[PlaynCoreAbstractLayer_FlagEnum alloc] initWithInt:1 << 3 withNSString:@"PlaynCoreAbstractLayer_Flag_SHOWN" withInt:3];
    PlaynCoreAbstractLayer_FlagEnum_XFDIRTY = [[PlaynCoreAbstractLayer_FlagEnum alloc] initWithInt:1 << 4 withNSString:@"PlaynCoreAbstractLayer_Flag_XFDIRTY" withInt:4];
    PlaynCoreAbstractLayer_FlagEnum_values = [[IOSObjectArray alloc] initWithObjects:(id[]){ PlaynCoreAbstractLayer_FlagEnum_DESTROYED, PlaynCoreAbstractLayer_FlagEnum_VISIBLE, PlaynCoreAbstractLayer_FlagEnum_INTERACTIVE, PlaynCoreAbstractLayer_FlagEnum_SHOWN, PlaynCoreAbstractLayer_FlagEnum_XFDIRTY, nil } count:5 type:[IOSClass classWithClass:[PlaynCoreAbstractLayer_FlagEnum class]]];
  }
}

+ (IOSObjectArray *)values {
  return [IOSObjectArray arrayWithArray:PlaynCoreAbstractLayer_FlagEnum_values];
}

+ (PlaynCoreAbstractLayer_FlagEnum *)valueOfWithNSString:(NSString *)name {
  for (int i = 0; i < [PlaynCoreAbstractLayer_FlagEnum_values count]; i++) {
    PlaynCoreAbstractLayer_FlagEnum *e = [PlaynCoreAbstractLayer_FlagEnum_values objectAtIndex:i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

@end
@implementation PlaynCoreAbstractLayer_$1

@synthesize this$0 = this$0_;
@synthesize val$newint = val$newint_;

- (void)disconnect {
  this$0_.rootInteractor = [this$0_ removeInteractorWithPlaynCoreAbstractLayer_Interactor:this$0_.rootInteractor withPlaynCoreAbstractLayer_Interactor:val$newint_];
  if (this$0_.rootInteractor == nil && !([this$0_ conformsToProtocol: @protocol(PlaynCoreGroupLayer)])) (void) [this$0_ setInteractiveWithBOOL:NO];
}

- (id)initWithPlaynCoreAbstractLayer:(PlaynCoreAbstractLayer *)outer$
withPlaynCoreAbstractLayer_Interactor:(PlaynCoreAbstractLayer_Interactor *)capture$0 {
  if ((self = [super init])) {
    this$0_ = outer$;
    val$newint_ = capture$0;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreAbstractLayer_$1 *typedCopy = (PlaynCoreAbstractLayer_$1 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.val$newint = val$newint_;
}

@end