//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/playn/showcase/core/snake/SnakeDemo.java
//
//  Created by Thomas on 7/25/13.
//

#ifndef _PlaynShowcaseCoreSnakeSnakeDemo_H_
#define _PlaynShowcaseCoreSnakeSnakeDemo_H_

@class IOSObjectArray;
@protocol PlaynCoreGroupLayer;

#import "JreEmulation.h"
#include "playn/showcase/core/Demo.h"

@interface PlaynShowcaseCoreSnakeSnakeDemo : PlaynShowcaseCoreDemo {
 @public
  id<PlaynCoreGroupLayer> layer_;
  IOSObjectArray *segments_;
  float dx_, dy_, dd_;
}

@property (nonatomic, strong) id<PlaynCoreGroupLayer> layer;
@property (nonatomic, strong) IOSObjectArray *segments;
@property (nonatomic, assign) float dx;
@property (nonatomic, assign) float dy;
@property (nonatomic, assign) float dd;

- (NSString *)name;
- (void)init__ OBJC_METHOD_FAMILY_NONE;
- (void)shutdown;
- (void)updateWithInt:(int)delta;
- (id)init;
@end

#endif // _PlaynShowcaseCoreSnakeSnakeDemo_H_
