//
//  PlatformIOS.m
//  tuxblocks
//
//  Created by Thomas on 7/2/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "IOSPlatform.h"
#import "IOSGraphics.h"
#import "IOSGLContext.h"
#import "IOSAssets.h"
#import "IOSPointer.h"
#import "IOSLog.h"
#import "IOSKeyboard.h"
#import "IOSTouch.h"
#import "IOSViewController.h"
#import "java/lang/Runnable.h"
#import "java/lang/Math.h"
#import "java/lang/System.h"
#import "playn/core/PlayN.h"
#import "playn/core/Game.h"
#import "playn/core/Audio.h"
#import "playn/core/Graphics.h"
#import "playn/core/Mouse.h"
#import "playn/core/MouseStub.h"
#import "playn/core/Keyboard.h"
#import "playn/core/Touch.h"
#import "playn/core/Pointer.h"
#import "playn/core/RegularExpression.h"
#import "playn/core/Assets.h"
#import "playn/core/Net.h"
#include "playn/core/Platform.h"
#import "playn/core/util/RunQueue.h"
#import "playn/core/gl/GLContext.h"
#import "playn/core/json/JsonImpl.h"

@implementation SupportedOrients {
    @public UIDeviceOrientation defaultOrient;
}

SupportedOrients *LANDSCAPES, *PORTRAITS, *ALL;

+ (void)initialize {
    PORTRAITS = [[SupportedOrients_Portraits alloc] initWithDefaultOrientation:UIDeviceOrientationPortrait];
    LANDSCAPES = [[SupportedOrients_Landscapes alloc] initWithDefaultOrientation:UIDeviceOrientationLandscapeRight];
    ALL = [[SupportedOrients_All alloc] initWithDefaultOrientation:UIDeviceOrientationPortrait];
}

+ (SupportedOrients *)PORTRAITS {
    return PORTRAITS;
}

+ (SupportedOrients *)LANDSCAPES {
    return LANDSCAPES;
}

+ (SupportedOrients *)ALL {
    return ALL;
}

- (id) initWithDefaultOrientation:(UIDeviceOrientation)defaultOrientation {
    if (self = [super init]) {
        defaultOrient = defaultOrientation;
    }
    return self;
}

- (BOOL) isSupportedWithOrientation:(UIDeviceOrientation)orient {
    //cannot call an abstract method
    [self doesNotRecognizeSelector:_cmd];
    return NO;
}

@end

@implementation SupportedOrients_Portraits

- (BOOL) isSupportedWithOrientation:(UIDeviceOrientation)orient {
    return orient == UIDeviceOrientationPortrait ||
    orient == UIDeviceOrientationPortraitUpsideDown;
}

@end

@implementation SupportedOrients_Landscapes

- (BOOL) isSupportedWithOrientation:(UIDeviceOrientation)orient {
    return orient == UIDeviceOrientationLandscapeLeft ||
    orient == UIDeviceOrientationLandscapeRight;
}

@end

@implementation SupportedOrients_All

- (BOOL) isSupportedWithOrientation:(UIDeviceOrientation)orient {
    return orient == UIDeviceOrientationPortrait ||
    orient == UIDeviceOrientationPortraitUpsideDown ||
    orient == UIDeviceOrientationLandscapeLeft ||
    orient == UIDeviceOrientationLandscapeRight;
}

@end

@implementation IOSPlatform_Config

- (id) init {
    if (self = [super init]) {
        orients = [SupportedOrients PORTRAITS];
        iPadLikePhone = NO;
        frameInterval = 1;
        interpolateCanvasDrawing = YES;
    }
    return self;
}

@end

@implementation IOSPlatform {
    long long lastTick;
    int elapsedTime;
    int frames;
    long long lastFPS;
    
    //TODO: audio
    IOSGraphics* graphics;
    PlaynCoreJsonJsonImpl* json;
    IOSKeyboard* keyboard;
    //TODO: net
    IOSPointer* pointer;
    //TODO: storage
    IOSTouch* touch;
    IOSAssets* assets;
    //TODO: analytics
    
    id<PlaynCoreGame> game;
    
    SupportedOrients* orients;
    int currentOrientation;
    int frameInterval;
    UIApplication* app;
    UIWindow* mainWindow;
    IOSViewController* rootViewController;
}

const bool DISPLAY_FPS = YES;

+ (IOSPlatform*) registerPlatformWithApp:(UIApplication *)app {
    return [IOSPlatform registerPlatformWithApp:app withConfig:[[IOSPlatform_Config alloc] init]];
}

+ (IOSPlatform*) registerPlatformWithApp:(UIApplication *)app withConfig:(IOSPlatform_Config *)config {
    IOSPlatform* platform = [[IOSPlatform alloc] initWithApp:app withConfig:config];
    [PlaynCorePlayN setPlatform:platform];
    return platform;
}

- (id) initWithApp:(UIApplication*)app_ withConfig:(IOSPlatform_Config*)config {
    if (self = [super initWithPlaynCoreLog:[[IOSLog alloc] init]]) {
        
        app = app_;
        orients = config->orients;
        frameInterval = config->frameInterval;
        
        float deviceScale = [UIScreen mainScreen].scale;
        CGRect bounds = [UIScreen mainScreen].bounds;
        int screenWidth = (int)bounds.size.width, screenHeight = (int)bounds.size.height;
        BOOL useHalfSize = (screenWidth >= 768) && config->iPadLikePhone;
        float viewScale = (useHalfSize ? 2 : 1) * deviceScale;
        if (useHalfSize) {
            screenWidth /= 2;
            screenHeight /= 2;
        }
        
        graphics = [[IOSGraphics alloc] initWithPlatform:self withInt:screenWidth withInt:screenHeight withFloat:viewScale withFloat:deviceScale withBOOL:config->interpolateCanvasDrawing];
        assets = [[IOSAssets alloc] initWithPlatform:self];
        pointer = [[IOSPointer alloc] initWithGraphics:graphics];
        touch = [[IOSTouch alloc] initWithGraphics:graphics];
        keyboard = [[IOSKeyboard alloc] init];
        json = [[PlaynCoreJsonJsonImpl alloc] init];
        
        mainWindow = [[UIWindow alloc] initWithFrame:bounds];
        rootViewController = [[IOSViewController alloc] initWithPlatform:self];
        mainWindow.rootViewController = rootViewController;
        
        lastTick = [self timeLong];
        lastFPS = lastTick;
        
        [self onOrientationChangeWithOrient:orients->defaultOrient];
    }
    return self;
}

