//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/AbstractRectangle.java
//
//  Created by Thomas on 7/1/13.
//

#import "Dimension.h"
#import "Dimensions.h"
#import "ILine.h"
#import "IOSDoubleArray.h"
#import "IPoint.h"
#import "IRectangle.h"
#import "IRectangularShape.h"
#import "Lines.h"
#import "PathIterator.h"
#import "Platform.h"
#import "Point.h"
#import "Points.h"
#import "Rectangle.h"
#import "RectangularShape.h"
#import "Transform.h"
#import "java/lang/Math.h"
#import "java/util/NoSuchElementException.h"
#import "AbstractRectangle.h"

@implementation PythagorasDAbstractRectangle

- (PythagorasDPoint *)location {
  return [self locationWithPythagorasDPoint:[[[PythagorasDPoint alloc] init] autorelease]];
}

- (PythagorasDPoint *)locationWithPythagorasDPoint:(PythagorasDPoint *)target {
  return [((PythagorasDPoint *) NIL_CHK(target)) setWithDouble:[self x] withDouble:[self y]];
}

- (PythagorasDDimension *)size {
  return [self sizeWithPythagorasDDimension:[[[PythagorasDDimension alloc] init] autorelease]];
}

- (PythagorasDDimension *)sizeWithPythagorasDDimension:(PythagorasDDimension *)target {
  [((PythagorasDDimension *) NIL_CHK(target)) setSizeWithDouble:[self width] withDouble:[self height]];
  return target;
}

- (PythagorasDRectangle *)intersectionWithDouble:(double)rx
                                      withDouble:(double)ry
                                      withDouble:(double)rw
                                      withDouble:(double)rh {
  double x1 = [JavaLangMath maxWithDouble:[self x] withDouble:rx];
  double y1 = [JavaLangMath maxWithDouble:[self y] withDouble:ry];
  double x2 = [JavaLangMath minWithDouble:[self maxX] withDouble:rx + rw];
  double y2 = [JavaLangMath minWithDouble:[self maxY] withDouble:ry + rh];
  return [[[PythagorasDRectangle alloc] initWithDouble:x1 withDouble:y1 withDouble:x2 - x1 withDouble:y2 - y1] autorelease];
}

- (PythagorasDRectangle *)intersectionWithPythagorasDIRectangle:(id<PythagorasDIRectangle>)r {
  return [self intersectionWithDouble:[((id<PythagorasDIRectangle>) NIL_CHK(r)) x] withDouble:[((id<PythagorasDIRectangle>) NIL_CHK(r)) y] withDouble:[((id<PythagorasDIRectangle>) NIL_CHK(r)) width] withDouble:[((id<PythagorasDIRectangle>) NIL_CHK(r)) height]];
}

- (PythagorasDRectangle *)union__WithPythagorasDIRectangle:(id<PythagorasDIRectangle>)r {
  PythagorasDRectangle *rect = [[[PythagorasDRectangle alloc] initWithPythagorasDIRectangle:self] autorelease];
  [((PythagorasDRectangle *) NIL_CHK(rect)) addWithPythagorasDIRectangle:r];
  return rect;
}

- (BOOL)intersectsLineWithDouble:(double)x1
                      withDouble:(double)y1
                      withDouble:(double)x2
                      withDouble:(double)y2 {
  return [PythagorasDLines lineIntersectsRectWithDouble:x1 withDouble:y1 withDouble:x2 withDouble:y2 withDouble:[self x] withDouble:[self y] withDouble:[self width] withDouble:[self height]];
}

- (BOOL)intersectsLineWithPythagorasDILine:(id<PythagorasDILine>)l {
  return [self intersectsLineWithDouble:[((id<PythagorasDILine>) NIL_CHK(l)) x1] withDouble:[((id<PythagorasDILine>) NIL_CHK(l)) y1] withDouble:[((id<PythagorasDILine>) NIL_CHK(l)) x2] withDouble:[((id<PythagorasDILine>) NIL_CHK(l)) y2]];
}

