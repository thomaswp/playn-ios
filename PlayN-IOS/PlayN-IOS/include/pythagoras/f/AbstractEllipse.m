//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/AbstractEllipse.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSClass.h"
#include "IOSFloatArray.h"
#include "IOSObjectArray.h"
#include "java/util/NoSuchElementException.h"
#include "pythagoras/f/AbstractEllipse.h"
#include "pythagoras/f/Ellipse.h"
#include "pythagoras/f/FloatMath.h"
#include "pythagoras/f/IEllipse.h"
#include "pythagoras/f/IRectangularShape.h"
#include "pythagoras/f/PathIterator.h"
#include "pythagoras/f/RectangularShape.h"
#include "pythagoras/f/Transform.h"

@implementation PythagorasFAbstractEllipse

static float PythagorasFAbstractEllipse_U_;
static IOSObjectArray * PythagorasFAbstractEllipse_POINTS_;

+ (float)U {
  return PythagorasFAbstractEllipse_U_;
}

+ (IOSObjectArray *)POINTS {
  return PythagorasFAbstractEllipse_POINTS_;
}

- (PythagorasFEllipse *)clone {
  return [[PythagorasFEllipse alloc] initWithFloat:[self x] withFloat:[self y] withFloat:[self width] withFloat:[self height]];
}

- (BOOL)containsWithFloat:(float)px
                withFloat:(float)py {
  if ([self isEmpty]) return NO;
  float a = (px - [self x]) / [self width] - 0.5f;
  float b = (py - [self y]) / [self height] - 0.5f;
  return a * a + b * b < 0.25f;
}

- (BOOL)containsWithFloat:(float)rx
                withFloat:(float)ry
                withFloat:(float)rw
                withFloat:(float)rh {
  if ([self isEmpty] || rw <= 0.0f || rh <= 0.0f) return NO;
  float rx1 = rx, ry1 = ry, rx2 = rx + rw, ry2 = ry + rh;
  return [self containsWithFloat:rx1 withFloat:ry1] && [self containsWithFloat:rx2 withFloat:ry1] && [self containsWithFloat:rx2 withFloat:ry2] && [self containsWithFloat:rx1 withFloat:ry2];
}

- (BOOL)intersectsWithFloat:(float)rx
                  withFloat:(float)ry
                  withFloat:(float)rw
                  withFloat:(float)rh {
  if ([self isEmpty] || rw <= 0.0f || rh <= 0.0f) return NO;
  float cx = [self x] + [self width] / 2.0f;
  float cy = [self y] + [self height] / 2.0f;
  float rx1 = rx, ry1 = ry, rx2 = rx + rw, ry2 = ry + rh;
  float nx = cx < rx1 ? rx1 : (cx > rx2 ? rx2 : cx);
  float ny = cy < ry1 ? ry1 : (cy > ry2 ? ry2 : cy);
  return [self containsWithFloat:nx withFloat:ny];
}

- (id<PythagorasFPathIterator>)pathIteratorWithPythagorasFTransform:(id<PythagorasFTransform>)at {
  return [[PythagorasFAbstractEllipse_Iterator alloc] initWithPythagorasFIEllipse:self withPythagorasFTransform:at];
}

- (float)height {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)width {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)x {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)y {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)init {
  return [super init];
}

+ (void)initialize {
  if (self == [PythagorasFAbstractEllipse class]) {
    PythagorasFAbstractEllipse_U_ = 2.0f / 3.0f * ([PythagorasFFloatMath sqrtWithFloat:2] - 1.0f);
    PythagorasFAbstractEllipse_POINTS_ = [IOSObjectArray arrayWithObjects:(id[]){ [IOSFloatArray arrayWithFloats:(float[]){ 1.0f, 0.5f + PythagorasFAbstractEllipse_U_, 0.5f + PythagorasFAbstractEllipse_U_, 1.0f, 0.5f, 1.0f } count:6], [IOSFloatArray arrayWithFloats:(float[]){ 0.5f - PythagorasFAbstractEllipse_U_, 1.0f, 0.0f, 0.5f + PythagorasFAbstractEllipse_U_, 0.0f, 0.5f } count:6], [IOSFloatArray arrayWithFloats:(float[]){ 0.0f, 0.5f - PythagorasFAbstractEllipse_U_, 0.5f - PythagorasFAbstractEllipse_U_, 0.0f, 0.5f, 0.0f } count:6], [IOSFloatArray arrayWithFloats:(float[]){ 0.5f + PythagorasFAbstractEllipse_U_, 0.0f, 1.0f, 0.5f - PythagorasFAbstractEllipse_U_, 1.0f, 0.5f } count:6] } count:4 type:[IOSFloatArray iosClass]];
  }
}

