//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/bgs/Scale9Background.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSFloatArray.h"
#include "java/lang/Float.h"
#include "playn/core/Image.h"
#include "playn/core/Log.h"
#include "playn/core/PlayN.h"
#include "playn/core/Surface.h"
#include "pythagoras/f/IDimension.h"
#include "tripleplay/ui/Background.h"
#include "tripleplay/ui/bgs/Scale9Background.h"

@implementation TripleplayUiBgsScale9Background

@synthesize xaxis = xaxis_;
@synthesize yaxis = yaxis_;
@synthesize _image = _image_;

- (id)initWithPlaynCoreImage:(id<PlaynCoreImage>)image {
  if ((self = [super init])) {
    if (![((id<PlaynCoreImage>) nil_chk(image)) isReady]) {
      [((id<PlaynCoreLog>) nil_chk([PlaynCorePlayN log])) warnWithNSString:[NSString stringWithFormat:@"Scale9 image not preloaded: %@", image]];
    }
    _image_ = image;
    xaxis_ = [[TripleplayUiBgsScale9Background_Axis3 alloc] initWithFloat:[((id<PlaynCoreImage>) nil_chk(image)) width]];
    yaxis_ = [[TripleplayUiBgsScale9Background_Axis3 alloc] initWithFloat:[((id<PlaynCoreImage>) nil_chk(image)) height]];
  }
  return self;
}

- (TripleplayUiBackground_Instance *)instantiateWithPythagorasFIDimension:(id<PythagorasFIDimension>)size {
  return [[TripleplayUiBackground_LayerInstance alloc] initWithTripleplayUiBackground:self withPythagorasFIDimension:size withPlaynCoreImmediateLayer_Renderer:[[TripleplayUiBgsScale9Background_$1 alloc] initWithTripleplayUiBgsScale9Background:self withPythagorasFIDimension:size]];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiBgsScale9Background *typedCopy = (TripleplayUiBgsScale9Background *) copy;
  typedCopy.xaxis = xaxis_;
  typedCopy.yaxis = yaxis_;
  typedCopy._image = _image_;
}

@end
@implementation TripleplayUiBgsScale9Background_Axis3

@synthesize _offsets = _offsets_;
@synthesize _lengths = _lengths_;

- (id)initWithFloat:(float)length {
  if ((self = [super init])) {
    float d = length / 3;
    _lengths_ = [IOSFloatArray arrayWithFloats:(float[]){ d, length - 2 * d, d } count:3];
    _offsets_ = [IOSFloatArray arrayWithFloats:(float[]){ 0, [((IOSFloatArray *) nil_chk(_lengths_)) floatAtIndex:0], [((IOSFloatArray *) nil_chk(_lengths_)) floatAtIndex:0] + [((IOSFloatArray *) nil_chk(_lengths_)) floatAtIndex:1] } count:3];
  }
  return self;
}

- (id)initWithFloat:(float)length
withTripleplayUiBgsScale9Background_Axis3:(TripleplayUiBgsScale9Background_Axis3 *)src {
  if ((self = [super init])) {
    _lengths_ = [IOSFloatArray arrayWithFloats:(float[]){ [((TripleplayUiBgsScale9Background_Axis3 *) nil_chk(src)) sizeWithInt:0], length - [((TripleplayUiBgsScale9Background_Axis3 *) nil_chk(src)) sizeWithInt:0] - [((TripleplayUiBgsScale9Background_Axis3 *) nil_chk(src)) sizeWithInt:2], [((TripleplayUiBgsScale9Background_Axis3 *) nil_chk(src)) sizeWithInt:2] } count:3];
    _offsets_ = [IOSFloatArray arrayWithFloats:(float[]){ 0, [((IOSFloatArray *) nil_chk(_lengths_)) floatAtIndex:0], [((IOSFloatArray *) nil_chk(_lengths_)) floatAtIndex:0] + [((IOSFloatArray *) nil_chk(_lengths_)) floatAtIndex:1] } count:3];
  }
  return self;
}

- (float)coordWithInt:(int)idx {
  return [((IOSFloatArray *) nil_chk(_offsets_)) floatAtIndex:idx];
}

- (float)sizeWithInt:(int)idx {
  return [((IOSFloatArray *) nil_chk(_lengths_)) floatAtIndex:idx];
}

- (TripleplayUiBgsScale9Background_Axis3 *)setWithInt:(int)idx
                                            withFloat:(float)coord
                                            withFloat:(float)size {
  (*[((IOSFloatArray *) nil_chk(_offsets_)) floatRefAtIndex:idx]) = coord;
  (*[((IOSFloatArray *) nil_chk(_lengths_)) floatRefAtIndex:idx]) = size;
  return self;
}

