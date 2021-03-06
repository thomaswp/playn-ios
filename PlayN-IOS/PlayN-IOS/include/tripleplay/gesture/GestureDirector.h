//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/gesture/GestureDirector.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !TripleplayGestureGestureDirector_RESTRICT
#define TripleplayGestureGestureDirector_INCLUDE_ALL 1
#endif
#undef TripleplayGestureGestureDirector_RESTRICT

#if !defined (_TripleplayGestureGestureDirector_) && (TripleplayGestureGestureDirector_INCLUDE_ALL || TripleplayGestureGestureDirector_INCLUDE)
#define _TripleplayGestureGestureDirector_

@class ReactValue;
@class TripleplayGestureGestureNode;
@class TripleplayUtilTimer;
@protocol JavaUtilMap;
@protocol JavaUtilSet;
@protocol PlaynCoreTouch_Event;
@protocol PythagorasFIRectangle;
@protocol ReactValueView;
@protocol TripleplayGestureGesture;

#define PlaynCoreTouch_RESTRICT 1
#define PlaynCoreTouch_LayerListener_INCLUDE 1
#include "playn/core/Touch.h"

#define TripleplayGestureGestureDirector_PAUSE_DELAY 500

@interface TripleplayGestureGestureDirector : NSObject < PlaynCoreTouch_LayerListener > {
 @public
  id<PythagorasFIRectangle> bounds_;
  TripleplayUtilTimer *_timer_;
  id<JavaUtilMap> _currentTouches_;
  id<JavaUtilMap> _currentMoves_;
  id<JavaUtilSet> _gestures_;
  ReactValue *_greedy_;
}

@property (nonatomic, strong) id<PythagorasFIRectangle> bounds;
@property (nonatomic, strong) TripleplayUtilTimer *_timer;
@property (nonatomic, strong) id<JavaUtilMap> _currentTouches;
@property (nonatomic, strong) id<JavaUtilMap> _currentMoves;
@property (nonatomic, strong) id<JavaUtilSet> _gestures;
@property (nonatomic, strong) ReactValue *_greedy;

+ (int)PAUSE_DELAY;
- (id)initWithPythagorasFIRectangle:(id<PythagorasFIRectangle>)bounds
            withTripleplayUtilTimer:(TripleplayUtilTimer *)timer;
- (TripleplayGestureGestureDirector *)addWithTripleplayGestureGesture:(id<TripleplayGestureGesture>)gesture;
- (BOOL)removeWithTripleplayGestureGesture:(id<TripleplayGestureGesture>)gesture;
- (BOOL)touchInBoundsWithPlaynCoreTouch_Event:(id<PlaynCoreTouch_Event>)touch;
- (BOOL)trackingTouchWithPlaynCoreTouch_Event:(id<PlaynCoreTouch_Event>)touch;
- (id<ReactValueView>)greedyGesture;
- (void)onTouchStartWithPlaynCoreTouch_Event:(id<PlaynCoreTouch_Event>)touch;
- (void)onTouchMoveWithPlaynCoreTouch_Event:(id<PlaynCoreTouch_Event>)touch;
- (void)onTouchEndWithPlaynCoreTouch_Event:(id<PlaynCoreTouch_Event>)touch;
- (void)onTouchCancelWithPlaynCoreTouch_Event:(id<PlaynCoreTouch_Event>)touch;
- (void)onTouchPauseWithPlaynCoreTouch_Event:(id<PlaynCoreTouch_Event>)touch;
- (void)evaluateGesturesWithTripleplayGestureGestureNode:(TripleplayGestureGestureNode *)node;
@end
#endif

#if !defined (_TripleplayGestureGestureDirector_$1_) && (TripleplayGestureGestureDirector_INCLUDE_ALL || TripleplayGestureGestureDirector_$1_INCLUDE)
#define _TripleplayGestureGestureDirector_$1_

@class TripleplayGestureGestureDirector;
@class TripleplayGestureGestureNode;

#define JavaLangRunnable_RESTRICT 1
#define JavaLangRunnable_INCLUDE 1
#include "java/lang/Runnable.h"

@interface TripleplayGestureGestureDirector_$1 : NSObject < JavaLangRunnable > {
 @public
  TripleplayGestureGestureDirector *this$0_;
  TripleplayGestureGestureNode *val$node_;
}

@property (nonatomic, strong) TripleplayGestureGestureDirector *this$0;
@property (nonatomic, strong) TripleplayGestureGestureNode *val$node;

- (void)run;
- (id)initWithTripleplayGestureGestureDirector:(TripleplayGestureGestureDirector *)outer$
              withTripleplayGestureGestureNode:(TripleplayGestureGestureNode *)capture$0;
@end
#endif
