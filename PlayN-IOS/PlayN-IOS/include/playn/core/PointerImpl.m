//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/PointerImpl.java
//
//  Created by Thomas on 7/10/13.
//

#import "playn/core/AbstractLayer.h"
#import "playn/core/Dispatcher.h"
#import "playn/core/Events.h"
#import "playn/core/Graphics.h"
#import "playn/core/GroupLayer.h"
#import "playn/core/Layer.h"
#import "playn/core/PlayN.h"
#import "playn/core/Pointer.h"
#import "playn/core/PointerImpl.h"
#import "pythagoras/f/Point.h"
#import "pythagoras/f/Transform.h"

@implementation PlaynCorePointerImpl

@synthesize enabled = enabled_;
@synthesize dispatcher = dispatcher_;
@synthesize listener_ = listener__;
@synthesize activeLayer = activeLayer_;
@synthesize START = START_;
@synthesize DRAG = DRAG_;
@synthesize END = END_;
@synthesize CANCEL = CANCEL_;

- (BOOL)isEnabled {
  return enabled_;
}

- (void)setEnabledWithBOOL:(BOOL)enabled {
  self.enabled = enabled;
}

- (id<PlaynCorePointer_Listener>)listener {
  return listener__;
}

- (void)setListenerWithPlaynCorePointer_Listener:(id<PlaynCorePointer_Listener>)listener {
  self.listener_ = listener;
}

- (void)cancelLayerDrags {
  if (activeLayer_ != nil) {
    PlaynCorePointer_Event_Impl *event = [[PlaynCorePointer_Event_Impl alloc] initWithPlaynCoreEvents_Flags:[[PlaynCoreEvents_Flags_Impl alloc] init] withDouble:[PlaynCorePlayN currentTime] withFloat:0 withFloat:0 withBOOL:NO];
    [((id<PlaynCoreDispatcher>) NIL_CHK(dispatcher_)) dispatchWithPlaynCoreAbstractLayer:activeLayer_ withIOSClass:[IOSClass classWithProtocol:@protocol(PlaynCorePointer_Listener)] withId:event withPlaynCoreAbstractLayer_Interaction:CANCEL_];
    activeLayer_ = nil;
  }
}

- (void)setPropagateEventsWithBOOL:(BOOL)propagate {
  dispatcher_ = [PlaynCoreDispatcher_Util selectWithBOOL:propagate];
}

- (BOOL)onPointerStartWithPlaynCorePointer_Event_Impl:(PlaynCorePointer_Event_Impl *)event
                                             withBOOL:(BOOL)preventDefault {
  if (!enabled_) return preventDefault;
  [((id<PlaynCoreEvents_Flags>) [((PlaynCorePointer_Event_Impl *) NIL_CHK(event)) flags]) setPreventDefaultWithBOOL:preventDefault];
  if (listener__ != nil) {
    [listener__ onPointerStartWithPlaynCorePointer_Event:event];
  }
  id<PlaynCoreGroupLayer> root = [((id<PlaynCoreGraphics>) [PlaynCorePlayN graphics]) rootLayer];
  if ([((id<PlaynCoreGroupLayer>) NIL_CHK(root)) interactive]) {
    PythagorasFPoint *p = [[PythagorasFPoint alloc] initWithFloat:[((PlaynCorePointer_Event_Impl *) NIL_CHK(event)) x] withFloat:[((PlaynCorePointer_Event_Impl *) NIL_CHK(event)) y]];
    (void) [((id<PythagorasFTransform>) [((id<PlaynCoreGroupLayer>) NIL_CHK(root)) transform]) inverseTransformWithPythagorasFIPoint:p withPythagorasFPoint:p];
    ((PythagorasFPoint *) NIL_CHK(p)).x_ += [((id<PlaynCoreGroupLayer>) NIL_CHK(root)) originX];
    ((PythagorasFPoint *) NIL_CHK(p)).y_ += [((id<PlaynCoreGroupLayer>) NIL_CHK(root)) originY];
    activeLayer_ = (PlaynCoreAbstractLayer *) [((id<PlaynCoreGroupLayer>) NIL_CHK(root)) hitTestWithPythagorasFPoint:p];
    if (activeLayer_ != nil) {
      [((id<PlaynCoreDispatcher>) NIL_CHK(dispatcher_)) dispatchWithPlaynCoreAbstractLayer:activeLayer_ withIOSClass:[IOSClass classWithProtocol:@protocol(PlaynCorePointer_Listener)] withId:event withPlaynCoreAbstractLayer_Interaction:START_];
    }
  }
  return [((id<PlaynCoreEvents_Flags>) [((PlaynCorePointer_Event_Impl *) NIL_CHK(event)) flags]) getPreventDefault];
}

- (BOOL)onPointerDragWithPlaynCorePointer_Event_Impl:(PlaynCorePointer_Event_Impl *)event
                                            withBOOL:(BOOL)preventDefault {
  if (!enabled_) return preventDefault;
  [((id<PlaynCoreEvents_Flags>) [((PlaynCorePointer_Event_Impl *) NIL_CHK(event)) flags]) setPreventDefaultWithBOOL:preventDefault];
  if (listener__ != nil) {
    [listener__ onPointerDragWithPlaynCorePointer_Event:event];
  }
  if (activeLayer_ != nil) {
    [((id<PlaynCoreDispatcher>) NIL_CHK(dispatcher_)) dispatchWithPlaynCoreAbstractLayer:activeLayer_ withIOSClass:[IOSClass classWithProtocol:@protocol(PlaynCorePointer_Listener)] withId:event withPlaynCoreAbstractLayer_Interaction:DRAG_];
  }
  return [((id<PlaynCoreEvents_Flags>) [((PlaynCorePointer_Event_Impl *) NIL_CHK(event)) flags]) getPreventDefault];
}