- (id)copyWithZone:(NSZone *)zone {
  return [self clone];
}

@end
@implementation PythagorasFAbstractEllipse_Iterator

@synthesize x = x_;
@synthesize y = y_;
@synthesize width = width_;
@synthesize height = height_;
@synthesize t = t_;
@synthesize index = index_;

- (id)initWithPythagorasFIEllipse:(id<PythagorasFIEllipse>)e
         withPythagorasFTransform:(id<PythagorasFTransform>)t {
  if ((self = [super init])) {
    self.x = [((id<PythagorasFIEllipse>) nil_chk(e)) x];
    self.y = [((id<PythagorasFIEllipse>) nil_chk(e)) y];
    self.width = [((id<PythagorasFIEllipse>) nil_chk(e)) width];
    self.height = [((id<PythagorasFIEllipse>) nil_chk(e)) height];
    self.t = t;
    if (width_ < 0.0f || height_ < 0.0f) {
      index_ = 6;
    }
  }
  return self;
}

- (int)windingRule {
  return PythagorasFPathIterator_WIND_NON_ZERO;
}

- (BOOL)isDone {
  return index_ > 5;
}

- (void)next {
  index_++;
}

- (int)currentSegmentWithFloatArray:(IOSFloatArray *)coords {
  if ([self isDone]) {
    @throw [[JavaUtilNoSuchElementException alloc] initWithNSString:@"Iterator out of bounds"];
  }
  if (index_ == 5) {
    return PythagorasFPathIterator_SEG_CLOSE;
  }
  int type;
  int count;
  if (index_ == 0) {
    type = PythagorasFPathIterator_SEG_MOVETO;
    count = 1;
    IOSFloatArray *p = [((IOSObjectArray *) nil_chk([PythagorasFAbstractEllipse POINTS])) objectAtIndex:3];
    (*[((IOSFloatArray *) nil_chk(coords)) floatRefAtIndex:0]) = x_ + [((IOSFloatArray *) nil_chk(p)) floatAtIndex:4] * width_;
    (*[((IOSFloatArray *) nil_chk(coords)) floatRefAtIndex:1]) = y_ + [((IOSFloatArray *) nil_chk(p)) floatAtIndex:5] * height_;
  }
  else {
    type = PythagorasFPathIterator_SEG_CUBICTO;
    count = 3;
    IOSFloatArray *p = [((IOSObjectArray *) nil_chk([PythagorasFAbstractEllipse POINTS])) objectAtIndex:index_ - 1];
    int j = 0;
    for (int i = 0; i < 3; i++) {
      (*[((IOSFloatArray *) nil_chk(coords)) floatRefAtIndex:j]) = x_ + [((IOSFloatArray *) nil_chk(p)) floatAtIndex:j++] * width_;
      (*[((IOSFloatArray *) nil_chk(coords)) floatRefAtIndex:j]) = y_ + [((IOSFloatArray *) nil_chk(p)) floatAtIndex:j++] * height_;
    }
  }
  if (t_ != nil) {
    [t_ transformWithFloatArray:coords withInt:0 withFloatArray:coords withInt:0 withInt:count];
  }
  return type;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasFAbstractEllipse_Iterator *typedCopy = (PythagorasFAbstractEllipse_Iterator *) copy;
  typedCopy.x = x_;
  typedCopy.y = y_;
  typedCopy.width = width_;
  typedCopy.height = height_;
  typedCopy.t = t_;
  typedCopy.index = index_;
}

@end
