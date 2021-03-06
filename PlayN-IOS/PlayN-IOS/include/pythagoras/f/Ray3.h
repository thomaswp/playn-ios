//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/Ray3.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasFRay3_RESTRICT
#define PythagorasFRay3_INCLUDE_ALL 1
#endif
#undef PythagorasFRay3_RESTRICT

#if !defined (_PythagorasFRay3_) && (PythagorasFRay3_INCLUDE_ALL || PythagorasFRay3_INCLUDE)
#define _PythagorasFRay3_

@class PythagorasFVector3;

#define PythagorasFIRay3_RESTRICT 1
#define PythagorasFIRay3_INCLUDE 1
#include "pythagoras/f/IRay3.h"

@interface PythagorasFRay3 : NSObject < PythagorasFIRay3 > {
 @public
  PythagorasFVector3 *origin__;
  PythagorasFVector3 *direction__;
}

@property (nonatomic, strong) PythagorasFVector3 *origin_;
@property (nonatomic, strong) PythagorasFVector3 *direction_;

- (id)initWithPythagorasFVector3:(PythagorasFVector3 *)origin
          withPythagorasFVector3:(PythagorasFVector3 *)direction;
- (id)initWithPythagorasFRay3:(PythagorasFRay3 *)other;
- (id)init;
- (PythagorasFRay3 *)setWithPythagorasFRay3:(PythagorasFRay3 *)other;
- (PythagorasFRay3 *)setWithPythagorasFVector3:(PythagorasFVector3 *)origin
                        withPythagorasFVector3:(PythagorasFVector3 *)direction;
- (PythagorasFVector3 *)origin;
- (PythagorasFVector3 *)direction;
- (NSString *)description;
@end
#endif
