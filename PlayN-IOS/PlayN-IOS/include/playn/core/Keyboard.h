//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/Keyboard.java
//
//  Created by Thomas on 7/10/13.
//

@class JavaLangStringBuilder;
@class PlaynCoreKeyEnum;
@class PlaynCoreKeyboard_TextTypeEnum;
@protocol PlaynCoreEvents_Flags;
@protocol PlaynCoreKeyboard_Listener;
@protocol PlaynCoreUtilCallback;

#import "JreEmulation.h"
#import "java/lang/Enum.h"
#import "playn/core/Events.h"

@protocol PlaynCoreKeyboard < NSObject >
- (void)setListenerWithPlaynCoreKeyboard_Listener:(id<PlaynCoreKeyboard_Listener>)listener;
- (BOOL)hasHardwareKeyboard;
- (void)getTextWithPlaynCoreKeyboard_TextTypeEnum:(PlaynCoreKeyboard_TextTypeEnum *)textType
                                     withNSString:(NSString *)label
                                     withNSString:(NSString *)initialValue
                        withPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback;
@end

@protocol PlaynCoreKeyboard_Event < PlaynCoreEvents_Input, NSObject >
- (PlaynCoreKeyEnum *)key;
@end

@interface PlaynCoreKeyboard_Event_Impl : PlaynCoreEvents_Input_Impl < PlaynCoreKeyboard_Event > {
 @public
  PlaynCoreKeyEnum *key__;
}

@property (nonatomic, strong) PlaynCoreKeyEnum *key_;

- (PlaynCoreKeyEnum *)key;
- (id)initWithPlaynCoreEvents_Flags:(id<PlaynCoreEvents_Flags>)flags
                         withDouble:(double)time
               withPlaynCoreKeyEnum:(PlaynCoreKeyEnum *)key;
- (NSString *)name;
- (void)addFieldsWithJavaLangStringBuilder:(JavaLangStringBuilder *)builder;
@end

@protocol PlaynCoreKeyboard_TypedEvent < PlaynCoreEvents_Input, NSObject >
- (unichar)typedChar;
@end

@interface PlaynCoreKeyboard_TypedEvent_Impl : PlaynCoreEvents_Input_Impl < PlaynCoreKeyboard_TypedEvent > {
 @public
  unichar typedChar__;
}

@property (nonatomic, assign) unichar typedChar_;

- (unichar)typedChar;
- (id)initWithPlaynCoreEvents_Flags:(id<PlaynCoreEvents_Flags>)flags
                         withDouble:(double)time
                        withUnichar:(unichar)typedChar;
- (NSString *)name;
- (void)addFieldsWithJavaLangStringBuilder:(JavaLangStringBuilder *)builder;
@end

@protocol PlaynCoreKeyboard_Listener < NSObject >
- (void)onKeyDownWithPlaynCoreKeyboard_Event:(id<PlaynCoreKeyboard_Event>)event;
- (void)onKeyTypedWithPlaynCoreKeyboard_TypedEvent:(id<PlaynCoreKeyboard_TypedEvent>)event;
- (void)onKeyUpWithPlaynCoreKeyboard_Event:(id<PlaynCoreKeyboard_Event>)event;
@end

@interface PlaynCoreKeyboard_Adapter : NSObject < PlaynCoreKeyboard_Listener > {
}

- (void)onKeyDownWithPlaynCoreKeyboard_Event:(id<PlaynCoreKeyboard_Event>)event;
- (void)onKeyTypedWithPlaynCoreKeyboard_TypedEvent:(id<PlaynCoreKeyboard_TypedEvent>)event;
- (void)onKeyUpWithPlaynCoreKeyboard_Event:(id<PlaynCoreKeyboard_Event>)event;
- (id)init;
@end

typedef enum {
  PlaynCoreKeyboard_TextType_DEFAULT = 0,
  PlaynCoreKeyboard_TextType_NUMBER = 1,
  PlaynCoreKeyboard_TextType_EMAIL = 2,
  PlaynCoreKeyboard_TextType_URL = 3,
} PlaynCoreKeyboard_TextType;

@interface PlaynCoreKeyboard_TextTypeEnum : JavaLangEnum < NSCopying > {
}
+ (PlaynCoreKeyboard_TextTypeEnum *)DEFAULT;
+ (PlaynCoreKeyboard_TextTypeEnum *)NUMBER;
+ (PlaynCoreKeyboard_TextTypeEnum *)EMAIL;
+ (PlaynCoreKeyboard_TextTypeEnum *)URL;
+ (IOSObjectArray *)values;
+ (PlaynCoreKeyboard_TextTypeEnum *)valueOfWithNSString:(NSString *)name;
- (id)copyWithZone:(NSZone *)zone;
- (id)initWithNSString:(NSString *)name withInt:(int)ordinal;
@end