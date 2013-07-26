//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/expression/Multiplication.java
//
//  Created by Thomas on 7/26/13.
//

#include "tuxkids/tuxblocks/core/solve/expression/Expression.h"
#include "tuxkids/tuxblocks/core/solve/expression/Multiplication.h"

@implementation TuxkidsTuxblocksCoreSolveExpressionMultiplication

- (id)initWithTuxkidsTuxblocksCoreSolveExpressionExpression:(TuxkidsTuxblocksCoreSolveExpressionExpression *)operandA
          withTuxkidsTuxblocksCoreSolveExpressionExpression:(TuxkidsTuxblocksCoreSolveExpressionExpression *)operandB {
  return [super initWithTuxkidsTuxblocksCoreSolveExpressionExpression:operandA withTuxkidsTuxblocksCoreSolveExpressionExpression:operandB];
}

- (int)operateWithInt:(int)a
              withInt:(int)b {
  return a * b;
}

- (NSString *)getSymbol {
  return @"*";
}

- (BOOL)isCommutative {
  return YES;
}

- (int)getPrecedence {
  return TuxkidsTuxblocksCoreSolveExpressionExpression_PREC_MULT;
}

@end
