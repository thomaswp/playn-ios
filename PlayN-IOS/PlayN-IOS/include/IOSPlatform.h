//
//  PlatformIOS.h
//  tuxblocks
//
//  Created by Thomas on 7/2/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "playn/core/AbstractPlatform.h"

@class IOSGraphics;
@class IOSAssets;
@class IOSPointer;
@class IOSLog;
@class IOSKeyboard;
@class IOSTouch;
@class PlaynCoreJsonJsonImpl;

@interface SupportedOrients : NSObject

+ (SupportedOrients*) LANDSCAPES;
+ (SupportedOrients*) PORTRAITS;
+ (SupportedOrients*) ALL;
- (id) initWithDefaultOrientation:(UIDeviceOrientation) defaultOrientation;
- (BOOL) isSupportedWithOrientation:(UIDeviceOrientation) orient;

@end

@interface SupportedOrients_Portraits : SupportedOrients
@end

@interface SupportedOrients_Landscapes : SupportedOrients
@end

@interface SupportedOrients_All : SupportedOrients
@end

@interface IOSPlatform_Config : NSObject {
    @public
    SupportedOrients* orients;
    BOOL iPadLikePhone;
    int frameInterval;
    BOOL interpolateCanvasDrawing;
}

@end

@interface IOSPlatform : PlaynCoreAbstractPlatform {
}

+ (IOSPlatform*) registerPlatformWithApp:(UIApplication*)app;
+ (IOSPlatform*) registerPlatformWithApp:(UIApplication*)app withConfig:(IOSPlatform_Config*)config;
- (void) update;
- (void) paint;
- (void) viewDidInitWithInt:(int)defaultFrameBuffer;
- (int) preferredFPS;
- (void) onOrientationChangeWithOrient:(UIDeviceOrientation)orient;

@end
