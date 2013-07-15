//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/playn/showcase/core/Showcase.java
//
//  Created by Thomas on 7/15/13.
//

@class IOSObjectArray;
@class PlaynShowcaseCoreDemo;
@protocol JavaUtilList;
@protocol JavaUtilSet;
@protocol PlaynCoreKeyboard_Event;
@protocol PlaynShowcaseCoreShowcase_DeviceService;

#import "JreEmulation.h"
#import "playn/core/Game.h"
#import "playn/core/Keyboard.h"
#import "playn/core/Touch.h"

@interface PlaynShowcaseCoreShowcase : PlaynCoreGame_Default {
 @public
  id<JavaUtilSet> backKeys_;
  PlaynShowcaseCoreDemo *menuDemo_;
  PlaynShowcaseCoreDemo *activeDemo_;
  long long int activeStamp_;
  id<PlaynShowcaseCoreShowcase_DeviceService> deviceService_;
  id<JavaUtilList> demos_;
}

@property (nonatomic, strong) id<JavaUtilSet> backKeys;
@property (nonatomic, strong) PlaynShowcaseCoreDemo *menuDemo;
@property (nonatomic, strong) PlaynShowcaseCoreDemo *activeDemo;
@property (nonatomic, assign) long long int activeStamp;
@property (nonatomic, strong) id<PlaynShowcaseCoreShowcase_DeviceService> deviceService;
@property (nonatomic, strong) id<JavaUtilList> demos;

- (id)initWithPlaynShowcaseCoreShowcase_DeviceService:(id<PlaynShowcaseCoreShowcase_DeviceService>)deviceService;
- (BOOL)shouldExitOnBack;
- (void)activateDemoWithPlaynShowcaseCoreDemo:(PlaynShowcaseCoreDemo *)demo;
- (void)init__ OBJC_METHOD_FAMILY_NONE;
- (void)updateWithInt:(int)delta;
- (void)paintWithFloat:(float)alpha;
@end

@protocol PlaynShowcaseCoreShowcase_DeviceService < NSObject >
- (NSString *)info;
@end

@interface PlaynShowcaseCoreShowcase_$1 : PlaynCoreKeyboard_Adapter {
 @public
  PlaynShowcaseCoreShowcase *this$0_;
}

@property (nonatomic, strong) PlaynShowcaseCoreShowcase *this$0;

- (void)onKeyDownWithPlaynCoreKeyboard_Event:(id<PlaynCoreKeyboard_Event>)event;
- (void)onKeyUpWithPlaynCoreKeyboard_Event:(id<PlaynCoreKeyboard_Event>)event;
- (id)initWithPlaynShowcaseCoreShowcase:(PlaynShowcaseCoreShowcase *)outer$;
@end

@interface PlaynShowcaseCoreShowcase_$2 : PlaynCoreTouch_Adapter {
 @public
  PlaynShowcaseCoreShowcase *this$0_;
}

@property (nonatomic, strong) PlaynShowcaseCoreShowcase *this$0;

- (void)onTouchStartWithPlaynCoreTouch_EventArray:(IOSObjectArray *)touches;
- (id)initWithPlaynShowcaseCoreShowcase:(PlaynShowcaseCoreShowcase *)outer$;
@end