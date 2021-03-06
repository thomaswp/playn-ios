//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/util/MouseInput.java
//
//  Created by Thomas on 7/25/13.
//

#include "playn/core/Mouse.h"
#include "tripleplay/util/Input.h"
#include "tripleplay/util/MouseInput.h"

@implementation TripleplayUtilMouseInput

@synthesize _reactor = _reactor_;
@synthesize mlistener = mlistener_;

- (id<TripleplayUtilInput_Registration>)register__WithTripleplayUtilInput_Region:(TripleplayUtilInput_Region *)region
                                                                          withId:(id<PlaynCoreMouse_Listener>)listener {
  return [((TripleplayUtilMouseInput_MouseReactor *) nil_chk(_reactor_)) register__WithTripleplayUtilInput_Region:region withId:listener];
}

- (id)init {
  if ((self = [super init])) {
    _reactor_ = [[TripleplayUtilMouseInput_MouseReactor alloc] initWithTripleplayUtilMouseInput:self];
    mlistener_ = _reactor_;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUtilMouseInput *typedCopy = (TripleplayUtilMouseInput *) copy;
  typedCopy._reactor = _reactor_;
  typedCopy.mlistener = mlistener_;
}

@end
@implementation TripleplayUtilMouseInput_MouseReactor

@synthesize _target = _target_;
@synthesize _down = _down_;

- (void)onMouseDownWithPlaynCoreMouse_ButtonEvent:(id<PlaynCoreMouse_ButtonEvent>)event {
  _target_ = [self hitTestWithPlaynCoreEvents_Position:event];
  if (_target_ != nil) {
    _down_ = YES;
    [_target_ onMouseDownWithPlaynCoreMouse_ButtonEvent:event];
  }
}

- (void)onMouseMoveWithPlaynCoreMouse_MotionEvent:(id<PlaynCoreMouse_MotionEvent>)event {
  if (!_down_) {
    _target_ = [self hitTestWithPlaynCoreEvents_Position:event];
  }
  if (_target_ != nil) {
    [_target_ onMouseMoveWithPlaynCoreMouse_MotionEvent:event];
  }
}

- (void)onMouseUpWithPlaynCoreMouse_ButtonEvent:(id<PlaynCoreMouse_ButtonEvent>)event {
  if (_down_) {
    _down_ = NO;
    id<PlaynCoreMouse_Listener> oldHover = _target_;
    _target_ = [self hitTestWithPlaynCoreEvents_Position:event];
    [((id<PlaynCoreMouse_Listener>) nil_chk(oldHover)) onMouseUpWithPlaynCoreMouse_ButtonEvent:event];
  }
}

- (void)onMouseWheelScrollWithPlaynCoreMouse_WheelEvent:(id<PlaynCoreMouse_WheelEvent>)event {
  if (_target_ != nil) {
    [_target_ onMouseWheelScrollWithPlaynCoreMouse_WheelEvent:event];
  }
}

- (id)initWithTripleplayUtilMouseInput:(TripleplayUtilMouseInput *)outer$ {
  return [super init];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUtilMouseInput_MouseReactor *typedCopy = (TripleplayUtilMouseInput_MouseReactor *) copy;
  typedCopy._target = _target_;
  typedCopy._down = _down_;
}

@end
