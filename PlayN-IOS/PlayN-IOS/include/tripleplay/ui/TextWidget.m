//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/TextWidget.java
//
//  Created by Thomas on 7/10/13.
//

#import "java/lang/Boolean.h"
#import "java/lang/Integer.h"
#import "java/lang/Math.h"
#import "java/lang/Throwable.h"
#import "playn/core/Canvas.h"
#import "playn/core/Graphics.h"
#import "playn/core/GroupLayer.h"
#import "playn/core/ImageLayer.h"
#import "playn/core/Layer.h"
#import "playn/core/PlayN.h"
#import "playn/core/TextFormat.h"
#import "playn/core/TextLayout.h"
#import "pythagoras/f/Dimension.h"
#import "pythagoras/f/FloatMath.h"
#import "pythagoras/f/MathUtil.h"
#import "react/Slot.h"
#import "react/UnitSlot.h"
#import "tripleplay/ui/Background.h"
#import "tripleplay/ui/Constraints.h"
#import "tripleplay/ui/Element.h"
#import "tripleplay/ui/Icon.h"
#import "tripleplay/ui/Layout.h"
#import "tripleplay/ui/Style.h"
#import "tripleplay/ui/TextWidget.h"
#import "tripleplay/ui/Widget.h"
#import "tripleplay/util/EffectRenderer.h"

@implementation TripleplayUiTextWidget

@synthesize _tglyph = _tglyph_;
@synthesize _ilayer = _ilayer_;

