//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/IRay3.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasDIRay3_RESTRICT
#define PythagorasDIRay3_INCLUDE_ALL 1
#endif
#undef PythagorasDIRay3_RESTRICT

#if !defined (_PythagorasDIRay3_) && (PythagorasDIRay3_INCLUDE_ALL || PythagorasDIRay3_INCLUDE)
#define _PythagorasDIRay3_

@protocol PythagorasDIVector3;

@protocol PythagorasDIRay3 < NSObject, JavaObject >
- (id<PythagorasDIVector3>)origin;
- (id<PythagorasDIVector3>)direction;
@end
#endif
