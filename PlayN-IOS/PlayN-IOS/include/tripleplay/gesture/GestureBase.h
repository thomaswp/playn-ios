//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/gesture/GestureBase.java
//
//  Created by Thomas on 7/10/13.
//

@class ReactSignal;
@class ReactUnitSignal;
@class TripleplayGestureGestureNode;
@class TripleplayGestureGesture_StateEnum;
@protocol ReactSignalView;

#import "JreEmulation.h"
#import "tripleplay/gesture/Gesture.h"

@interface TripleplayGestureGestureBase : NSObject < TripleplayGestureGesture > {
 @public
  TripleplayGestureGesture_StateEnum *_state_;
  ReactUnitSignal *_started_;
  ReactSignal *_completed_;
  BOOL _greedy_;
}

@property (nonatomic, strong) TripleplayGestureGesture_StateEnum *_state;
@property (nonatomic, strong) ReactUnitSignal *_started;
@property (nonatomic, strong) ReactSignal *_completed;
@property (nonatomic, assign) BOOL _greedy;

- (id)greedyWithBOOL:(BOOL)value;
- (BOOL)greedy;
- (void)start;
- (void)cancel;
- (void)evaluateWithTripleplayGestureGestureNode:(TripleplayGestureGestureNode *)node;
- (TripleplayGestureGesture_StateEnum *)state;
- (id<ReactSignalView>)started;
- (id<ReactSignalView>)completed;
- (void)clearMemory;
- (void)updateStateWithTripleplayGestureGestureNode:(TripleplayGestureGestureNode *)node;
- (void)setStateWithTripleplayGestureGesture_StateEnum:(TripleplayGestureGesture_StateEnum *)state;
- (id)asT;
- (id)init;
@end