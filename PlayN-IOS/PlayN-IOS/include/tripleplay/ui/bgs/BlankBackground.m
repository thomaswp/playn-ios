//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/bgs/BlankBackground.java
//
//  Created by Thomas on 7/10/13.
//

#import "playn/core/GroupLayer.h"
#import "pythagoras/f/IDimension.h"
#import "tripleplay/ui/Background.h"
#import "tripleplay/ui/bgs/BlankBackground.h"

@implementation TripleplayUiBgsBlankBackground

- (TripleplayUiBackground_Instance *)instantiateWithPythagorasFIDimension:(id<PythagorasFIDimension>)size {
  return [[TripleplayUiBgsBlankBackground_$1 alloc] initWithTripleplayUiBgsBlankBackground:self withPythagorasFIDimension:size];
}

- (id)init {
  return [super init];
}

@end
@implementation TripleplayUiBgsBlankBackground_$1

- (void)addToWithPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)parent
                           withFloat:(float)x
                           withFloat:(float)y
                           withFloat:(float)depthAdjust {
}

- (void)destroy {
}

- (id)initWithTripleplayUiBgsBlankBackground:(TripleplayUiBgsBlankBackground *)outer$
                   withPythagorasFIDimension:(id<PythagorasFIDimension>)arg$0 {
  return [super initWithTripleplayUiBackground:outer$ withPythagorasFIDimension:arg$0];
}

@end