- (int)outcodeWithDouble:(double)px
              withDouble:(double)py {
  int code = 0;
  if ([self width] <= 0) {
    code |= PythagorasDIRectangle_OUT_LEFT | PythagorasDIRectangle_OUT_RIGHT;
  }
  else if (px < [self x]) {
    code |= PythagorasDIRectangle_OUT_LEFT;
  }
  else if (px > [self maxX]) {
    code |= PythagorasDIRectangle_OUT_RIGHT;
  }
  if ([self height] <= 0) {
    code |= PythagorasDIRectangle_OUT_TOP | PythagorasDIRectangle_OUT_BOTTOM;
  }
  else if (py < [self y]) {
    code |= PythagorasDIRectangle_OUT_TOP;
  }
  else if (py > [self maxY]) {
    code |= PythagorasDIRectangle_OUT_BOTTOM;
  }
  return code;
}

- (int)outcodeWithPythagorasDIPoint:(id<PythagorasDIPoint>)p {
  return [self outcodeWithDouble:[((id<PythagorasDIPoint>) NIL_CHK(p)) x] withDouble:[((id<PythagorasDIPoint>) NIL_CHK(p)) y]];
}

- (PythagorasDRectangle *)clone {
  return [[[PythagorasDRectangle alloc] initWithPythagorasDIRectangle:self] autorelease];
}

- (BOOL)containsWithDouble:(double)px
                withDouble:(double)py {
  if ([self isEmpty]) return NO;
  double x = [self x], y = [self y];
  if (px < x || py < y) return NO;
  px -= x;
  py -= y;
  return px < [self width] && py < [self height];
}

- (BOOL)containsWithDouble:(double)rx
                withDouble:(double)ry
                withDouble:(double)rw
                withDouble:(double)rh {
  if ([self isEmpty]) return NO;
  double x1 = [self x], y1 = [self y], x2 = x1 + [self width], y2 = y1 + [self height];
  return (x1 <= rx) && (rx + rw <= x2) && (y1 <= ry) && (ry + rh <= y2);
}

- (BOOL)intersectsWithDouble:(double)rx
                  withDouble:(double)ry
                  withDouble:(double)rw
                  withDouble:(double)rh {
  if ([self isEmpty]) return NO;
  double x1 = [self x], y1 = [self y], x2 = x1 + [self width], y2 = y1 + [self height];
  return (rx + rw > x1) && (rx < x2) && (ry + rh > y1) && (ry < y2);
}

- (id<PythagorasDPathIterator>)pathIteratorWithPythagorasDTransform:(id<PythagorasDTransform>)t {
  return [[[PythagorasDAbstractRectangle_Iterator alloc] initWithPythagorasDIRectangle:self withPythagorasDTransform:t] autorelease];
}

- (id<PythagorasDPathIterator>)pathIteratorWithPythagorasDTransform:(id<PythagorasDTransform>)t
                                                         withDouble:(double)flatness {
  return [[[PythagorasDAbstractRectangle_Iterator alloc] initWithPythagorasDIRectangle:self withPythagorasDTransform:t] autorelease];
}

- (BOOL)isEqual:(id)obj {
  if (obj == self) {
    return YES;
  }
  if ([obj isKindOfClass:[PythagorasDAbstractRectangle class]]) {
    PythagorasDAbstractRectangle *r = (PythagorasDAbstractRectangle *) obj;
    return [((PythagorasDAbstractRectangle *) NIL_CHK(r)) x] == [self x] && [((PythagorasDAbstractRectangle *) NIL_CHK(r)) y] == [self y] && [((PythagorasDAbstractRectangle *) NIL_CHK(r)) width] == [self width] && [((PythagorasDAbstractRectangle *) NIL_CHK(r)) height] == [self height];
  }
  return NO;
}

- (NSUInteger)hash {
  return [PythagorasUtilPlatform hashCodeWithDouble:[self x]] ^ [PythagorasUtilPlatform hashCodeWithDouble:[self y]] ^ [PythagorasUtilPlatform hashCodeWithDouble:[self width]] ^ [PythagorasUtilPlatform hashCodeWithDouble:[self height]];
}

- (NSString *)description {
  return [NSString stringWithFormat:@"%@%@", [PythagorasDDimensions dimenToStringWithDouble:[self width] withDouble:[self height]], [PythagorasDPoints pointToStringWithDouble:[self x] withDouble:[self y]]];
}

