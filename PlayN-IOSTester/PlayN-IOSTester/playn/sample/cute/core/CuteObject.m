//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/playn/sample/cute/core/CuteObject.java
//
//  Created by Thomas on 7/15/13.
//

#import "playn/core/Image.h"
#import "playn/sample/cute/core/CuteObject.h"
#import "playn/sample/cute/core/CuteWorld.h"

@implementation PlaynSampleCuteCoreCuteObject

@synthesize img = img_;
@synthesize oldx = oldx_;
@synthesize oldy = oldy_;
@synthesize oldz = oldz_;
@synthesize x_ = x__;
@synthesize y_ = y__;
@synthesize z_ = z__;
@synthesize vx = vx_;
@synthesize vy = vy_;
@synthesize vz = vz_;
@synthesize ax = ax_;
@synthesize ay = ay_;
@synthesize az = az_;
@synthesize r = r_;
@synthesize stack = stack_;
@synthesize lastUpdated = lastUpdated_;
@synthesize resting = resting_;

- (id)initWithPlaynCoreImage:(id<PlaynCoreImage>)img {
  if ((self = [super init])) {
    self.img = img;
  }
  return self;
}

- (BOOL)isResting {
  return resting_;
}

- (void)setAccelerationWithDouble:(double)ax
                       withDouble:(double)ay
                       withDouble:(double)az {
  self.ax = ax;
  self.ay = ay;
  self.az = az;
}

- (void)setPosWithDouble:(double)x
              withDouble:(double)y
              withDouble:(double)z {
  self.x_ = x;
  self.y_ = y;
  self.z_ = z;
}

- (void)setVelocityWithDouble:(double)vx
                   withDouble:(double)vy
                   withDouble:(double)vz {
  self.vx = vx;
  self.vy = vy;
  self.vz = vz;
}

- (void)saveOldPos {
  self.oldx = x__;
  self.oldy = y__;
  self.oldz = z__;
}

- (double)xWithDouble:(double)alpha {
  return x__ * alpha + oldx_ * (1.0f - alpha);
}

- (double)yWithDouble:(double)alpha {
  return y__ * alpha + oldy_ * (1.0f - alpha);
}

- (double)zWithDouble:(double)alpha {
  return z__ * alpha + oldz_ * (1.0f - alpha);
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynSampleCuteCoreCuteObject *typedCopy = (PlaynSampleCuteCoreCuteObject *) copy;
  typedCopy.img = img_;
  typedCopy.oldx = oldx_;
  typedCopy.oldy = oldy_;
  typedCopy.oldz = oldz_;
  typedCopy.x_ = x__;
  typedCopy.y_ = y__;
  typedCopy.z_ = z__;
  typedCopy.vx = vx_;
  typedCopy.vy = vy_;
  typedCopy.vz = vz_;
  typedCopy.ax = ax_;
  typedCopy.ay = ay_;
  typedCopy.az = az_;
  typedCopy.r = r_;
  typedCopy.stack = stack_;
  typedCopy.lastUpdated = lastUpdated_;
  typedCopy.resting = resting_;
}

@end