- (TripleplayUiBgsScale9Background_Axis3 *)resizeWithInt:(int)idx
                                               withFloat:(float)size {
  float excess = [((IOSFloatArray *) nil_chk(_lengths_)) floatAtIndex:idx] - size;
  (*[((IOSFloatArray *) nil_chk(_lengths_)) floatRefAtIndex:idx]) = size;
  {
    float half;
    switch (idx) {
      case 0:
      (*[((IOSFloatArray *) nil_chk(_offsets_)) floatRefAtIndex:1]) -= excess;
      (*[((IOSFloatArray *) nil_chk(_lengths_)) floatRefAtIndex:1]) += excess;
      break;
      case 1:
      half = excess * .5f;
      (*[((IOSFloatArray *) nil_chk(_lengths_)) floatRefAtIndex:0]) += half;
      (*[((IOSFloatArray *) nil_chk(_lengths_)) floatRefAtIndex:2]) += half;
      (*[((IOSFloatArray *) nil_chk(_offsets_)) floatRefAtIndex:1]) += half;
      (*[((IOSFloatArray *) nil_chk(_offsets_)) floatRefAtIndex:2]) -= half;
      break;
      case 2:
      (*[((IOSFloatArray *) nil_chk(_offsets_)) floatRefAtIndex:2]) -= excess;
      (*[((IOSFloatArray *) nil_chk(_lengths_)) floatRefAtIndex:1]) += excess;
      break;
    }
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiBgsScale9Background_Axis3 *typedCopy = (TripleplayUiBgsScale9Background_Axis3 *) copy;
  typedCopy._offsets = _offsets_;
  typedCopy._lengths = _lengths_;
}

@end
@implementation TripleplayUiBgsScale9Background_$1

@synthesize this$0 = this$0_;
@synthesize dx = dx_;
@synthesize dy = dy_;
@synthesize val$size = val$size_;

- (void)renderWithPlaynCoreSurface:(id<PlaynCoreSurface>)surf {
  (void) [((id<PlaynCoreSurface>) nil_chk(surf)) save];
  if (this$0_.alpha_ != nil) (void) [((id<PlaynCoreSurface>) nil_chk(surf)) setAlphaWithFloat:[this$0_.alpha_ floatValue]];
  for (int yy = 0; yy < 3; ++yy) for (int xx = 0; xx < 3; ++xx) {
    [self drawPartWithPlaynCoreSurface:surf withInt:xx withInt:yy];
  }
  if (this$0_.alpha_ != nil) (void) [((id<PlaynCoreSurface>) nil_chk(surf)) setAlphaWithFloat:1];
  (void) [((id<PlaynCoreSurface>) nil_chk(surf)) restore];
}

- (void)drawPartWithPlaynCoreSurface:(id<PlaynCoreSurface>)surf
                             withInt:(int)x
                             withInt:(int)y {
  if ([((TripleplayUiBgsScale9Background_Axis3 *) nil_chk(dx_)) sizeWithInt:x] == 0 || [((TripleplayUiBgsScale9Background_Axis3 *) nil_chk(dy_)) sizeWithInt:y] == 0) return;
  (void) [((id<PlaynCoreSurface>) nil_chk(surf)) drawImageWithPlaynCoreImage:this$0_._image withFloat:[((TripleplayUiBgsScale9Background_Axis3 *) nil_chk(dx_)) coordWithInt:x] withFloat:[((TripleplayUiBgsScale9Background_Axis3 *) nil_chk(dy_)) coordWithInt:y] withFloat:[((TripleplayUiBgsScale9Background_Axis3 *) nil_chk(dx_)) sizeWithInt:x] withFloat:[((TripleplayUiBgsScale9Background_Axis3 *) nil_chk(dy_)) sizeWithInt:y] withFloat:[((TripleplayUiBgsScale9Background_Axis3 *) nil_chk(this$0_.xaxis)) coordWithInt:x] withFloat:[((TripleplayUiBgsScale9Background_Axis3 *) nil_chk(this$0_.yaxis)) coordWithInt:y] withFloat:[((TripleplayUiBgsScale9Background_Axis3 *) nil_chk(this$0_.xaxis)) sizeWithInt:x] withFloat:[((TripleplayUiBgsScale9Background_Axis3 *) nil_chk(this$0_.yaxis)) sizeWithInt:y]];
}

- (id)initWithTripleplayUiBgsScale9Background:(TripleplayUiBgsScale9Background *)outer$
                    withPythagorasFIDimension:(id<PythagorasFIDimension>)capture$0 {
  if ((self = [super init])) {
    this$0_ = outer$;
    val$size_ = capture$0;
    dx_ = [[TripleplayUiBgsScale9Background_Axis3 alloc] initWithFloat:[((id<PythagorasFIDimension>) nil_chk(val$size_)) width] withTripleplayUiBgsScale9Background_Axis3:outer$.xaxis];
    dy_ = [[TripleplayUiBgsScale9Background_Axis3 alloc] initWithFloat:[((id<PythagorasFIDimension>) nil_chk(val$size_)) height] withTripleplayUiBgsScale9Background_Axis3:outer$.yaxis];
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiBgsScale9Background_$1 *typedCopy = (TripleplayUiBgsScale9Background_$1 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.dx = dx_;
  typedCopy.dy = dy_;
  typedCopy.val$size = val$size_;
}

@end