- (double)height {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (double)width {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (double)x {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (double)y {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)init {
  return [super init];
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self clone] retain];
}

- (void)dealloc {
  [super dealloc];
}

@end
@implementation PythagorasDAbstractRectangle_Iterator

@synthesize x = x_;
@synthesize y = y_;
@synthesize width = width_;
@synthesize height = height_;
- (id<PythagorasDTransform>)t {
  return t_;
}
- (void)setT:(id<PythagorasDTransform>)t {
  JreOperatorRetainedAssign(&t_, self, t);
}
@synthesize t = t_;
@synthesize index = index_;

- (id)initWithPythagorasDIRectangle:(id<PythagorasDIRectangle>)r
           withPythagorasDTransform:(id<PythagorasDTransform>)at {
  if ((self = [super init])) {
    self.x = [((id<PythagorasDIRectangle>) NIL_CHK(r)) x];
    self.y = [((id<PythagorasDIRectangle>) NIL_CHK(r)) y];
    self.width = [((id<PythagorasDIRectangle>) NIL_CHK(r)) width];
    self.height = [((id<PythagorasDIRectangle>) NIL_CHK(r)) height];
    self.t = at;
    if (width_ < 0.0f || height_ < 0.0f) {
      index_ = 6;
    }
  }
  return self;
}

- (int)windingRule {
  return PythagorasDPathIterator_WIND_NON_ZERO;
}

- (BOOL)isDone {
  return index_ > 5;
}

- (void)next {
  index_++;
}

- (int)currentSegmentWithJavaLangDoubleArray:(IOSDoubleArray *)coords {
  if ([self isDone]) {
    @throw [[[JavaUtilNoSuchElementException alloc] initWithNSString:@"Iterator out of bounds"] autorelease];
  }
  if (index_ == 5) {
    return PythagorasDPathIterator_SEG_CLOSE;
  }
  int type;
  if (index_ == 0) {
    type = PythagorasDPathIterator_SEG_MOVETO;
    [((IOSDoubleArray *) NIL_CHK(coords)) replaceDoubleAtIndex:0 withDouble:x_];
    [((IOSDoubleArray *) NIL_CHK(coords)) replaceDoubleAtIndex:1 withDouble:y_];
  }
  else {
    type = PythagorasDPathIterator_SEG_LINETO;
    switch (index_) {
      case 1:
      [((IOSDoubleArray *) NIL_CHK(coords)) replaceDoubleAtIndex:0 withDouble:x_ + width_];
      [((IOSDoubleArray *) NIL_CHK(coords)) replaceDoubleAtIndex:1 withDouble:y_];
      break;
      case 2:
      [((IOSDoubleArray *) NIL_CHK(coords)) replaceDoubleAtIndex:0 withDouble:x_ + width_];
      [((IOSDoubleArray *) NIL_CHK(coords)) replaceDoubleAtIndex:1 withDouble:y_ + height_];
      break;
      case 3:
      [((IOSDoubleArray *) NIL_CHK(coords)) replaceDoubleAtIndex:0 withDouble:x_];
      [((IOSDoubleArray *) NIL_CHK(coords)) replaceDoubleAtIndex:1 withDouble:y_ + height_];
      break;
      case 4:
      [((IOSDoubleArray *) NIL_CHK(coords)) replaceDoubleAtIndex:0 withDouble:x_];
      [((IOSDoubleArray *) NIL_CHK(coords)) replaceDoubleAtIndex:1 withDouble:y_];
      break;
    }
  }
  if (t_ != nil) {
    [t_ transformWithJavaLangDoubleArray:coords withInt:0 withJavaLangDoubleArray:coords withInt:0 withInt:1];
  }
  return type;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&t_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasDAbstractRectangle_Iterator *typedCopy = (PythagorasDAbstractRectangle_Iterator *) copy;
  typedCopy.x = x_;
  typedCopy.y = y_;
  typedCopy.width = width_;
  typedCopy.height = height_;
  typedCopy.t = t_;
  typedCopy.index = index_;
}

@end