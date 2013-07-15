//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/playn/sample/cute/core/CuteWorld.java
//
//  Created by Thomas on 7/15/13.
//

@class IOSIntArray;
@class IOSObjectArray;
@class PlaynSampleCuteCoreCuteObject;
@class PlaynSampleCuteCoreCuteWorld_Stack;
@protocol JavaUtilList;
@protocol PlaynCoreJson_Object;
@protocol PlaynCoreJson_Writer;
@protocol PlaynCoreSurface;

#import "JreEmulation.h"

#define PlaynSampleCuteCoreCuteWorld_FRICTION 10.0
#define PlaynSampleCuteCoreCuteWorld_GRAVITY -10.0
#define PlaynSampleCuteCoreCuteWorld_MAX_STACK_HEIGHT 8
#define PlaynSampleCuteCoreCuteWorld_OBJECT_BASE 30
#define PlaynSampleCuteCoreCuteWorld_RESTITUTION 0.4
#define PlaynSampleCuteCoreCuteWorld_SHADOW_EAST 0
#define PlaynSampleCuteCoreCuteWorld_SHADOW_NORTH 2
#define PlaynSampleCuteCoreCuteWorld_SHADOW_NORTHEAST 1
#define PlaynSampleCuteCoreCuteWorld_SHADOW_NORTHWEST 3
#define PlaynSampleCuteCoreCuteWorld_SHADOW_SIDE_WEST 8
#define PlaynSampleCuteCoreCuteWorld_SHADOW_SOUTH 6
#define PlaynSampleCuteCoreCuteWorld_SHADOW_SOUTHEAST 7
#define PlaynSampleCuteCoreCuteWorld_SHADOW_SOUTHWEST 5
#define PlaynSampleCuteCoreCuteWorld_SHADOW_WEST 4
#define PlaynSampleCuteCoreCuteWorld_TILE_BASE 90
#define PlaynSampleCuteCoreCuteWorld_TILE_DEPTH 40
#define PlaynSampleCuteCoreCuteWorld_TILE_HEIGHT 80
#define PlaynSampleCuteCoreCuteWorld_TILE_IMAGE_HEIGHT 170
#define PlaynSampleCuteCoreCuteWorld_TILE_WIDTH 100

@interface PlaynSampleCuteCoreCuteWorld : NSObject {
 @public
  IOSObjectArray *tiles_;
  IOSObjectArray *shadows_;
  IOSObjectArray *world_;
  int worldWidth__, worldHeight__;
  double viewOriginX_, viewOriginY_, viewOriginZ_;
  int updateCounter_;
}

@property (nonatomic, strong) IOSObjectArray *tiles;
@property (nonatomic, strong) IOSObjectArray *shadows;
@property (nonatomic, strong) IOSObjectArray *world;
@property (nonatomic, assign) int worldWidth_;
@property (nonatomic, assign) int worldHeight_;
@property (nonatomic, assign) double viewOriginX;
@property (nonatomic, assign) double viewOriginY;
@property (nonatomic, assign) double viewOriginZ;
@property (nonatomic, assign) int updateCounter;

+ (IOSObjectArray *)tileNames;
+ (IOSObjectArray *)shadowNames;
+ (PlaynSampleCuteCoreCuteWorld_Stack *)EMPTY_STACK;
- (id)initWithPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)data;
- (id)initWithInt:(int)width
          withInt:(int)height;
- (void)addObjectWithPlaynSampleCuteCoreCuteObject:(PlaynSampleCuteCoreCuteObject *)o;
- (void)addTileWithInt:(int)tx
               withInt:(int)ty
               withInt:(int)type;
- (void)removeTopTileWithInt:(int)tx
                     withInt:(int)ty;
- (void)paintWithPlaynCoreSurface:(id<PlaynCoreSurface>)surf
                        withFloat:(float)alpha;
- (void)setViewOriginWithDouble:(double)x
                     withDouble:(double)y
                     withDouble:(double)z;
- (void)updatePhysicsWithDouble:(double)delta;
- (void)writeWithPlaynCoreJson_Writer:(id<PlaynCoreJson_Writer>)w;
- (int)heightWithInt:(int)tx
             withInt:(int)ty;
- (NSString *)imageResWithNSString:(NSString *)name;
- (void)initWorldWithPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)data OBJC_METHOD_FAMILY_NONE;
- (void)loadImages;
- (void)moveByWithPlaynSampleCuteCoreCuteObject:(PlaynSampleCuteCoreCuteObject *)o
                                     withDouble:(double)dx
                                     withDouble:(double)dy
                                     withDouble:(double)dz;
- (void)paintObjectsWithPlaynCoreSurface:(id<PlaynCoreSurface>)surf
  withPlaynSampleCuteCoreCuteWorld_Stack:(PlaynSampleCuteCoreCuteWorld_Stack *)stack
                                 withInt:(int)tz
                               withFloat:(float)alpha;
- (void)paintShadowWithPlaynCoreSurface:(id<PlaynCoreSurface>)surf
                                withInt:(int)tx
                                withInt:(int)ty
                                withInt:(int)px
                                withInt:(int)py;
- (double)pixelToWorldXWithPlaynCoreSurface:(id<PlaynCoreSurface>)surf
                                  withFloat:(float)x;
- (double)pixelToWorldYWithPlaynCoreSurface:(id<PlaynCoreSurface>)surf
                                  withFloat:(float)y
                                 withDouble:(double)z;
- (PlaynSampleCuteCoreCuteWorld_Stack *)stackWithInt:(int)tx
                                             withInt:(int)ty;
- (PlaynSampleCuteCoreCuteWorld_Stack *)stackForObjectWithPlaynSampleCuteCoreCuteObject:(PlaynSampleCuteCoreCuteObject *)o;
- (void)updatePhysicsWithPlaynSampleCuteCoreCuteObject:(PlaynSampleCuteCoreCuteObject *)o
                                            withDouble:(double)delta;
- (void)updatePhysicsWithPlaynSampleCuteCoreCuteWorld_Stack:(PlaynSampleCuteCoreCuteWorld_Stack *)stack
                                                 withDouble:(double)delta;
- (int)worldToPixelXWithPlaynCoreSurface:(id<PlaynCoreSurface>)surf
                              withDouble:(double)x;
- (int)worldToPixelYWithPlaynCoreSurface:(id<PlaynCoreSurface>)surf
                              withDouble:(double)y
                              withDouble:(double)z;
- (double)worldWidth;
- (double)worldHeight;
@end

@interface PlaynSampleCuteCoreCuteWorld_Stack : NSObject {
 @public
  IOSIntArray *tiles_;
  id<JavaUtilList> objects_;
}

@property (nonatomic, strong) IOSIntArray *tiles;
@property (nonatomic, strong) id<JavaUtilList> objects;

- (int)height;
- (id)init;
@end
