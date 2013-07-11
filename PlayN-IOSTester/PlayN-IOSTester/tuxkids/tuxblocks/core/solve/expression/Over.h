//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/expression/Over.java
//
//  Created by Thomas on 7/10/13.
//

@class PlaynCoreTextFormat;
@class PythagorasFVector;
@class TuxkidsTuxblocksCoreSolveExpressionExpression;
@protocol PlaynCoreCanvas;
@protocol PlaynCoreTextLayout;

#import "JreEmulation.h"
#import "tuxkids/tuxblocks/core/solve/expression/ExpressionWriter.h"
#import "tuxkids/tuxblocks/core/solve/expression/ModificationOperation.h"

@interface TuxkidsTuxblocksCoreSolveExpressionOver : TuxkidsTuxblocksCoreSolveExpressionModificationOperation {
}

- (id)initWithTuxkidsTuxblocksCoreSolveExpressionExpression:(TuxkidsTuxblocksCoreSolveExpressionExpression *)base
                                                    withInt:(int)value;
- (NSString *)toMathString;
- (int)evaluate;
- (int)getPrecedence;
- (NSString *)getSymbol;
- (BOOL)isCommutative;
- (int)getColor;
- (TuxkidsTuxblocksCoreSolveExpressionModificationOperation *)getInverse;
- (TuxkidsTuxblocksCoreSolveExpressionExpressionWriter *)getExpressionWriterWithPlaynCoreTextFormat:(PlaynCoreTextFormat *)textFormat;
@end

@interface TuxkidsTuxblocksCoreSolveExpressionOver_$1 : TuxkidsTuxblocksCoreSolveExpressionExpressionWriter {
 @public
  TuxkidsTuxblocksCoreSolveExpressionOver *this$0_;
  id<PlaynCoreTextLayout> divisorLayout_;
  TuxkidsTuxblocksCoreSolveExpressionExpressionWriter *val$childWriter_;
}

@property (nonatomic, strong) TuxkidsTuxblocksCoreSolveExpressionOver *this$0;
@property (nonatomic, strong) id<PlaynCoreTextLayout> divisorLayout;
@property (nonatomic, strong) TuxkidsTuxblocksCoreSolveExpressionExpressionWriter *val$childWriter;

- (PythagorasFVector *)formatExpressionWithPlaynCoreTextFormat:(PlaynCoreTextFormat *)textFormat;
- (void)drawExpressionWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas
                                  withInt:(int)childColor;
- (id)initWithTuxkidsTuxblocksCoreSolveExpressionOver:(TuxkidsTuxblocksCoreSolveExpressionOver *)outer$
                              withPlaynCoreTextFormat:(PlaynCoreTextFormat *)arg$0
withTuxkidsTuxblocksCoreSolveExpressionExpressionWriter:(TuxkidsTuxblocksCoreSolveExpressionExpressionWriter *)capture$0;
@end