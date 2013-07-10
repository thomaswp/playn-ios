//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/game/UIAnimScreen.java
//
//  Created by Thomas on 7/10/13.
//

#import "playn/core/util/Clock.h"
#import "tripleplay/game/UIAnimScreen.h"
#import "tripleplay/ui/Interface.h"

@implementation TripleplayGameUIAnimScreen

@synthesize iface = iface_;

- (void)updateWithInt:(int)delta {
  [super updateWithInt:delta];
  [((TripleplayUiInterface *) NIL_CHK(iface_)) updateWithInt:delta];
}

- (void)paintWithPlaynCoreUtilClock:(id<PlaynCoreUtilClock>)clock {
  [super paintWithPlaynCoreUtilClock:clock];
  [((TripleplayUiInterface *) NIL_CHK(iface_)) paintWithPlaynCoreUtilClock:clock];
}

- (id)init {
  if ((self = [super init])) {
    iface_ = [[TripleplayUiInterface alloc] init];
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayGameUIAnimScreen *typedCopy = (TripleplayGameUIAnimScreen *) copy;
  typedCopy.iface = iface_;
}

@end
