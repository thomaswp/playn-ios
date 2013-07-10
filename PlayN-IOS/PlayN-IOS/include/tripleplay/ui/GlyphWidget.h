//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/GlyphWidget.java
//
//  Created by Thomas on 7/10/13.
//

@class TripleplayUiWidget_Glyph;
@protocol PlaynCoreCanvas;
@protocol PlaynCorePointer_Event;

#import "JreEmulation.h"
#import "react/UnitSlot.h"
#import "tripleplay/ui/Element.h"
#import "tripleplay/ui/SizableWidget.h"

@interface TripleplayUiGlyphWidget : TripleplayUiSizableWidget {
 @public
  TripleplayUiWidget_Glyph *_glyph_;
}

@property (nonatomic, strong) TripleplayUiWidget_Glyph *_glyph;

- (void)render;
- (id)initWithBOOL:(BOOL)interactive;
- (id)initWithBOOL:(BOOL)interactive
         withFloat:(float)width
         withFloat:(float)height;
- (ReactUnitSlot *)renderSlot;
- (void)paintWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas;
- (void)onClickWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (void)onPointerEndWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event
                                     withFloat:(float)x
                                     withFloat:(float)y;
- (TripleplayUiElement_BaseLayoutData *)createBaseLayoutDataWithFloat:(float)hintX
                                                            withFloat:(float)hintY;
@end

@interface TripleplayUiGlyphWidget_GlyphLayoutData : TripleplayUiElement_BaseLayoutData {
 @public
  TripleplayUiGlyphWidget *this$1_;
}

@property (nonatomic, strong) TripleplayUiGlyphWidget *this$1;

- (void)layoutWithFloat:(float)left
              withFloat:(float)top
              withFloat:(float)width
              withFloat:(float)height;
- (id)initWithTripleplayUiGlyphWidget:(TripleplayUiGlyphWidget *)outer$;
@end

@interface TripleplayUiGlyphWidget_$1 : ReactUnitSlot {
 @public
  TripleplayUiGlyphWidget *this$0_;
}

@property (nonatomic, strong) TripleplayUiGlyphWidget *this$0;

- (void)onEmit;
- (id)initWithTripleplayUiGlyphWidget:(TripleplayUiGlyphWidget *)outer$;
@end
