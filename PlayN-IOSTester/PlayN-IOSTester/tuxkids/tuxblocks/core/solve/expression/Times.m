//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/expression/Times.java
//
//  Created by Thomas on 7/26/13.
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "java/lang/Integer.h"
#include "playn/core/Canvas.h"
#include "playn/core/Color.h"
#include "playn/core/Font.h"
#include "playn/core/Graphics.h"
#include "playn/core/PlayN.h"
#include "playn/core/TextFormat.h"
#include "playn/core/TextLayout.h"
#include "pythagoras/f/Vector.h"
#include "tuxkids/tuxblocks/core/solve/expression/Expression.h"
#include "tuxkids/tuxblocks/core/solve/expression/ExpressionWriter.h"
#include "tuxkids/tuxblocks/core/solve/expression/ModificationOperation.h"
#include "tuxkids/tuxblocks/core/solve/expression/Over.h"
#include "tuxkids/tuxblocks/core/solve/expression/Times.h"
#include "tuxkids/tuxblocks/core/utils/Formatter.h"

@implementation TuxkidsTuxblocksCoreSolveExpressionTimes

- (id)initWithTuxkidsTuxblocksCoreSolveExpressionExpression:(TuxkidsTuxblocksCoreSolveExpressionExpression *)base
                                                    withInt:(int)value {
  return [super initWithTuxkidsTuxblocksCoreSolveExpressionExpression:base withInt:value];
}

- (NSString *)toMathString {
  if ([((TuxkidsTuxblocksCoreSolveExpressionExpression *) nil_chk(operand_)) getPrecedence] < [self getPrecedence]) {
    return [TuxkidsTuxblocksCoreUtilsFormatter formatWithNSString:@"%d(%s)" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ [JavaLangInteger valueOfWithInt:value_], [((TuxkidsTuxblocksCoreSolveExpressionExpression *) nil_chk(operand_)) toMathString] } count:2 type:[IOSClass classWithClass:[NSObject class]]]];
  }
  else {
    return [TuxkidsTuxblocksCoreUtilsFormatter formatWithNSString:@"%s %s %d" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ [((TuxkidsTuxblocksCoreSolveExpressionExpression *) nil_chk(operand_)) toMathString], [self getSymbol], [JavaLangInteger valueOfWithInt:value_] } count:3 type:[IOSClass classWithClass:[NSObject class]]]];
  }
}

- (int)evaluate {
  return value_ * [((TuxkidsTuxblocksCoreSolveExpressionExpression *) nil_chk(operand_)) evaluate];
}

- (int)getPrecedence {
  return TuxkidsTuxblocksCoreSolveExpressionExpression_PREC_MULT;
}

- (NSString *)getSymbol {
  return @"*";
}

- (BOOL)isCommutative {
  return YES;
}

- (int)getColor {
  return [PlaynCoreColor rgbWithInt:255 withInt:211 withInt:0];
}

- (TuxkidsTuxblocksCoreSolveExpressionModificationOperation *)getInverse {
  return [[TuxkidsTuxblocksCoreSolveExpressionOver alloc] initWithTuxkidsTuxblocksCoreSolveExpressionExpression:operand_ withInt:value_];
}

- (TuxkidsTuxblocksCoreSolveExpressionExpressionWriter *)getExpressionWriterWithPlaynCoreTextFormat:(PlaynCoreTextFormat *)textFormat {
  if ([((TuxkidsTuxblocksCoreSolveExpressionExpression *) nil_chk(operand_)) getPrecedence] >= [self getPrecedence]) return [super getExpressionWriterWithPlaynCoreTextFormat:textFormat];
  TuxkidsTuxblocksCoreSolveExpressionExpressionWriter *childWriter = [((TuxkidsTuxblocksCoreSolveExpressionExpression *) nil_chk(operand_)) getExpressionWriterWithPlaynCoreTextFormat:textFormat];
  return [[TuxkidsTuxblocksCoreSolveExpressionTimes_$1 alloc] initWithTuxkidsTuxblocksCoreSolveExpressionTimes:self withPlaynCoreTextFormat:textFormat withTuxkidsTuxblocksCoreSolveExpressionExpressionWriter:childWriter];
}

@end
@implementation TuxkidsTuxblocksCoreSolveExpressionTimes_$1

@synthesize this$0 = this$0_;
@synthesize leftParenLayout = leftParenLayout_;
@synthesize rightParenLayout = rightParenLayout_;
@synthesize factorLayout = factorLayout_;
@synthesize val$childWriter = val$childWriter_;

