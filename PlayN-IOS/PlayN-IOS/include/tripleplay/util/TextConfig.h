//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/util/TextConfig.java
//
//  Created by Thomas on 7/10/13.
//

@class PlaynCoreTextFormat;
@class TripleplayUtilEffectRenderer;
@protocol PlaynCoreCanvas;
@protocol PlaynCoreCanvasImage;
@protocol PlaynCoreFont;
@protocol PlaynCoreImageLayer;
@protocol PlaynCoreTextLayout;

#import "JreEmulation.h"

@interface TripleplayUtilTextConfig : NSObject {
 @public
  PlaynCoreTextFormat *format_;
  int textColor_;
  TripleplayUtilEffectRenderer *effect_;
  BOOL underlined_;
}

@property (nonatomic, strong) PlaynCoreTextFormat *format;
@property (nonatomic, assign) int textColor;
@property (nonatomic, strong) TripleplayUtilEffectRenderer *effect;
@property (nonatomic, assign) BOOL underlined;

- (id)initWithInt:(int)textColor;
- (id)initWithPlaynCoreTextFormat:(PlaynCoreTextFormat *)format
                          withInt:(int)textColor;
- (id)initWithPlaynCoreTextFormat:(PlaynCoreTextFormat *)format
                          withInt:(int)textColor
 withTripleplayUtilEffectRenderer:(TripleplayUtilEffectRenderer *)effect;
- (id)initWithPlaynCoreTextFormat:(PlaynCoreTextFormat *)format
                          withInt:(int)textColor
 withTripleplayUtilEffectRenderer:(TripleplayUtilEffectRenderer *)effect
                         withBOOL:(BOOL)underlined;
- (BOOL)isEqual:(id)other;
- (NSUInteger)hash;
- (TripleplayUtilTextConfig *)withFormatWithPlaynCoreTextFormat:(PlaynCoreTextFormat *)format;
- (TripleplayUtilTextConfig *)withFontWithPlaynCoreFont:(id<PlaynCoreFont>)font;
- (TripleplayUtilTextConfig *)withColorWithInt:(int)textColor;
- (TripleplayUtilTextConfig *)withShadowWithInt:(int)shadowColor
                                      withFloat:(float)shadowX
                                      withFloat:(float)shadowY;
- (TripleplayUtilTextConfig *)withOutlineWithInt:(int)outlineColor;
- (TripleplayUtilTextConfig *)withOutlineWithInt:(int)outlineColor
                                       withFloat:(float)outlineWidth;
- (TripleplayUtilTextConfig *)withUnderlineWithBOOL:(BOOL)underlined;
- (id<PlaynCoreTextLayout>)layoutWithNSString:(NSString *)text;
- (id<PlaynCoreCanvasImage>)createImageWithPlaynCoreTextLayout:(id<PlaynCoreTextLayout>)layout;
- (void)renderWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas
          withPlaynCoreTextLayout:(id<PlaynCoreTextLayout>)layout
                        withFloat:(float)x
                        withFloat:(float)y;
- (id<PlaynCoreCanvasImage>)toImageWithNSString:(NSString *)text;
- (id<PlaynCoreCanvasImage>)toImageWithPlaynCoreTextLayout:(id<PlaynCoreTextLayout>)layout;
- (id<PlaynCoreImageLayer>)toLayerWithNSString:(NSString *)text;
- (id<PlaynCoreImageLayer>)toLayerWithPlaynCoreTextLayout:(id<PlaynCoreTextLayout>)layout;
@end