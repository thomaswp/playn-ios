//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/Shim.java
//
//  Created by Thomas on 7/10/13.
//

#import "IOSClass.h"
#import "pythagoras/f/Dimension.h"
#import "pythagoras/f/IDimension.h"
#import "tripleplay/ui/Shim.h"

@implementation TripleplayUiShim

- (id)initWithFloat:(float)width
          withFloat:(float)height {
  return [self initTripleplayUiShimWithPythagorasFIDimension:[[PythagorasFDimension alloc] initWithFloat:width withFloat:height]];
}

- (id)initTripleplayUiShimWithPythagorasFIDimension:(id<PythagorasFIDimension>)size {
  return [super initWithPythagorasFIDimension:size];
}

- (id)initWithPythagorasFIDimension:(id<PythagorasFIDimension>)size {
  return [self initTripleplayUiShimWithPythagorasFIDimension:size];
}

- (IOSClass *)getStyleClass {
  return [IOSClass classWithClass:[TripleplayUiShim class]];
}

@end
