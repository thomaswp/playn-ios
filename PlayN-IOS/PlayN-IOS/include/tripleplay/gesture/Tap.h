//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/gesture/Tap.java
//
//  Created by Thomas on 7/10/13.
//

@class TripleplayGestureGestureNode;
@protocol JavaUtilMap;

#import "JreEmulation.h"
#import "tripleplay/gesture/GestureBase.h"

#define TripleplayGestureTap_MOVE_THRESHOLD 10

@interface TripleplayGestureTap : TripleplayGestureGestureBase {
 @public
  int _touches_;
  id<JavaUtilMap> _startPoints_;
}

@property (nonatomic, assign) int _touches;
@property (nonatomic, strong) id<JavaUtilMap> _startPoints;

+ (int)MOVE_THRESHOLD;
- (id)init;
- (id)initWithInt:(int)touches;
- (void)clearMemory;
- (void)updateStateWithTripleplayGestureGestureNode:(TripleplayGestureGestureNode *)node;
@end
