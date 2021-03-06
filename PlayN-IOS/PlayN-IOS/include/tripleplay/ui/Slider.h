//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/Slider.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !TripleplayUiSlider_RESTRICT
#define TripleplayUiSlider_INCLUDE_ALL 1
#endif
#undef TripleplayUiSlider_RESTRICT

#if !defined (_TripleplayUiSlider_) && (TripleplayUiSlider_INCLUDE_ALL || TripleplayUiSlider_INCLUDE)
#define _TripleplayUiSlider_

@class IOSClass;
@class JavaLangFloat;
@class ReactSignal;
@class ReactValue;
@class TripleplayUiBackground_Instance;
@class TripleplayUiElement_LayoutData;
@class TripleplayUiStyle;
@protocol PlaynCoreImage;
@protocol PlaynCoreImageLayer;
@protocol PlaynCorePointer_Event;
@protocol ReactSignalView;

#define TripleplayUiWidget_RESTRICT 1
#define TripleplayUiWidget_INCLUDE 1
#include "tripleplay/ui/Widget.h"

@interface TripleplayUiSlider : TripleplayUiWidget {
 @public
  ReactValue *value_;
  ReactValue *range_;
  ReactSignal *_clicked_;
  id<PlaynCoreImageLayer> _thumb_;
  TripleplayUiBackground_Instance *_barInst_;
  float _thumbLeft_, _thumbRange_, _thumbY_;
  JavaLangFloat *_increment_;
}

@property (nonatomic, strong) ReactValue *value;
@property (nonatomic, strong) ReactValue *range;
@property (nonatomic, strong) ReactSignal *_clicked;
@property (nonatomic, strong) id<PlaynCoreImageLayer> _thumb;
@property (nonatomic, strong) TripleplayUiBackground_Instance *_barInst;
@property (nonatomic, assign) float _thumbLeft;
@property (nonatomic, assign) float _thumbRange;
@property (nonatomic, assign) float _thumbY;
@property (nonatomic, strong) JavaLangFloat *_increment;

+ (TripleplayUiStyle *)BAR_WIDTH;
+ (void)setBAR_WIDTH:(TripleplayUiStyle *)BAR_WIDTH;
+ (TripleplayUiStyle *)BAR_HEIGHT;
+ (void)setBAR_HEIGHT:(TripleplayUiStyle *)BAR_HEIGHT;
+ (TripleplayUiStyle *)BAR_BACKGROUND;
+ (void)setBAR_BACKGROUND:(TripleplayUiStyle *)BAR_BACKGROUND;
+ (TripleplayUiStyle *)THUMB_IMAGE;
+ (void)setTHUMB_IMAGE:(TripleplayUiStyle *)THUMB_IMAGE;
+ (TripleplayUiStyle *)THUMB_ORIGIN;
+ (void)setTHUMB_ORIGIN:(TripleplayUiStyle *)THUMB_ORIGIN;
- (id)init;
- (id)initWithFloat:(float)value
          withFloat:(float)min
          withFloat:(float)max;
- (TripleplayUiSlider *)setIncrementWithFloat:(float)increment;
- (JavaLangFloat *)increment;
- (id<ReactSignalView>)clicked;
- (float)max;
- (float)min;
- (IOSClass *)getStyleClass;
- (void)wasRemoved;
- (TripleplayUiElement_LayoutData *)createLayoutDataWithFloat:(float)hintX
                                                    withFloat:(float)hintY;
- (void)onPointerStartWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event
                                       withFloat:(float)x
                                       withFloat:(float)y;
- (void)onPointerDragWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event
                                      withFloat:(float)x
                                      withFloat:(float)y;
- (void)onPointerEndWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event
                                     withFloat:(float)x
                                     withFloat:(float)y;
- (void)updateThumb;
- (void)handlePointerWithFloat:(float)x
                     withFloat:(float)y;
+ (id<PlaynCoreImage>)createDefaultThumbImage;
@end
#endif

#if !defined (_TripleplayUiSlider_Range_) && (TripleplayUiSlider_INCLUDE_ALL || TripleplayUiSlider_Range_INCLUDE)
#define _TripleplayUiSlider_Range_

@interface TripleplayUiSlider_Range : NSObject {
 @public
  float min_, max_, range_;
}

@property (nonatomic, assign) float min;
@property (nonatomic, assign) float max;
@property (nonatomic, assign) float range;

- (id)initWithFloat:(float)min
          withFloat:(float)max;
@end
#endif

#if !defined (_TripleplayUiSlider_SliderLayoutData_) && (TripleplayUiSlider_INCLUDE_ALL || TripleplayUiSlider_SliderLayoutData_INCLUDE)
#define _TripleplayUiSlider_SliderLayoutData_

@class PythagorasFDimension;
@class TripleplayUiBackground;
@class TripleplayUiSlider;
@protocol PlaynCoreImage;
@protocol PythagorasFIPoint;

#define TripleplayUiElement_RESTRICT 1
#define TripleplayUiElement_LayoutData_INCLUDE 1
#include "tripleplay/ui/Element.h"

@interface TripleplayUiSlider_SliderLayoutData : TripleplayUiElement_LayoutData {
 @public
  TripleplayUiSlider *this$2_;
  float barWidth_;
  float barHeight_;
  TripleplayUiBackground *barBG_;
  id<PlaynCoreImage> thumbImage_;
  id<PythagorasFIPoint> thumbOrigin_;
}

@property (nonatomic, strong) TripleplayUiSlider *this$2;
@property (nonatomic, assign) float barWidth;
@property (nonatomic, assign) float barHeight;
@property (nonatomic, strong) TripleplayUiBackground *barBG;
@property (nonatomic, strong) id<PlaynCoreImage> thumbImage;
@property (nonatomic, strong) id<PythagorasFIPoint> thumbOrigin;

- (PythagorasFDimension *)computeSizeWithFloat:(float)hintX
                                     withFloat:(float)hintY;
- (void)layoutWithFloat:(float)left
              withFloat:(float)top
              withFloat:(float)width
              withFloat:(float)height;
- (id)initWithTripleplayUiSlider:(TripleplayUiSlider *)outer$;
@end
#endif

#if !defined (_TripleplayUiSlider_$1_) && (TripleplayUiSlider_INCLUDE_ALL || TripleplayUiSlider_$1_INCLUDE)
#define _TripleplayUiSlider_$1_

@class TripleplayUiSlider;

#define ReactUnitSlot_RESTRICT 1
#define ReactUnitSlot_INCLUDE 1
#include "react/UnitSlot.h"

@interface TripleplayUiSlider_$1 : ReactUnitSlot {
 @public
  TripleplayUiSlider *this$0_;
}

@property (nonatomic, strong) TripleplayUiSlider *this$0;

- (void)onEmit;
- (id)initWithTripleplayUiSlider:(TripleplayUiSlider *)outer$;
@end
#endif
