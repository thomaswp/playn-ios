//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/Canvas.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSClass.h"
#include "java/lang/IllegalArgumentException.h"
#include "playn/core/Canvas.h"
#include "playn/core/Gradient.h"
#include "playn/core/Image.h"
#include "playn/core/Path.h"
#include "playn/core/Pattern.h"
#include "playn/core/TextLayout.h"


static PlaynCoreCanvas_CompositeEnum *PlaynCoreCanvas_CompositeEnum_SRC;
static PlaynCoreCanvas_CompositeEnum *PlaynCoreCanvas_CompositeEnum_DST_ATOP;
static PlaynCoreCanvas_CompositeEnum *PlaynCoreCanvas_CompositeEnum_SRC_OVER;
static PlaynCoreCanvas_CompositeEnum *PlaynCoreCanvas_CompositeEnum_DST_OVER;
static PlaynCoreCanvas_CompositeEnum *PlaynCoreCanvas_CompositeEnum_SRC_IN;
static PlaynCoreCanvas_CompositeEnum *PlaynCoreCanvas_CompositeEnum_DST_IN;
static PlaynCoreCanvas_CompositeEnum *PlaynCoreCanvas_CompositeEnum_SRC_OUT;
static PlaynCoreCanvas_CompositeEnum *PlaynCoreCanvas_CompositeEnum_DST_OUT;
static PlaynCoreCanvas_CompositeEnum *PlaynCoreCanvas_CompositeEnum_SRC_ATOP;
static PlaynCoreCanvas_CompositeEnum *PlaynCoreCanvas_CompositeEnum_XOR;
static PlaynCoreCanvas_CompositeEnum *PlaynCoreCanvas_CompositeEnum_MULTIPLY;
IOSObjectArray *PlaynCoreCanvas_CompositeEnum_values;

@implementation PlaynCoreCanvas_CompositeEnum