- (NSString *)text {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<TripleplayUiIcon>)icon {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (ReactUnitSlot *)textDidChange {
  return [self invalidateSlotWithBOOL:YES];
}

- (ReactSlot *)iconDidChange {
  return [[TripleplayUiTextWidget_$1 alloc] initWithTripleplayUiTextWidget:self];
}

- (void)wasRemoved {
  [super wasRemoved];
  [((TripleplayUiWidget_Glyph *) NIL_CHK(_tglyph_)) destroy];
  if (_ilayer_ != nil) {
    [_ilayer_ destroy];
    _ilayer_ = nil;
  }
}

- (TripleplayUiElement_LayoutData *)createLayoutDataWithFloat:(float)hintX
                                                    withFloat:(float)hintY {
  return [[TripleplayUiTextWidget_TextLayoutData alloc] initWithTripleplayUiTextWidget:self withFloat:hintX withFloat:hintY];
}

- (id)init {
  if ((self = [super init])) {
    _tglyph_ = [[TripleplayUiWidget_Glyph alloc] initWithTripleplayUiWidget:self];
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiTextWidget *typedCopy = (TripleplayUiTextWidget *) copy;
  typedCopy._tglyph = _tglyph_;
  typedCopy._ilayer = _ilayer_;
}

@end
@implementation TripleplayUiTextWidget_TextLayoutData

@synthesize this$2 = this$2_;
@synthesize halign = halign_;
@synthesize valign = valign_;
@synthesize iconPos = iconPos_;
@synthesize iconGap = iconGap_;
@synthesize iconCuddle = iconCuddle_;
@synthesize color = color_;
@synthesize underlined = underlined_;
@synthesize wrap = wrap_;
@synthesize text = text_;
@synthesize renderer = renderer_;

- (id)initWithTripleplayUiTextWidget:(TripleplayUiTextWidget *)outer$
                           withFloat:(float)hintX
                           withFloat:(float)hintY {
  if ((self = [super initWithTripleplayUiElement:outer$])) {
    this$2_ = outer$;
    halign_ = ((TripleplayUiStyle_HAlignEnum *) [outer$ resolveStyleWithTripleplayUiStyle:[TripleplayUiStyle HALIGN]]);
    valign_ = ((TripleplayUiStyle_VAlignEnum *) [outer$ resolveStyleWithTripleplayUiStyle:[TripleplayUiStyle VALIGN]]);
    iconPos_ = ((TripleplayUiStyle_PosEnum *) [outer$ resolveStyleWithTripleplayUiStyle:[TripleplayUiStyle ICON_POS]]);
    iconGap_ = [((JavaLangInteger *) [outer$ resolveStyleWithTripleplayUiStyle:[TripleplayUiStyle ICON_GAP]]) intValue];
    iconCuddle_ = [((JavaLangBoolean *) [outer$ resolveStyleWithTripleplayUiStyle:[TripleplayUiStyle ICON_CUDDLE]]) booleanValue];
    color_ = [((JavaLangInteger *) [outer$ resolveStyleWithTripleplayUiStyle:[TripleplayUiStyle COLOR]]) intValue];
    underlined_ = [((JavaLangBoolean *) [outer$ resolveStyleWithTripleplayUiStyle:[TripleplayUiStyle UNDERLINE]]) booleanValue];
    wrap_ = [((JavaLangBoolean *) [outer$ resolveStyleWithTripleplayUiStyle:[TripleplayUiStyle TEXT_WRAP]]) booleanValue];
    NSString *curtext = [outer$ text];
    BOOL haveText = (curtext != nil && [NIL_CHK(curtext) length] > 0);
    PythagorasFDimension *hints = [[PythagorasFDimension alloc] initWithFloat:hintX - [((TripleplayUiBackground *) NIL_CHK(bg_)) width] withFloat:hintY - [((TripleplayUiBackground *) NIL_CHK(bg_)) height]];
    [self accommodateIconWithPythagorasFDimension:hints withBOOL:haveText];
    if (haveText) {
      renderer_ = [TripleplayUiStyle createEffectRendererWithTripleplayUiElement:outer$];
      PlaynCoreTextFormat *format = [TripleplayUiStyle createTextFormatWithTripleplayUiElement:outer$];
      if (((PythagorasFDimension *) NIL_CHK(hints)).width_ > 0 && wrap_) format = [((PlaynCoreTextFormat *) NIL_CHK(format)) withWrapWidthWithFloat:((PythagorasFDimension *) NIL_CHK(hints)).width_];
      text_ = [((id<PlaynCoreGraphics>) [PlaynCorePlayN graphics]) layoutTextWithNSString:curtext withPlaynCoreTextFormat:format];
    }
    else {
      renderer_ = nil;
      text_ = nil;
    }
  }
  return self;
}

- (PythagorasFDimension *)computeSizeWithFloat:(float)hintX
                                     withFloat:(float)hintY {
  PythagorasFDimension *size = [[PythagorasFDimension alloc] init];
  [self addTextSizeWithPythagorasFDimension:size];
  id<TripleplayUiIcon> icon = [this$2_ icon];
  if (icon != nil) {
    switch ([iconPos_ ordinal]) {
      case TripleplayUiStyle_Pos_LEFT:
      case TripleplayUiStyle_Pos_RIGHT:
      ((PythagorasFDimension *) NIL_CHK(size)).width_ += [icon width];
      if (text_ != nil) ((PythagorasFDimension *) NIL_CHK(size)).width_ += iconGap_;
      ((PythagorasFDimension *) NIL_CHK(size)).height_ = [JavaLangMath maxWithFloat:((PythagorasFDimension *) NIL_CHK(size)).height_ withFloat:[icon height]];
      break;
      case TripleplayUiStyle_Pos_ABOVE:
      case TripleplayUiStyle_Pos_BELOW:
      ((PythagorasFDimension *) NIL_CHK(size)).width_ = [JavaLangMath maxWithFloat:((PythagorasFDimension *) NIL_CHK(size)).width_ withFloat:[icon width]];
      ((PythagorasFDimension *) NIL_CHK(size)).height_ += [icon height];
      if (text_ != nil) ((PythagorasFDimension *) NIL_CHK(size)).height_ += iconGap_;
      break;
    }
  }
  return size;
}

- (void)layoutWithFloat:(float)left
              withFloat:(float)top
              withFloat:(float)width
              withFloat:(float)height {
  float tx = left, ty = top, usedWidth = 0, usedHeight = 0;
  id<TripleplayUiIcon> icon = [this$2_ icon];
  if (icon != nil && iconPos_ != nil) {
    float ix = left, iy = top;
    float iwidth = [((id<TripleplayUiIcon>) NIL_CHK(icon)) width], iheight = [((id<TripleplayUiIcon>) NIL_CHK(icon)) height];
    switch ([iconPos_ ordinal]) {
      case TripleplayUiStyle_Pos_LEFT:
      tx += iwidth + iconGap_;
      iy += [((TripleplayUiStyle_VAlignEnum *) NIL_CHK(valign_)) offsetWithFloat:iheight withFloat:height];
      usedWidth = iwidth;
      break;
      case TripleplayUiStyle_Pos_ABOVE:
      ty += iheight + iconGap_;
      ix += [((TripleplayUiStyle_HAlignEnum *) NIL_CHK(halign_)) offsetWithFloat:iwidth withFloat:width];
      usedHeight = iheight;
      break;
      case TripleplayUiStyle_Pos_RIGHT:
      ix += width - iwidth;
      iy += [((TripleplayUiStyle_VAlignEnum *) NIL_CHK(valign_)) offsetWithFloat:iheight withFloat:height];
      usedWidth = iwidth;
      break;
      case TripleplayUiStyle_Pos_BELOW:
      iy += height - iheight;
      ix += [((TripleplayUiStyle_HAlignEnum *) NIL_CHK(halign_)) offsetWithFloat:iwidth withFloat:width];
      usedHeight = iheight;
      break;
    }
    if (this$2_._ilayer != nil) [this$2_._ilayer destroy];
    [((id<PlaynCoreGroupLayer>) NIL_CHK(this$2_.layer)) addAtWithPlaynCoreLayer:this$2_._ilayer = [((id<TripleplayUiIcon>) NIL_CHK(icon)) render] withFloat:ix withFloat:iy];
  }
  else if (icon == nil && this$2_._ilayer != nil) {
    [((id<PlaynCoreLayer>) NIL_CHK(this$2_._ilayer)) destroy];
    this$2_._ilayer = nil;
  }
  if (text_ == nil) [((TripleplayUiWidget_Glyph *) NIL_CHK(this$2_._tglyph)) destroy];
  else {
    [self updateTextGlyphWithFloat:tx withFloat:ty withFloat:width - usedWidth withFloat:height - usedHeight];
    if (this$2_._ilayer != nil && iconCuddle_) {
      float ctx = [((id<PlaynCoreImageLayer>) [((TripleplayUiWidget_Glyph *) NIL_CHK(this$2_._tglyph)) layer]) tx], cty = [((id<PlaynCoreImageLayer>) [((TripleplayUiWidget_Glyph *) NIL_CHK(this$2_._tglyph)) layer]) ty];
      float ix = [((id<PlaynCoreLayer>) NIL_CHK(this$2_._ilayer)) tx], iy = [((id<PlaynCoreLayer>) NIL_CHK(this$2_._ilayer)) ty];
      float iwid = [((id<TripleplayUiIcon>) NIL_CHK(icon)) width], ihei = [((id<TripleplayUiIcon>) NIL_CHK(icon)) height];
      switch ([iconPos_ ordinal]) {
        case TripleplayUiStyle_Pos_LEFT:
        ix = ctx - iwid - iconGap_;
        break;
        case TripleplayUiStyle_Pos_ABOVE:
        iy = cty - ihei - iconGap_;
        break;
        case TripleplayUiStyle_Pos_RIGHT:
        ix = ctx + [self textWidth] + iconGap_;
        break;
        case TripleplayUiStyle_Pos_BELOW:
        iy = cty + [self textHeight] + iconGap_;
        break;
      }
      (void) [((id<PlaynCoreLayer>) NIL_CHK(this$2_._ilayer)) setTranslationWithFloat:ix withFloat:iy];
    }
  }
}

- (void)accommodateIconWithPythagorasFDimension:(PythagorasFDimension *)hints
                                       withBOOL:(BOOL)haveText {
  id<TripleplayUiIcon> icon = [this$2_ icon];
  if (icon != nil) {
    switch ([iconPos_ ordinal]) {
      case TripleplayUiStyle_Pos_LEFT:
      case TripleplayUiStyle_Pos_RIGHT:
      ((PythagorasFDimension *) NIL_CHK(hints)).width_ -= [icon width];
      if (haveText) ((PythagorasFDimension *) NIL_CHK(hints)).width_ -= iconGap_;
      break;
      case TripleplayUiStyle_Pos_ABOVE:
      case TripleplayUiStyle_Pos_BELOW:
      ((PythagorasFDimension *) NIL_CHK(hints)).height_ -= [icon height];
      if (haveText) ((PythagorasFDimension *) NIL_CHK(hints)).height_ -= iconGap_;
      break;
    }
  }
}

- (void)addTextSizeWithPythagorasFDimension:(PythagorasFDimension *)size {
  if ([this$2_._constraint isKindOfClass:[TripleplayUiConstraints_TextConstraint class]]) {
    [((TripleplayUiConstraints_TextConstraint *) this$2_._constraint) addTextSizeWithPythagorasFDimension:size withPlaynCoreTextLayout:text_];
  }
  else if (text_ != nil) {
    ((PythagorasFDimension *) NIL_CHK(size)).width_ += [self textWidth];
    ((PythagorasFDimension *) NIL_CHK(size)).height_ += [self textHeight];
  }
}

- (void)updateTextGlyphWithFloat:(float)tx
                       withFloat:(float)ty
                       withFloat:(float)availWidth
                       withFloat:(float)availHeight {
  float twidth = [PythagorasFFloatMath ceilWithFloat:[self textWidth]], theight = [PythagorasFFloatMath ceilWithFloat:[self textHeight]];
  if (twidth <= 0 || theight <= 0 || availWidth <= 0 || availHeight <= 0) return;
  float tgwidth = [JavaLangMath minWithFloat:availWidth withFloat:twidth], tgheight = [JavaLangMath minWithFloat:availHeight withFloat:theight];
  [((TripleplayUiWidget_Glyph *) NIL_CHK(this$2_._tglyph)) prepareWithFloat:tgwidth withFloat:tgheight];
  float ox = [PythagorasFMathUtil ifloorWithFloat:[((TripleplayUiStyle_HAlignEnum *) NIL_CHK(halign_)) offsetWithFloat:twidth withFloat:availWidth]];
  float oy = [PythagorasFMathUtil ifloorWithFloat:[((TripleplayUiStyle_VAlignEnum *) NIL_CHK(valign_)) offsetWithFloat:theight withFloat:availHeight]];
  [((TripleplayUtilEffectRenderer *) NIL_CHK(renderer_)) renderWithPlaynCoreCanvas:[((TripleplayUiWidget_Glyph *) NIL_CHK(this$2_._tglyph)) canvas] withPlaynCoreTextLayout:text_ withInt:color_ withBOOL:underlined_ withFloat:[JavaLangMath minWithFloat:ox withFloat:0] withFloat:[JavaLangMath minWithFloat:oy withFloat:0]];
  (void) [((id<PlaynCoreImageLayer>) [((TripleplayUiWidget_Glyph *) NIL_CHK(this$2_._tglyph)) layer]) setTranslationWithFloat:tx + [JavaLangMath maxWithFloat:ox withFloat:0] withFloat:ty + [JavaLangMath maxWithFloat:oy withFloat:0]];
}

- (float)textWidth {
  return [((TripleplayUtilEffectRenderer *) NIL_CHK(renderer_)) adjustWidthWithFloat:[((id<PlaynCoreTextLayout>) NIL_CHK(text_)) width]];
}

- (float)textHeight {
  return [((TripleplayUtilEffectRenderer *) NIL_CHK(renderer_)) adjustHeightWithFloat:[((id<PlaynCoreTextLayout>) NIL_CHK(text_)) height]];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiTextWidget_TextLayoutData *typedCopy = (TripleplayUiTextWidget_TextLayoutData *) copy;
  typedCopy.this$2 = this$2_;
  typedCopy.halign = halign_;
  typedCopy.valign = valign_;
  typedCopy.iconPos = iconPos_;
  typedCopy.iconGap = iconGap_;
  typedCopy.iconCuddle = iconCuddle_;
  typedCopy.color = color_;
  typedCopy.underlined = underlined_;
  typedCopy.wrap = wrap_;
  typedCopy.text = text_;
  typedCopy.renderer = renderer_;
}

@end
@implementation TripleplayUiTextWidget_$1

@synthesize this$0 = this$0_;

- (void)onEmitWithId:(id<TripleplayUiIcon>)icon {
  if (icon == nil) {
    [this$0_ clearLayoutData];
    [this$0_ invalidate];
  }
  else {
    [icon addCallbackWithPlaynCoreUtilCallback:[[TripleplayUiTextWidget_$1_$1 alloc] initWithTripleplayUiTextWidget_$1:self]];
  }
}

- (id)initWithTripleplayUiTextWidget:(TripleplayUiTextWidget *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiTextWidget_$1 *typedCopy = (TripleplayUiTextWidget_$1 *) copy;
  typedCopy.this$0 = this$0_;
}

@end
@implementation TripleplayUiTextWidget_$1_$1

@synthesize this$0 = this$0_;

- (void)onSuccessWithId:(id<TripleplayUiIcon>)resource {
  [this$0_.this$0 clearLayoutData];
  [this$0_.this$0 invalidate];
}

- (void)onFailureWithJavaLangThrowable:(JavaLangThrowable *)err {
}

- (id)initWithTripleplayUiTextWidget_$1:(TripleplayUiTextWidget_$1 *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiTextWidget_$1_$1 *typedCopy = (TripleplayUiTextWidget_$1_$1 *) copy;
  typedCopy.this$0 = this$0_;
}

@end
