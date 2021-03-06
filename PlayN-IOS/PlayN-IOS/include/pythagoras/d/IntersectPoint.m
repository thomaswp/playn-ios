//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/IntersectPoint.java
//
//  Created by Thomas on 7/25/13.
//

#include "pythagoras/d/IntersectPoint.h"

@implementation PythagorasDIntersectPoint

@synthesize begIndex1 = begIndex1_;
@synthesize endIndex1 = endIndex1_;
@synthesize rule1 = rule1_;
@synthesize ruleIndex1 = ruleIndex1_;
@synthesize param1 = param1_;
@synthesize begIndex2 = begIndex2_;
@synthesize endIndex2 = endIndex2_;
@synthesize rule2 = rule2_;
@synthesize ruleIndex2 = ruleIndex2_;
@synthesize x_ = x__;
@synthesize y_ = y__;
@synthesize param2 = param2_;

- (id)initWithInt:(int)begIndex1
          withInt:(int)endIndex1
          withInt:(int)begIndex2
          withInt:(int)endIndex2
       withDouble:(double)x
       withDouble:(double)y {
  if ((self = [super init])) {
    self.begIndex1 = begIndex1;
    self.endIndex1 = endIndex1;
    self.begIndex2 = begIndex2;
    self.endIndex2 = endIndex2;
    self.x_ = x;
    self.y_ = y;
  }
  return self;
}

- (id)initWithInt:(int)begIndex1
          withInt:(int)endIndex1
          withInt:(int)rule1
          withInt:(int)ruleIndex1
          withInt:(int)begIndex2
          withInt:(int)endIndex2
          withInt:(int)rule2
          withInt:(int)ruleIndex2
       withDouble:(double)x
       withDouble:(double)y
       withDouble:(double)param1
       withDouble:(double)param2 {
  if ((self = [super init])) {
    self.begIndex1 = begIndex1;
    self.endIndex1 = endIndex1;
    self.rule1 = rule1;
    self.ruleIndex1 = ruleIndex1;
    self.param1 = param1;
    self.begIndex2 = begIndex2;
    self.endIndex2 = endIndex2;
    self.rule2 = rule2;
    self.ruleIndex2 = ruleIndex2;
    self.param2 = param2;
    self.x_ = x;
    self.y_ = y;
  }
  return self;
}

- (int)begIndexWithBOOL:(BOOL)isCurrentArea {
  return isCurrentArea ? begIndex1_ : begIndex2_;
}

- (int)endIndexWithBOOL:(BOOL)isCurrentArea {
  return isCurrentArea ? endIndex1_ : endIndex2_;
}

- (int)ruleIndexWithBOOL:(BOOL)isCurrentArea {
  return isCurrentArea ? ruleIndex1_ : ruleIndex2_;
}

- (double)paramWithBOOL:(BOOL)isCurrentArea {
  return isCurrentArea ? param1_ : param2_;
}

- (int)ruleWithBOOL:(BOOL)isCurrentArea {
  return isCurrentArea ? rule1_ : rule2_;
}

- (double)x {
  return x__;
}

- (double)y {
  return y__;
}

- (void)setBegIndex1WithInt:(int)begIndex {
  self.begIndex1 = begIndex;
}

- (void)setEndIndex1WithInt:(int)endIndex {
  self.endIndex1 = endIndex;
}

- (void)setBegIndex2WithInt:(int)begIndex {
  self.begIndex2 = begIndex;
}

- (void)setEndIndex2WithInt:(int)endIndex {
  self.endIndex2 = endIndex;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasDIntersectPoint *typedCopy = (PythagorasDIntersectPoint *) copy;
  typedCopy.begIndex1 = begIndex1_;
  typedCopy.endIndex1 = endIndex1_;
  typedCopy.rule1 = rule1_;
  typedCopy.ruleIndex1 = ruleIndex1_;
  typedCopy.param1 = param1_;
  typedCopy.begIndex2 = begIndex2_;
  typedCopy.endIndex2 = endIndex2_;
  typedCopy.rule2 = rule2_;
  typedCopy.ruleIndex2 = ruleIndex2_;
  typedCopy.x_ = x__;
  typedCopy.y_ = y__;
  typedCopy.param2 = param2_;
}

@end
