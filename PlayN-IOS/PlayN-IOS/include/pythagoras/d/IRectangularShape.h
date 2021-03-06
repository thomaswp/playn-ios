//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/IRectangularShape.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasDIRectangularShape_RESTRICT
#define PythagorasDIRectangularShape_INCLUDE_ALL 1
#endif
#undef PythagorasDIRectangularShape_RESTRICT

#if !defined (_PythagorasDIRectangularShape_) && (PythagorasDIRectangularShape_INCLUDE_ALL || PythagorasDIRectangularShape_INCLUDE)
#define _PythagorasDIRectangularShape_

@class PythagorasDPoint;
@class PythagorasDRectangle;

#define PythagorasDIShape_RESTRICT 1
#define PythagorasDIShape_INCLUDE 1
#include "pythagoras/d/IShape.h"

@protocol PythagorasDIRectangularShape < PythagorasDIShape, NSObject, JavaObject >
- (double)x;
- (double)y;
- (double)width;
- (double)height;
- (PythagorasDPoint *)min;
- (double)minX;
- (double)minY;
- (PythagorasDPoint *)max;
- (double)maxX;
- (double)maxY;
- (PythagorasDPoint *)center;
- (double)centerX;
- (double)centerY;
- (PythagorasDRectangle *)frame;
- (PythagorasDRectangle *)frameWithPythagorasDRectangle:(PythagorasDRectangle *)target;
@end
#endif
