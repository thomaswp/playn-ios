//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/util/Dragger.java
//
//  Created by Thomas on 7/25/13.
//

#include "playn/core/Pointer.h"
#include "pythagoras/f/IPoint.h"
#include "pythagoras/f/Point.h"
#include "tripleplay/util/Dragger.h"

@implementation TripleplayUtilDragger

@synthesize _start = _start_;
@synthesize _current = _current_;

- (void)onDragStartWithPythagorasFIPoint:(id<PythagorasFIPoint>)start {
}

- (void)onDraggedWithPythagorasFIPoint:(id<PythagorasFIPoint>)current
                 withPythagorasFIPoint:(id<PythagorasFIPoint>)start {
}

- (void)onDragEndWithPythagorasFIPoint:(id<PythagorasFIPoint>)current
                 withPythagorasFIPoint:(id<PythagorasFIPoint>)start {
}

- (void)onDragCancelWithPythagorasFIPoint:(id<PythagorasFIPoint>)start {
}

- (void)onPointerStartWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  [self onDragStartWithPythagorasFIPoint:[((PythagorasFPoint *) nil_chk(_start_)) setWithFloat:[((id<PlaynCorePointer_Event>) nil_chk(event)) x] withFloat:[((id<PlaynCorePointer_Event>) nil_chk(event)) y]]];
}

- (void)onPointerDragWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  [self onDraggedWithPythagorasFIPoint:[((PythagorasFPoint *) nil_chk(_current_)) setWithFloat:[((id<PlaynCorePointer_Event>) nil_chk(event)) x] withFloat:[((id<PlaynCorePointer_Event>) nil_chk(event)) y]] withPythagorasFIPoint:_start_];
}

- (void)onPointerEndWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  [self onDragEndWithPythagorasFIPoint:[((PythagorasFPoint *) nil_chk(_current_)) setWithFloat:[((id<PlaynCorePointer_Event>) nil_chk(event)) x] withFloat:[((id<PlaynCorePointer_Event>) nil_chk(event)) y]] withPythagorasFIPoint:_start_];
}

- (void)onPointerCancelWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event {
  [self onDragCancelWithPythagorasFIPoint:_start_];
}

- (id)init {
  if ((self = [super init])) {
    _start_ = [[PythagorasFPoint alloc] init];
    _current_ = [[PythagorasFPoint alloc] init];
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUtilDragger *typedCopy = (TripleplayUtilDragger *) copy;
  typedCopy._start = _start_;
  typedCopy._current = _current_;
}

@end
