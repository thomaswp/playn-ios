//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/i/Points.java
//
//  Created by Thomas on 7/1/13.
//

#import "java/lang/Math.h"
#import "java/lang/StringBuilder.h"
#import "Points.h"

@implementation PythagorasIPoints

+ (int)distanceSqWithInt:(int)x1
                 withInt:(int)y1
                 withInt:(int)x2
                 withInt:(int)y2 {
  x2 -= x1;
  y2 -= y1;
  return x2 * x2 + y2 * y2;
}

+ (int)distanceWithInt:(int)x1
               withInt:(int)y1
               withInt:(int)x2
               withInt:(int)y2 {
  return (int) [JavaLangMath sqrtWithDouble:[PythagorasIPoints distanceSqWithInt:x1 withInt:y1 withInt:x2 withInt:y2]];
}

+ (int)manhattanDistanceWithInt:(int)x1
                        withInt:(int)y1
                        withInt:(int)x2
                        withInt:(int)y2 {
  return [JavaLangMath absWithInt:x2 - x1] + [JavaLangMath absWithInt:y2 - y1];
}

+ (NSString *)pointToStringWithInt:(int)x
                           withInt:(int)y {
  JavaLangStringBuilder *buf = [[[JavaLangStringBuilder alloc] init] autorelease];
  if (x >= 0) (void) [((JavaLangStringBuilder *) NIL_CHK(buf)) appendWithNSString:@"+"];
  (void) [((JavaLangStringBuilder *) NIL_CHK(buf)) appendWithInt:x];
  if (y >= 0) (void) [((JavaLangStringBuilder *) NIL_CHK(buf)) appendWithNSString:@"+"];
  (void) [((JavaLangStringBuilder *) NIL_CHK(buf)) appendWithInt:y];
  return [((JavaLangStringBuilder *) NIL_CHK(buf)) description];
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end