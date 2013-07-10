//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/layout/FlowLayout.java
//
//  Created by Thomas on 7/10/13.
//

#import "java/lang/Float.h"
#import "java/lang/Integer.h"
#import "java/lang/Math.h"
#import "java/util/ArrayList.h"
#import "java/util/List.h"
#import "pythagoras/f/Dimension.h"
#import "pythagoras/f/IDimension.h"
#import "tripleplay/ui/Element.h"
#import "tripleplay/ui/Elements.h"
#import "tripleplay/ui/Layout.h"
#import "tripleplay/ui/Style.h"
#import "tripleplay/ui/layout/FlowLayout.h"

@implementation TripleplayUiLayoutFlowLayout

@synthesize _hgap = _hgap_;
@synthesize _vgap = _vgap_;
@synthesize _wrapWidth = _wrapWidth_;
@synthesize _valign = _valign_;

+ (float)DEFAULT_GAP {
  return TripleplayUiLayoutFlowLayout_DEFAULT_GAP;
}

- (TripleplayUiLayoutFlowLayout *)wrapAtWithFloat:(float)width {
  _wrapWidth_ = [JavaLangFloat valueOfWithFloat:width];
  return self;
}

- (TripleplayUiLayoutFlowLayout *)gapsWithFloat:(float)gap {
  _hgap_ = _vgap_ = gap;
  return self;
}

- (TripleplayUiLayoutFlowLayout *)gapsWithFloat:(float)hgap
                                      withFloat:(float)vgap {
  _hgap_ = hgap;
  _vgap_ = vgap;
  return self;
}

- (TripleplayUiLayoutFlowLayout *)alignWithTripleplayUiStyle_VAlignEnum:(TripleplayUiStyle_VAlignEnum *)align {
  _valign_ = align;
  return self;
}

- (TripleplayUiLayoutFlowLayout *)stretch {
  _valign_ = nil;
  return self;
}

- (PythagorasFDimension *)computeSizeWithTripleplayUiElements:(TripleplayUiElements *)elems
                                                    withFloat:(float)hintX
                                                    withFloat:(float)hintY {
  TripleplayUiLayoutFlowLayout_Metrics *m = [self computeMetricsWithTripleplayUiElements:elems withFloat:hintX withFloat:hintY];
  return ((TripleplayUiLayoutFlowLayout_Metrics *) NIL_CHK(m)).size;
}

- (void)layoutWithTripleplayUiElements:(TripleplayUiElements *)elems
                             withFloat:(float)left
                             withFloat:(float)top
                             withFloat:(float)width
                             withFloat:(float)height {
  TripleplayUiStyle_HAlignEnum *halign = ((TripleplayUiStyle_HAlignEnum *) [self resolveStyleWithTripleplayUiElement:elems withTripleplayUiStyle:[TripleplayUiStyle HALIGN]]);
  TripleplayUiLayoutFlowLayout_Metrics *m = [self computeMetricsWithTripleplayUiElements:elems withFloat:width withFloat:height];
  float y = top + [((TripleplayUiStyle_VAlignEnum *) [self resolveStyleWithTripleplayUiElement:elems withTripleplayUiStyle:[TripleplayUiStyle VALIGN]]) offsetWithFloat:((PythagorasFDimension *) NIL_CHK(m.size)).height_ withFloat:height];
  for (int elemIdx = 0, row = 0, size = [((id<JavaUtilList>) NIL_CHK(m.rowBreaks)) size]; row < size; ++row) {
    PythagorasFDimension *rowSize = ((PythagorasFDimension *) [((id<JavaUtilList>) NIL_CHK(m.rows)) getWithInt:row]);
    float x = left + [((TripleplayUiStyle_HAlignEnum *) NIL_CHK(halign)) offsetWithFloat:((PythagorasFDimension *) NIL_CHK(rowSize)).width_ withFloat:width];
    for (; elemIdx < [((JavaLangInteger *) [((id<JavaUtilList>) NIL_CHK(m.rowBreaks)) getWithInt:row]) intValue]; ++elemIdx) {
      TripleplayUiElement *elem = [((TripleplayUiElements *) NIL_CHK(elems)) childAtWithInt:elemIdx];
      if (![((TripleplayUiElement *) NIL_CHK(elem)) isVisible]) continue;
      id<PythagorasFIDimension> esize = [self preferredSizeWithTripleplayUiElement:elem withFloat:width withFloat:height];
      if (_valign_ == nil) {
        [self setBoundsWithTripleplayUiElement:elem withFloat:x withFloat:y withFloat:[((id<PythagorasFIDimension>) NIL_CHK(esize)) width] withFloat:[((PythagorasFDimension *) NIL_CHK(rowSize)) height]];
      }
      else {
        [self setBoundsWithTripleplayUiElement:elem withFloat:x withFloat:y + [_valign_ offsetWithFloat:[((id<PythagorasFIDimension>) NIL_CHK(esize)) height] withFloat:[((PythagorasFDimension *) NIL_CHK(rowSize)) height]] withFloat:[((id<PythagorasFIDimension>) NIL_CHK(esize)) width] withFloat:[((id<PythagorasFIDimension>) NIL_CHK(esize)) height]];
      }
      x += [((id<PythagorasFIDimension>) NIL_CHK(esize)) width] + _hgap_;
    }
    y += _vgap_ + ((PythagorasFDimension *) NIL_CHK(rowSize)).height_;
  }
}

