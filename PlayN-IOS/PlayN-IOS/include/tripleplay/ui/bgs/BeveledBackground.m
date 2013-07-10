//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/bgs/BeveledBackground.java
//
//  Created by Thomas on 7/10/13.
//

#import "java/lang/Float.h"
#import "playn/core/Surface.h"
#import "pythagoras/f/IDimension.h"
#import "tripleplay/ui/Background.h"
#import "tripleplay/ui/bgs/BeveledBackground.h"

@implementation TripleplayUiBgsBeveledBackground

@synthesize _bgColor = _bgColor_;
@synthesize _ulColor = _ulColor_;
@synthesize _brColor = _brColor_;

- (id)initWithInt:(int)bgColor
          withInt:(int)ulColor
          withInt:(int)brColor {
  if ((self = [super init])) {
    _bgColor_ = bgColor;
    _ulColor_ = ulColor;
    _brColor_ = brColor;
  }
  return self;
}

- (TripleplayUiBackground_Instance *)instantiateWithPythagorasFIDimension:(id<PythagorasFIDimension>)size {
  return [[TripleplayUiBackground_LayerInstance alloc] initWithTripleplayUiBackground:self withPythagorasFIDimension:size withPlaynCoreImmediateLayer_Renderer:[[TripleplayUiBgsBeveledBackground_$1 alloc] initWithTripleplayUiBgsBeveledBackground:self withPythagorasFIDimension:size]];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiBgsBeveledBackground *typedCopy = (TripleplayUiBgsBeveledBackground *) copy;
  typedCopy._bgColor = _bgColor_;
  typedCopy._ulColor = _ulColor_;
  typedCopy._brColor = _brColor_;
}

@end
@implementation TripleplayUiBgsBeveledBackground_$1

@synthesize this$0 = this$0_;
@synthesize val$size = val$size_;

- (void)renderWithPlaynCoreSurface:(id<PlaynCoreSurface>)surf {
  float width = [((id<PythagorasFIDimension>) NIL_CHK(val$size_)) width], height = [((id<PythagorasFIDimension>) NIL_CHK(val$size_)) height], bot = height, right = width;
  if (this$0_.alpha_ != nil) (void) [((id<PlaynCoreSurface>) NIL_CHK(surf)) setAlphaWithFloat:[this$0_.alpha_ floatValue]];
  (void) [((id<PlaynCoreSurface>) [((id<PlaynCoreSurface>) NIL_CHK(surf)) setFillColorWithInt:this$0_._bgColor]) fillRectWithFloat:0 withFloat:0 withFloat:width withFloat:height];
  (void) [((id<PlaynCoreSurface>) [((id<PlaynCoreSurface>) [((id<PlaynCoreSurface>) NIL_CHK(surf)) setFillColorWithInt:this$0_._ulColor]) drawLineWithFloat:0 withFloat:0 withFloat:right withFloat:0 withFloat:2]) drawLineWithFloat:0 withFloat:0 withFloat:0 withFloat:bot withFloat:2];
  (void) [((id<PlaynCoreSurface>) [((id<PlaynCoreSurface>) [((id<PlaynCoreSurface>) [((id<PlaynCoreSurface>) [((id<PlaynCoreSurface>) NIL_CHK(surf)) setFillColorWithInt:this$0_._brColor]) drawLineWithFloat:right withFloat:0 withFloat:right withFloat:bot withFloat:1]) drawLineWithFloat:1 withFloat:bot - 1 withFloat:right - 1 withFloat:bot - 1 withFloat:1]) drawLineWithFloat:0 withFloat:bot withFloat:right withFloat:bot withFloat:1]) drawLineWithFloat:right - 1 withFloat:1 withFloat:right - 1 withFloat:bot - 1 withFloat:1];
  if (this$0_.alpha_ != nil) (void) [((id<PlaynCoreSurface>) NIL_CHK(surf)) setAlphaWithFloat:1];
}

- (id)initWithTripleplayUiBgsBeveledBackground:(TripleplayUiBgsBeveledBackground *)outer$
                     withPythagorasFIDimension:(id<PythagorasFIDimension>)capture$0 {
  if ((self = [super init])) {
    this$0_ = outer$;
    val$size_ = capture$0;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiBgsBeveledBackground_$1 *typedCopy = (TripleplayUiBgsBeveledBackground_$1 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.val$size = val$size_;
}

@end
