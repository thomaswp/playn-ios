//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/playn/showcase/core/Demo.java
//
//  Created by Thomas on 7/15/13.
//

@protocol PlaynCoreKeyboard_Listener;

#import "JreEmulation.h"

#define PlaynShowcaseCoreDemo_UPDATE_RATE 25

@interface PlaynShowcaseCoreDemo : NSObject {
}

+ (int)UPDATE_RATE;
- (NSString *)name;
- (void)init__ OBJC_METHOD_FAMILY_NONE;
- (void)shutdown;
- (void)updateWithInt:(int)delta;
- (void)paintWithFloat:(float)alpha;
- (id<PlaynCoreKeyboard_Listener>)keyboardListener;
- (id)init;
@end