+ (PlaynCoreCanvas_CompositeEnum *)SRC {
  return PlaynCoreCanvas_CompositeEnum_SRC;
}
+ (PlaynCoreCanvas_CompositeEnum *)DST_ATOP {
  return PlaynCoreCanvas_CompositeEnum_DST_ATOP;
}
+ (PlaynCoreCanvas_CompositeEnum *)SRC_OVER {
  return PlaynCoreCanvas_CompositeEnum_SRC_OVER;
}
+ (PlaynCoreCanvas_CompositeEnum *)DST_OVER {
  return PlaynCoreCanvas_CompositeEnum_DST_OVER;
}
+ (PlaynCoreCanvas_CompositeEnum *)SRC_IN {
  return PlaynCoreCanvas_CompositeEnum_SRC_IN;
}
+ (PlaynCoreCanvas_CompositeEnum *)DST_IN {
  return PlaynCoreCanvas_CompositeEnum_DST_IN;
}
+ (PlaynCoreCanvas_CompositeEnum *)SRC_OUT {
  return PlaynCoreCanvas_CompositeEnum_SRC_OUT;
}
+ (PlaynCoreCanvas_CompositeEnum *)DST_OUT {
  return PlaynCoreCanvas_CompositeEnum_DST_OUT;
}
+ (PlaynCoreCanvas_CompositeEnum *)SRC_ATOP {
  return PlaynCoreCanvas_CompositeEnum_SRC_ATOP;
}
+ (PlaynCoreCanvas_CompositeEnum *)XOR {
  return PlaynCoreCanvas_CompositeEnum_XOR;
}
+ (PlaynCoreCanvas_CompositeEnum *)MULTIPLY {
  return PlaynCoreCanvas_CompositeEnum_MULTIPLY;
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

- (id)initWithNSString:(NSString *)name withInt:(int)ordinal {
  return [super initWithNSString:name withInt:ordinal];
}

+ (void)initialize {
  if (self == [PlaynCoreCanvas_CompositeEnum class]) {
    PlaynCoreCanvas_CompositeEnum_SRC = [[PlaynCoreCanvas_CompositeEnum alloc] initWithNSString:@"SRC" withInt:0];
    PlaynCoreCanvas_CompositeEnum_DST_ATOP = [[PlaynCoreCanvas_CompositeEnum alloc] initWithNSString:@"DST_ATOP" withInt:1];
    PlaynCoreCanvas_CompositeEnum_SRC_OVER = [[PlaynCoreCanvas_CompositeEnum alloc] initWithNSString:@"SRC_OVER" withInt:2];
    PlaynCoreCanvas_CompositeEnum_DST_OVER = [[PlaynCoreCanvas_CompositeEnum alloc] initWithNSString:@"DST_OVER" withInt:3];
    PlaynCoreCanvas_CompositeEnum_SRC_IN = [[PlaynCoreCanvas_CompositeEnum alloc] initWithNSString:@"SRC_IN" withInt:4];
    PlaynCoreCanvas_CompositeEnum_DST_IN = [[PlaynCoreCanvas_CompositeEnum alloc] initWithNSString:@"DST_IN" withInt:5];
    PlaynCoreCanvas_CompositeEnum_SRC_OUT = [[PlaynCoreCanvas_CompositeEnum alloc] initWithNSString:@"SRC_OUT" withInt:6];
    PlaynCoreCanvas_CompositeEnum_DST_OUT = [[PlaynCoreCanvas_CompositeEnum alloc] initWithNSString:@"DST_OUT" withInt:7];
    PlaynCoreCanvas_CompositeEnum_SRC_ATOP = [[PlaynCoreCanvas_CompositeEnum alloc] initWithNSString:@"SRC_ATOP" withInt:8];
    PlaynCoreCanvas_CompositeEnum_XOR = [[PlaynCoreCanvas_CompositeEnum alloc] initWithNSString:@"XOR" withInt:9];
    PlaynCoreCanvas_CompositeEnum_MULTIPLY = [[PlaynCoreCanvas_CompositeEnum alloc] initWithNSString:@"MULTIPLY" withInt:10];
    PlaynCoreCanvas_CompositeEnum_values = [[IOSObjectArray alloc] initWithObjects:(id[]){ PlaynCoreCanvas_CompositeEnum_SRC, PlaynCoreCanvas_CompositeEnum_DST_ATOP, PlaynCoreCanvas_CompositeEnum_SRC_OVER, PlaynCoreCanvas_CompositeEnum_DST_OVER, PlaynCoreCanvas_CompositeEnum_SRC_IN, PlaynCoreCanvas_CompositeEnum_DST_IN, PlaynCoreCanvas_CompositeEnum_SRC_OUT, PlaynCoreCanvas_CompositeEnum_DST_OUT, PlaynCoreCanvas_CompositeEnum_SRC_ATOP, PlaynCoreCanvas_CompositeEnum_XOR, PlaynCoreCanvas_CompositeEnum_MULTIPLY, nil } count:11 type:[IOSClass classWithClass:[PlaynCoreCanvas_CompositeEnum class]]];
  }
}

+ (IOSObjectArray *)values {
  return [IOSObjectArray arrayWithArray:PlaynCoreCanvas_CompositeEnum_values];
}

+ (PlaynCoreCanvas_CompositeEnum *)valueOfWithNSString:(NSString *)name {
  for (int i = 0; i < [PlaynCoreCanvas_CompositeEnum_values count]; i++) {
    PlaynCoreCanvas_CompositeEnum *e = [PlaynCoreCanvas_CompositeEnum_values objectAtIndex:i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

@end

static PlaynCoreCanvas_LineCapEnum *PlaynCoreCanvas_LineCapEnum_BUTT;
static PlaynCoreCanvas_LineCapEnum *PlaynCoreCanvas_LineCapEnum_ROUND;
static PlaynCoreCanvas_LineCapEnum *PlaynCoreCanvas_LineCapEnum_SQUARE;
IOSObjectArray *PlaynCoreCanvas_LineCapEnum_values;

@implementation PlaynCoreCanvas_LineCapEnum

+ (PlaynCoreCanvas_LineCapEnum *)BUTT {
  return PlaynCoreCanvas_LineCapEnum_BUTT;
}
+ (PlaynCoreCanvas_LineCapEnum *)ROUND {
  return PlaynCoreCanvas_LineCapEnum_ROUND;
}
+ (PlaynCoreCanvas_LineCapEnum *)SQUARE {
  return PlaynCoreCanvas_LineCapEnum_SQUARE;
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

- (id)initWithNSString:(NSString *)name withInt:(int)ordinal {
  return [super initWithNSString:name withInt:ordinal];
}

+ (void)initialize {
  if (self == [PlaynCoreCanvas_LineCapEnum class]) {
    PlaynCoreCanvas_LineCapEnum_BUTT = [[PlaynCoreCanvas_LineCapEnum alloc] initWithNSString:@"BUTT" withInt:0];
    PlaynCoreCanvas_LineCapEnum_ROUND = [[PlaynCoreCanvas_LineCapEnum alloc] initWithNSString:@"ROUND" withInt:1];
    PlaynCoreCanvas_LineCapEnum_SQUARE = [[PlaynCoreCanvas_LineCapEnum alloc] initWithNSString:@"SQUARE" withInt:2];
    PlaynCoreCanvas_LineCapEnum_values = [[IOSObjectArray alloc] initWithObjects:(id[]){ PlaynCoreCanvas_LineCapEnum_BUTT, PlaynCoreCanvas_LineCapEnum_ROUND, PlaynCoreCanvas_LineCapEnum_SQUARE, nil } count:3 type:[IOSClass classWithClass:[PlaynCoreCanvas_LineCapEnum class]]];
  }
}

+ (IOSObjectArray *)values {
  return [IOSObjectArray arrayWithArray:PlaynCoreCanvas_LineCapEnum_values];
}

+ (PlaynCoreCanvas_LineCapEnum *)valueOfWithNSString:(NSString *)name {
  for (int i = 0; i < [PlaynCoreCanvas_LineCapEnum_values count]; i++) {
    PlaynCoreCanvas_LineCapEnum *e = [PlaynCoreCanvas_LineCapEnum_values objectAtIndex:i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

@end

static PlaynCoreCanvas_LineJoinEnum *PlaynCoreCanvas_LineJoinEnum_BEVEL;
static PlaynCoreCanvas_LineJoinEnum *PlaynCoreCanvas_LineJoinEnum_MITER;
static PlaynCoreCanvas_LineJoinEnum *PlaynCoreCanvas_LineJoinEnum_ROUND;
IOSObjectArray *PlaynCoreCanvas_LineJoinEnum_values;

@implementation PlaynCoreCanvas_LineJoinEnum

+ (PlaynCoreCanvas_LineJoinEnum *)BEVEL {
  return PlaynCoreCanvas_LineJoinEnum_BEVEL;
}
+ (PlaynCoreCanvas_LineJoinEnum *)MITER {
  return PlaynCoreCanvas_LineJoinEnum_MITER;
}
+ (PlaynCoreCanvas_LineJoinEnum *)ROUND {
  return PlaynCoreCanvas_LineJoinEnum_ROUND;
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

- (id)initWithNSString:(NSString *)name withInt:(int)ordinal {
  return [super initWithNSString:name withInt:ordinal];
}

+ (void)initialize {
  if (self == [PlaynCoreCanvas_LineJoinEnum class]) {
    PlaynCoreCanvas_LineJoinEnum_BEVEL = [[PlaynCoreCanvas_LineJoinEnum alloc] initWithNSString:@"BEVEL" withInt:0];
    PlaynCoreCanvas_LineJoinEnum_MITER = [[PlaynCoreCanvas_LineJoinEnum alloc] initWithNSString:@"MITER" withInt:1];
    PlaynCoreCanvas_LineJoinEnum_ROUND = [[PlaynCoreCanvas_LineJoinEnum alloc] initWithNSString:@"ROUND" withInt:2];
    PlaynCoreCanvas_LineJoinEnum_values = [[IOSObjectArray alloc] initWithObjects:(id[]){ PlaynCoreCanvas_LineJoinEnum_BEVEL, PlaynCoreCanvas_LineJoinEnum_MITER, PlaynCoreCanvas_LineJoinEnum_ROUND, nil } count:3 type:[IOSClass classWithClass:[PlaynCoreCanvas_LineJoinEnum class]]];
  }
}

+ (IOSObjectArray *)values {
  return [IOSObjectArray arrayWithArray:PlaynCoreCanvas_LineJoinEnum_values];
}

+ (PlaynCoreCanvas_LineJoinEnum *)valueOfWithNSString:(NSString *)name {
  for (int i = 0; i < [PlaynCoreCanvas_LineJoinEnum_values count]; i++) {
    PlaynCoreCanvas_LineJoinEnum *e = [PlaynCoreCanvas_LineJoinEnum_values objectAtIndex:i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

@end