- (BOOL)onPointerEndWithPlaynCorePointer_Event_Impl:(PlaynCorePointer_Event_Impl *)event
                                           withBOOL:(BOOL)preventDefault {
  if (!enabled_) return preventDefault;
  [((id<PlaynCoreEvents_Flags>) [((PlaynCorePointer_Event_Impl *) NIL_CHK(event)) flags]) setPreventDefaultWithBOOL:preventDefault];
  if (listener__ != nil) {
    [listener__ onPointerEndWithPlaynCorePointer_Event:event];
  }
  if (activeLayer_ != nil) {
    [((id<PlaynCoreDispatcher>) NIL_CHK(dispatcher_)) dispatchWithPlaynCoreAbstractLayer:activeLayer_ withIOSClass:[IOSClass classWithProtocol:@protocol(PlaynCorePointer_Listener)] withId:event withPlaynCoreAbstractLayer_Interaction:END_];
    activeLayer_ = nil;
  }
  return [((id<PlaynCoreEvents_Flags>) [((PlaynCorePointer_Event_Impl *) NIL_CHK(event)) flags]) getPreventDefault];
}

- (BOOL)onPointerCancelWithPlaynCorePointer_Event_Impl:(PlaynCorePointer_Event_Impl *)event
                                              withBOOL:(BOOL)preventDefault {
  if (!enabled_) return preventDefault;
  [((id<PlaynCoreEvents_Flags>) [((PlaynCorePointer_Event_Impl *) NIL_CHK(event)) flags]) setPreventDefaultWithBOOL:preventDefault];
  if (listener__ != nil) {
    [listener__ onPointerCancelWithPlaynCorePointer_Event:event];
  }
  if (activeLayer_ != nil) {
    [((id<PlaynCoreDispatcher>) NIL_CHK(dispatcher_)) dispatchWithPlaynCoreAbstractLayer:activeLayer_ withIOSClass:[IOSClass classWithProtocol:@protocol(PlaynCorePointer_Listener)] withId:event withPlaynCoreAbstractLayer_Interaction:CANCEL_];
    activeLayer_ = nil;
  }
  return [((id<PlaynCoreEvents_Flags>) [((PlaynCorePointer_Event_Impl *) NIL_CHK(event)) flags]) getPreventDefault];
}

- (id)init {
  if ((self = [super init])) {
    enabled_ = YES;
    dispatcher_ = [PlaynCoreDispatcher SINGLE];
    START_ = [[PlaynCorePointerImpl_$1 alloc] init];
    DRAG_ = [[PlaynCorePointerImpl_$2 alloc] init];
    END_ = [[PlaynCorePointerImpl_$3 alloc] init];
    CANCEL_ = [[PlaynCorePointerImpl_$4 alloc] init];
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCorePointerImpl *typedCopy = (PlaynCorePointerImpl *) copy;
  typedCopy.enabled = enabled_;
  typedCopy.dispatcher = dispatcher_;
  typedCopy.listener_ = listener__;
  typedCopy.activeLayer = activeLayer_;
  typedCopy.START = START_;
  typedCopy.DRAG = DRAG_;
  typedCopy.END = END_;
  typedCopy.CANCEL = CANCEL_;
}

@end
@implementation PlaynCorePointerImpl_$1

- (void)interactWithId:(id<PlaynCorePointer_Listener>)l
                withId:(PlaynCorePointer_Event_Impl *)ev {
  [((id<PlaynCorePointer_Listener>) NIL_CHK(l)) onPointerStartWithPlaynCorePointer_Event:ev];
}

- (id)init {
  return [super init];
}

@end
@implementation PlaynCorePointerImpl_$2

- (void)interactWithId:(id<PlaynCorePointer_Listener>)l
                withId:(PlaynCorePointer_Event_Impl *)ev {
  [((id<PlaynCorePointer_Listener>) NIL_CHK(l)) onPointerDragWithPlaynCorePointer_Event:ev];
}

- (id)init {
  return [super init];
}

@end
@implementation PlaynCorePointerImpl_$3

- (void)interactWithId:(id<PlaynCorePointer_Listener>)l
                withId:(PlaynCorePointer_Event_Impl *)ev {
  [((id<PlaynCorePointer_Listener>) NIL_CHK(l)) onPointerEndWithPlaynCorePointer_Event:ev];
}

- (id)init {
  return [super init];
}

@end
@implementation PlaynCorePointerImpl_$4

- (void)interactWithId:(id<PlaynCorePointer_Listener>)l
                withId:(PlaynCorePointer_Event_Impl *)ev {
  [((id<PlaynCorePointer_Listener>) NIL_CHK(l)) onPointerCancelWithPlaynCorePointer_Event:ev];
}

- (id)init {
  return [super init];
}

@end