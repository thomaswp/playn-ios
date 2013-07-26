//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/markup/ExpressionWriter.java
//
//  Created by Thomas on 7/26/13.
//

#ifndef _TuxkidsTuxblocksCoreSolveMarkupExpressionWriter_H_
#define _TuxkidsTuxblocksCoreSolveMarkupExpressionWriter_H_

@class PlaynCoreTextFormat;
@class PythagorasFVector;
@class TuxkidsTuxblocksCoreSolveMarkupExpressionWriter_Config;
@protocol PlaynCoreCanvas;
@protocol PlaynCoreTextLayout;

#import "JreEmulation.h"

@interface TuxkidsTuxblocksCoreSolveMarkupExpressionWriter : NSObject {
 @public
  TuxkidsTuxblocksCoreSolveMarkupExpressionWriter_Config *config_;
  PythagorasFVector *size_;
  PlaynCoreTextFormat *textFormat_;
}

@property (nonatomic, strong) TuxkidsTuxblocksCoreSolveMarkupExpressionWriter_Config *config;
@property (nonatomic, strong) PythagorasFVector *size;
@property (nonatomic, strong) PlaynCoreTextFormat *textFormat;

+ (TuxkidsTuxblocksCoreSolveMarkupExpressionWriter_Config *)DEFAULT_CONFIG;
- (PythagorasFVector *)formatExpressionWithPlaynCoreTextFormat:(PlaynCoreTextFormat *)textFormat;
- (void)drawExpressionWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas;
- (PythagorasFVector *)blankCenter;
- (int)blankColor;
- (float)spacing;
- (void)setColorWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas
                           withBOOL:(BOOL)highlight;
- (PythagorasFVector *)getSize;
- (float)width;
- (float)height;
- (id)initWithPlaynCoreTextFormat:(PlaynCoreTextFormat *)textFormat;
- (void)drawExpressionWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas
withTuxkidsTuxblocksCoreSolveMarkupExpressionWriter_Config:(TuxkidsTuxblocksCoreSolveMarkupExpressionWriter_Config *)config;
- (id<PlaynCoreTextLayout>)layoutWithNSString:(NSString *)text
                      withPlaynCoreTextFormat:(PlaynCoreTextFormat *)textFormat;
@end

@interface TuxkidsTuxblocksCoreSolveMarkupExpressionWriter_Config : NSObject {
 @public
  int defaultColor_, highlightColor_, blankColor_;
}

@property (nonatomic, assign) int defaultColor;
@property (nonatomic, assign) int highlightColor;
@property (nonatomic, assign) int blankColor;

- (id)init;
- (id)initWithInt:(int)defaultColor
          withInt:(int)highlightColor
          withInt:(int)blankcolor;
@end

#endif // _TuxkidsTuxblocksCoreSolveMarkupExpressionWriter_H_