- (PythagorasFVector *)formatExpressionWithPlaynCoreTextFormat:(PlaynCoreTextFormat *)textFormat {
  id<PlaynCoreFont> font = [((id<PlaynCoreGraphics>) nil_chk([PlaynCorePlayN graphics])) createFontWithNSString:[((id<PlaynCoreFont>) nil_chk(((PlaynCoreTextFormat *) nil_chk(textFormat)).font)) name] withPlaynCoreFont_StyleEnum:[((id<PlaynCoreFont>) nil_chk(((PlaynCoreTextFormat *) nil_chk(textFormat)).font)) style] withFloat:[((TuxkidsTuxblocksCoreSolveExpressionExpressionWriter *) nil_chk(val$childWriter_)) height] * 1.0f];
  PlaynCoreTextFormat *bigFormat = [((PlaynCoreTextFormat *) [[PlaynCoreTextFormat alloc] init]) withFontWithPlaynCoreFont:font];
  leftParenLayout_ = [((id<PlaynCoreGraphics>) nil_chk([PlaynCorePlayN graphics])) layoutTextWithNSString:@"(" withPlaynCoreTextFormat:bigFormat];
  rightParenLayout_ = [((id<PlaynCoreGraphics>) nil_chk([PlaynCorePlayN graphics])) layoutTextWithNSString:@")" withPlaynCoreTextFormat:bigFormat];
  factorLayout_ = [((id<PlaynCoreGraphics>) nil_chk([PlaynCorePlayN graphics])) layoutTextWithNSString:[NSString stringWithFormat:@"%d", this$0_.value] withPlaynCoreTextFormat:textFormat];
  return [[PythagorasFVector alloc] initWithFloat:[((id<PlaynCoreTextLayout>) nil_chk(factorLayout_)) width] + [((id<PlaynCoreTextLayout>) nil_chk(leftParenLayout_)) width] + [((TuxkidsTuxblocksCoreSolveExpressionExpressionWriter *) nil_chk(val$childWriter_)) width] + [((id<PlaynCoreTextLayout>) nil_chk(rightParenLayout_)) width] + TuxkidsTuxblocksCoreSolveExpressionExpressionWriter_SPACING * 2 withFloat:[((TuxkidsTuxblocksCoreSolveExpressionExpressionWriter *) nil_chk(val$childWriter_)) height]];
}

- (void)drawExpressionWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas
                                  withInt:(int)childColor {
  (void) [((id<PlaynCoreCanvas>) nil_chk(canvas)) save];
  (void) [((id<PlaynCoreCanvas>) nil_chk(canvas)) translateWithFloat:[((id<PlaynCoreTextLayout>) nil_chk(leftParenLayout_)) width] + [((id<PlaynCoreTextLayout>) nil_chk(factorLayout_)) width] + TuxkidsTuxblocksCoreSolveExpressionExpressionWriter_SPACING withFloat:0];
  (void) [((id<PlaynCoreCanvas>) nil_chk(canvas)) setFillColorWithInt:childColor];
  (void) [((id<PlaynCoreCanvas>) nil_chk(canvas)) setStrokeColorWithInt:childColor];
  [((TuxkidsTuxblocksCoreSolveExpressionExpressionWriter *) nil_chk(val$childWriter_)) drawExpressionWithPlaynCoreCanvas:canvas withInt:childColor];
  (void) [((id<PlaynCoreCanvas>) nil_chk(canvas)) restore];
  (void) [((id<PlaynCoreCanvas>) nil_chk(canvas)) fillTextWithPlaynCoreTextLayout:factorLayout_ withFloat:0 withFloat:([self height] - [((id<PlaynCoreTextLayout>) nil_chk(factorLayout_)) height]) / 2];
  float ph = [((id<PlaynCoreTextLayout>) nil_chk(leftParenLayout_)) height];
  (void) [((id<PlaynCoreCanvas>) nil_chk(canvas)) fillTextWithPlaynCoreTextLayout:leftParenLayout_ withFloat:[((id<PlaynCoreTextLayout>) nil_chk(factorLayout_)) width] withFloat:([self height] - ph) / 2];
  (void) [((id<PlaynCoreCanvas>) nil_chk(canvas)) fillTextWithPlaynCoreTextLayout:rightParenLayout_ withFloat:[self width] - [((id<PlaynCoreTextLayout>) nil_chk(rightParenLayout_)) width] withFloat:([self height] - ph) / 2];
}

- (id)initWithTuxkidsTuxblocksCoreSolveExpressionTimes:(TuxkidsTuxblocksCoreSolveExpressionTimes *)outer$
                               withPlaynCoreTextFormat:(PlaynCoreTextFormat *)arg$0
withTuxkidsTuxblocksCoreSolveExpressionExpressionWriter:(TuxkidsTuxblocksCoreSolveExpressionExpressionWriter *)capture$0 {
  if ((self = [super initWithPlaynCoreTextFormat:arg$0])) {
    this$0_ = outer$;
    val$childWriter_ = capture$0;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreSolveExpressionTimes_$1 *typedCopy = (TuxkidsTuxblocksCoreSolveExpressionTimes_$1 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.leftParenLayout = leftParenLayout_;
  typedCopy.rightParenLayout = rightParenLayout_;
  typedCopy.factorLayout = factorLayout_;
  typedCopy.val$childWriter = val$childWriter_;
}

@end