- (TripleplayUiLayoutFlowLayout_Metrics *)computeMetricsWithTripleplayUiElements:(TripleplayUiElements *)elems
                                                                       withFloat:(float)width
                                                                       withFloat:(float)height {
  TripleplayUiLayoutFlowLayout_Metrics *m = [[TripleplayUiLayoutFlowLayout_Metrics alloc] initWithTripleplayUiLayoutFlowLayout:self];
  if (_wrapWidth_ != nil) width = [_wrapWidth_ floatValue];
  PythagorasFDimension *rowSize = [[PythagorasFDimension alloc] init];
  for (int ii = 0, ll = [((TripleplayUiElements *) NIL_CHK(elems)) childCount]; ii < ll; ++ii) {
    TripleplayUiElement *elem = [((TripleplayUiElements *) NIL_CHK(elems)) childAtWithInt:ii];
    if (![((TripleplayUiElement *) NIL_CHK(elem)) isVisible]) continue;
    id<PythagorasFIDimension> esize = [self preferredSizeWithTripleplayUiElement:elem withFloat:width withFloat:height];
    if (((PythagorasFDimension *) NIL_CHK(rowSize)).width_ > 0 && width > 0 && ((PythagorasFDimension *) NIL_CHK(rowSize)).width_ + _hgap_ + [((id<PythagorasFIDimension>) NIL_CHK(esize)) width] > width) {
      [((TripleplayUiLayoutFlowLayout_Metrics *) NIL_CHK(m)) addBreakWithInt:ii withPythagorasFDimension:rowSize];
      rowSize = [[PythagorasFDimension alloc] initWithPythagorasFIDimension:esize];
    }
    else {
      ((PythagorasFDimension *) NIL_CHK(rowSize)).width_ += (((PythagorasFDimension *) NIL_CHK(rowSize)).width_ > 0 ? _hgap_ : 0) + [((id<PythagorasFIDimension>) NIL_CHK(esize)) width];
      ((PythagorasFDimension *) NIL_CHK(rowSize)).height_ = [JavaLangMath maxWithFloat:[((id<PythagorasFIDimension>) NIL_CHK(esize)) height] withFloat:((PythagorasFDimension *) NIL_CHK(rowSize)).height_];
    }
  }
  [((TripleplayUiLayoutFlowLayout_Metrics *) NIL_CHK(m)) addBreakWithInt:[((TripleplayUiElements *) NIL_CHK(elems)) childCount] withPythagorasFDimension:rowSize];
  return m;
}

- (id)init {
  if ((self = [super init])) {
    _hgap_ = TripleplayUiLayoutFlowLayout_DEFAULT_GAP;
    _vgap_ = TripleplayUiLayoutFlowLayout_DEFAULT_GAP;
    _valign_ = [TripleplayUiStyle_VAlignEnum CENTER];
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiLayoutFlowLayout *typedCopy = (TripleplayUiLayoutFlowLayout *) copy;
  typedCopy._hgap = _hgap_;
  typedCopy._vgap = _vgap_;
  typedCopy._wrapWidth = _wrapWidth_;
  typedCopy._valign = _valign_;
}

@end
@implementation TripleplayUiLayoutFlowLayout_Metrics

@synthesize this$0 = this$0_;
@synthesize size = size_;
@synthesize rows = rows_;
@synthesize rowBreaks = rowBreaks_;

- (void)addBreakWithInt:(int)idx
withPythagorasFDimension:(PythagorasFDimension *)lastRowSize {
  if (((PythagorasFDimension *) NIL_CHK(lastRowSize)).height_ == 0 && ((PythagorasFDimension *) NIL_CHK(lastRowSize)).width_ == 0) return;
  [((id<JavaUtilList>) NIL_CHK(rowBreaks_)) addWithId:[JavaLangInteger valueOfWithInt:idx]];
  [((id<JavaUtilList>) NIL_CHK(rows_)) addWithId:lastRowSize];
  ((PythagorasFDimension *) NIL_CHK(size_)).height_ += (((PythagorasFDimension *) NIL_CHK(size_)).height_ > 0 ? this$0_._vgap : 0) + ((PythagorasFDimension *) NIL_CHK(lastRowSize)).height_;
  ((PythagorasFDimension *) NIL_CHK(size_)).width_ = [JavaLangMath maxWithFloat:((PythagorasFDimension *) NIL_CHK(size_)).width_ withFloat:((PythagorasFDimension *) NIL_CHK(lastRowSize)).width_];
}

- (id)initWithTripleplayUiLayoutFlowLayout:(TripleplayUiLayoutFlowLayout *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
    size_ = [[PythagorasFDimension alloc] init];
    rows_ = [[JavaUtilArrayList alloc] init];
    rowBreaks_ = [[JavaUtilArrayList alloc] init];
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiLayoutFlowLayout_Metrics *typedCopy = (TripleplayUiLayoutFlowLayout_Metrics *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.size = size_;
  typedCopy.rows = rows_;
  typedCopy.rowBreaks = rowBreaks_;
}

@end
