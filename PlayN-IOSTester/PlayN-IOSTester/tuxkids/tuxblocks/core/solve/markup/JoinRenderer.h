//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/markup/JoinRenderer.java
//
//  Created by Thomas on 7/26/13.
//

#ifndef _TuxkidsTuxblocksCoreSolveMarkupJoinRenderer_H_
#define _TuxkidsTuxblocksCoreSolveMarkupJoinRenderer_H_

@class PlaynCoreTextFormat;
@class PythagorasFVector;
@class TuxkidsTuxblocksCoreSolveMarkupExpressionWriter;
@protocol PlaynCoreCanvas;
@protocol PlaynCoreTextLayout;

#import "JreEmulation.h"
#include "tuxkids/tuxblocks/core/solve/markup/ParentExpressionWriter.h"
#include "tuxkids/tuxblocks/core/solve/markup/Renderer.h"

@interface TuxkidsTuxblocksCoreSolveMarkupJoinRenderer : TuxkidsTuxblocksCoreSolveMarkupRenderer {
 @public
  TuxkidsTuxblocksCoreSolveMarkupRenderer *a_, *b_;
  NSString *symbol_;
}

@property (nonatomic, strong) TuxkidsTuxblocksCoreSolveMarkupRenderer *a;
@property (nonatomic, strong) TuxkidsTuxblocksCoreSolveMarkupRenderer *b;
@property (nonatomic, copy) NSString *symbol;

- (id)initWithTuxkidsTuxblocksCoreSolveMarkupRenderer:(TuxkidsTuxblocksCoreSolveMarkupRenderer *)a
          withTuxkidsTuxblocksCoreSolveMarkupRenderer:(TuxkidsTuxblocksCoreSolveMarkupRenderer *)b
                                         withNSString:(NSString *)symbol;
- (int)lines;
- (TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *)getExpressionWriterWithPlaynCoreTextFormat:(PlaynCoreTextFormat *)textFormat;
@end

@interface TuxkidsTuxblocksCoreSolveMarkupJoinRenderer_$1 : TuxkidsTuxblocksCoreSolveMarkupParentExpressionWriter {
 @public
  TuxkidsTuxblocksCoreSolveMarkupJoinRenderer *this$0_;
  id<PlaynCoreTextLayout> layout_;
  TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *val$aWriter_;
  TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *val$bWriter_;
}

@property (nonatomic, strong) TuxkidsTuxblocksCoreSolveMarkupJoinRenderer *this$0;
@property (nonatomic, strong) id<PlaynCoreTextLayout> layout;
@property (nonatomic, strong) TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *val$aWriter;
@property (nonatomic, strong) TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *val$bWriter;

- (PythagorasFVector *)formatExpressionWithPlaynCoreTextFormat:(PlaynCoreTextFormat *)textFormat;
- (void)addChildren;
- (void)drawExpressionWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas;
- (id)initWithTuxkidsTuxblocksCoreSolveMarkupJoinRenderer:(TuxkidsTuxblocksCoreSolveMarkupJoinRenderer *)outer$
                                  withPlaynCoreTextFormat:(PlaynCoreTextFormat *)arg$0
      withTuxkidsTuxblocksCoreSolveMarkupExpressionWriter:(TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *)capture$0
      withTuxkidsTuxblocksCoreSolveMarkupExpressionWriter:(TuxkidsTuxblocksCoreSolveMarkupExpressionWriter *)capture$1;
@end

#endif // _TuxkidsTuxblocksCoreSolveMarkupJoinRenderer_H_
