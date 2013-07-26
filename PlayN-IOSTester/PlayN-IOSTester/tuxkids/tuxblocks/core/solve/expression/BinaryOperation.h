//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/expression/BinaryOperation.java
//
//  Created by Thomas on 7/26/13.
//

#ifndef _TuxkidsTuxblocksCoreSolveExpressionBinaryOperation_H_
#define _TuxkidsTuxblocksCoreSolveExpressionBinaryOperation_H_

@class TuxkidsTuxblocksCoreUtilsHashCode;

#import "JreEmulation.h"
#include "tuxkids/tuxblocks/core/solve/expression/Expression.h"

@interface TuxkidsTuxblocksCoreSolveExpressionBinaryOperation : TuxkidsTuxblocksCoreSolveExpressionExpression {
 @public
  TuxkidsTuxblocksCoreSolveExpressionExpression *operandA_, *operandB_;
}

@property (nonatomic, strong) TuxkidsTuxblocksCoreSolveExpressionExpression *operandA;
@property (nonatomic, strong) TuxkidsTuxblocksCoreSolveExpressionExpression *operandB;

- (TuxkidsTuxblocksCoreSolveExpressionExpression *)getOperandA;
- (TuxkidsTuxblocksCoreSolveExpressionExpression *)getOperandB;
- (id)initWithTuxkidsTuxblocksCoreSolveExpressionExpression:(TuxkidsTuxblocksCoreSolveExpressionExpression *)operandA
          withTuxkidsTuxblocksCoreSolveExpressionExpression:(TuxkidsTuxblocksCoreSolveExpressionExpression *)operandB;
- (NSString *)toMathString;
- (BOOL)hasVariable;
- (int)evaluate;
- (TuxkidsTuxblocksCoreSolveExpressionExpression *)getSimplified;
- (NSString *)getSymbol;
- (int)operateWithInt:(int)a
              withInt:(int)b;
- (BOOL)isCommutative;
- (void)addFieldsWithTuxkidsTuxblocksCoreUtilsHashCode:(TuxkidsTuxblocksCoreUtilsHashCode *)hashCode;
@end

#endif // _TuxkidsTuxblocksCoreSolveExpressionBinaryOperation_H_
