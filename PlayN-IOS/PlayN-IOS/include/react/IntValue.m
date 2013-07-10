//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: react/IntValue.java
//
//  Created by Thomas on 7/10/13.
//

#import "java/lang/Integer.h"
#import "java/lang/Math.h"
#import "react/IntValue.h"
#import "react/Value.h"

@implementation ReactIntValue

- (id)initWithInt:(int)value {
  return [super initWithId:[JavaLangInteger valueOfWithInt:value]];
}

- (int)incrementWithInt:(int)amount {
  return [self updateIntWithInt:[((JavaLangInteger *) [self get]) intValue] + amount];
}

- (int)incrementClampWithInt:(int)amount
                     withInt:(int)max {
  return [self updateIntWithInt:[JavaLangMath minWithInt:[((JavaLangInteger *) [self get]) intValue] + amount withInt:max]];
}

- (int)incrementClampWithInt:(int)amount
                     withInt:(int)min
                     withInt:(int)max {
  return [self updateIntWithInt:[JavaLangMath maxWithInt:min withInt:[JavaLangMath minWithInt:[((JavaLangInteger *) [self get]) intValue] + amount withInt:max]]];
}

- (int)decrementClampWithInt:(int)amount
                     withInt:(int)min {
  return [self updateIntWithInt:[JavaLangMath maxWithInt:[((JavaLangInteger *) [self get]) intValue] - amount withInt:min]];
}

- (int)updateIntWithInt:(int)value {
  (void) [self updateWithId:[JavaLangInteger valueOfWithInt:value]];
  return value;
}

@end