- (int) preferredFPS {
    return 60 / frameInterval;
}

- (void) invokeAsyncWithJavaLangRunnable:(id<JavaLangRunnable>)action {
    [action run]; //TODO: Make this async
}

- (PlaynCorePlatform_TypeEnum*) type {
    return [PlaynCorePlatform_TypeEnum IOS];
}

- (id<PlaynCoreAssets>) assets {
    return assets;
}

- (id<PlaynCoreAnalytics>) analytics {
    NSLog(@"Analytics");
    return nil;
}

-(id<PlaynCoreAudio>) audio {
    NSLog(@"Audio");
    return nil;
}

- (id<PlaynCoreGraphics>) graphics {
    return graphics;
}

-(id<PlaynCoreJson>) json {
    return json;
}

- (id<PlaynCoreKeyboard>) keyboard {
    return keyboard;
}

- (id<PlaynCoreNet>) net {
    NSLog(@"Net");
    return nil;
}

- (id<PlaynCoreMouse>) mouse {
    return [[PlaynCoreMouseStub alloc] init];
}

- (id<PlaynCoreTouch>) touch {
    return touch;
}

- (id<PlaynCorePointer>) pointer {
    return pointer;
}

- (float) random {
    return [JavaLangMath random];
}

- (id<PlaynCoreRegularExpression>) regularExpression {
    NSLog(@"Regular Expression");
    return  nil;
}

- (id<PlaynCoreStorage>) storage {
    NSLog(@"Storage");
    return nil;
}

- (double) time {
    return (double)[self timeLong];
}

- (long long) timeLong {
    return [JavaLangSystem currentTimeMillis];
}

- (int) tick {
    return elapsedTime;
}

- (void) openURLWithNSString:(NSString *)url {
    if (![app openURL:[NSURL URLWithString:url]]) {
        [[self log] warnWithNSString:[NSString stringWithFormat:@"Failed to open URL: %@", url]];
    }
}

- (void) setPropagateEventsWithBOOL:(BOOL)propagate {
    [touch setPropagateEventsWithBOOL:propagate];
    [pointer setPropagateEventsWithBOOL:propagate];
}

- (void) runWithPlaynCoreGame:(id<PlaynCoreGame>)game_ {
    game = game_;
    [game init__];
    [mainWindow makeKeyAndVisible];
}

- (void) viewDidInitWithInt:(int)defaultFrameBuffer {
    [[graphics ctx] viewDidInitWithInt:defaultFrameBuffer];
}

- (void) onOrientationChangeWithOrient:(UIDeviceOrientation)orientation {
    if (orientation == currentOrientation) return;
    if (![orients isSupportedWithOrientation:orientation]) {
        return; //ignore unsupported or unknown orientations
    }
    
    currentOrientation = orientation;
    [graphics setOrientation: orientation];
    UIInterfaceOrientation sorient = [IOSPlatform toInterfaceOrient:orientation];
    CGAffineTransform trans = CGAffineTransformIdentity;
    BOOL landscape = NO;
    if (orientation == UIDeviceOrientationPortraitUpsideDown) {
        CGAffineTransformRotate(trans, M_PI);
    } else if (orientation == UIDeviceOrientationLandscapeLeft) {
        landscape = YES;
        CGAffineTransformRotate(trans, M_PI_2);
    } else if (orientation == UIDeviceOrientationLandscapeRight) {
        landscape = YES;
        CGAffineTransformRotate(trans, -M_PI_2);
    }
    //TODO: UI Overlay stuff... though I'm not sure it can really work this way
    
    if (sorient != [app statusBarOrientation]) {
        [app setStatusBarOrientation:sorient];
    }
    
    //TODO: notify the game of the orientation change
}

+ (UIInterfaceOrientation) toInterfaceOrient:(UIDeviceOrientation)orient {
    if (orient == UIDeviceOrientationPortrait) return UIInterfaceOrientationPortrait;
    if (orient == UIDeviceOrientationPortraitUpsideDown) return UIInterfaceOrientationPortraitUpsideDown;
    // nb: these are swapped, because of some cracksmoking at Apple <-- had to keep this comment from the original...
    if (orient == UIDeviceOrientationLandscapeRight) return UIInterfaceOrientationLandscapeLeft;
    if (orient == UIDeviceOrientationLandscapeLeft) return UIInterfaceOrientationLandscapeRight;
    return 0;
}

- (void) update {
//    NSLog(@"update");
    [runQueue_ execute];
    int delta = [self timeLong] - lastTick;
    elapsedTime += delta;
    [game tickWithInt: elapsedTime];
    [[graphics ctx] flush];
    lastTick += delta;
}

- (void) paint {
//    NSLog(@"paint");
    [graphics paint];
    [self updateFPS];
}

- (void) updateFPS {
    if (!DISPLAY_FPS) return;
    frames++;
    if ([self timeLong] - lastFPS > 1000) {
        lastFPS += 1000;
        NSLog(@"%dfps", frames);
        frames = 0;
    }
}

@end
