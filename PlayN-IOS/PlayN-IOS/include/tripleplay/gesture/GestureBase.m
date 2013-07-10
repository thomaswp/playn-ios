//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/gesture/GestureBase.java
//
//  Created by Thomas on 7/10/13.
//

#import "IOSObjectArray.h"
#import "java/lang/Boolean.h"
#import "react/Signal.h"
#import "react/SignalView.h"
#import "react/UnitSignal.h"
#import "tripleplay/gesture/Gesture.h"
#import "tripleplay/gesture/GestureBase.h"
#import "tripleplay/gesture/GestureNode.h"
#import "tripleplay/gesture/Log.h"
#import "tripleplay/util/Logger.h"

@implementation TripleplayGestureGestureBase

@synthesize _state = _state_;
@synthesize _started = _started_;
@synthesize _completed = _completed_;
@synthesize _greedy = _greedy_;

- (id)greedyWithBOOL:(BOOL)value {
  _greedy_ = value;
  return [self asT];
}

- (BOOL)greedy {
  return _greedy_;
}

- (void)start {
  [self setStateWithTripleplayGestureGesture_StateEnum:[TripleplayGestureGesture_StateEnum PASSIVE]];
}

- (void)cancel {
  [self setStateWithTripleplayGestureGesture_StateEnum:[TripleplayGestureGesture_StateEnum UNQUALIFIED]];
}

- (void)evaluateWithTripleplayGestureGestureNode:(TripleplayGestureGestureNode *)node {
  if (_state_ == [TripleplayGestureGesture_StateEnum PASSIVE] || _state_ == [TripleplayGestureGesture_StateEnum GREEDY]) [self updateStateWithTripleplayGestureGestureNode:node];
}

- (TripleplayGestureGesture_StateEnum *)state {
  return _state_;
}

- (id<ReactSignalView>)started {
  return _started_;
}

- (id<ReactSignalView>)completed {
  return _completed_;
}

- (void)clearMemory {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)updateStateWithTripleplayGestureGestureNode:(TripleplayGestureGestureNode *)node {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)setStateWithTripleplayGestureGesture_StateEnum:(TripleplayGestureGesture_StateEnum *)state {
  if (state == _state_) return;
  if (state == [TripleplayGestureGesture_StateEnum GREEDY] && _state_ != [TripleplayGestureGesture_StateEnum PASSIVE]) [((TripleplayUtilLogger *) NIL_CHK([TripleplayGestureLog log])) warningWithNSString:@"Transitioning to GREEDY from !PASSIVE" withNSObjectArray:[IOSObjectArray arrayWithType:[IOSClass classWithClass:[NSObject class]] count:4, @"current", _state_, @"gesture", self ]];
  TripleplayGestureGesture_StateEnum *previous = _state_;
  _state_ = state;
  if (state == [TripleplayGestureGesture_StateEnum GREEDY]) [((ReactUnitSignal *) NIL_CHK(_started_)) emit];
  if ((state == [TripleplayGestureGesture_StateEnum UNQUALIFIED] || state == [TripleplayGestureGesture_StateEnum PASSIVE]) && previous == [TripleplayGestureGesture_StateEnum GREEDY]) [((ReactSignal *) NIL_CHK(_completed_)) emitWithId:[JavaLangBoolean valueOfWithBOOL:NO]];
  if (state == [TripleplayGestureGesture_StateEnum COMPLETE]) [((ReactSignal *) NIL_CHK(_completed_)) emitWithId:[JavaLangBoolean valueOfWithBOOL:YES]];
  if (state == [TripleplayGestureGesture_StateEnum PASSIVE]) [self clearMemory];
}

- (id)asT {
  return (TripleplayGestureGestureBase *) self;
}

- (id)init {
  if ((self = [super init])) {
    _state_ = [TripleplayGestureGesture_StateEnum PASSIVE];
    _started_ = [[ReactUnitSignal alloc] init];
    _completed_ = ((ReactSignal *) [ReactSignal create]);
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayGestureGestureBase *typedCopy = (TripleplayGestureGestureBase *) copy;
  typedCopy._state = _state_;
  typedCopy._started = _started_;
  typedCopy._completed = _completed_;
  typedCopy._greedy = _greedy_;
}

@end
