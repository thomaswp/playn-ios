//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/playn/sample/hello/core/HelloGame.java
//
//  Created by Thomas on 7/10/13.
//

@protocol JavaUtilList;
@protocol PlaynCoreGroupLayer;
@protocol PlaynCorePointer_Event;

#import "JreEmulation.h"
#import "playn/core/Game.h"
#import "playn/core/Pointer.h"

#define PlaynSampleHelloCoreHelloGame_UPDATE_RATE 25

@interface PlaynSampleHelloCoreHelloGame : PlaynCoreGame_Default {
 @public
  id<PlaynCoreGroupLayer> peaLayer_;
  id<JavaUtilList> peas_;
}

@property (nonatomic, strong) id<PlaynCoreGroupLayer> peaLayer;
@property (nonatomic, strong) id<JavaUtilList> peas;

+ (int)UPDATE_RATE;
- (id)init;
- (void)init__ OBJC_METHOD_FAMILY_NONE;
- (void)updateWithInt:(int)delta;
- (void)paintWithFloat:(float)alpha;
@end

@interface PlaynSampleHelloCoreHelloGame_$1 : PlaynCorePointer_Adapter {
 @public
  PlaynSampleHelloCoreHelloGame *this$0_;
}

@property (nonatomic, strong) PlaynSampleHelloCoreHelloGame *this$0;

- (void)onPointerEndWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (id)initWithPlaynSampleHelloCoreHelloGame:(PlaynSampleHelloCoreHelloGame *)outer$;
@end