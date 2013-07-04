//
//  AsyncImage.m
//  tuxblocks
//
//  Created by Thomas on 7/3/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "AsyncImage.h"
#import "playn/core/gl/Scale.h"
#import "playn/core/util/Callback.h"
#import "playn/core/util/Callbacks.h"

@implementation AsyncImage

- (id) initWithContext:(PlaynCoreGlGLContext *)context withFloat:(float)preWidth_ withFloat:(float)preHeight_ {
    if (self = [super initWithPlaynCoreGlGLContext:context withCGImage:nil withPlaynCoreGlScale:[PlaynCoreGlScale ONE]]) {
        preWidth = preWidth_;
        preHeight = preHeight_;
    }
    return self;
}

- (BOOL) isReady {
    return image != nil;
}

- (float) width {
    return (image == nil) ? preWidth : [super width];
}

- (float) height {
    return (image == nil) ? preHeight : [super height];
}

- (void) addCallbackWithPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback {
    if (error != nil) {
        [callback onFailureWithJavaLangThrowable:error];
    } else if (image != nil) {
        [callback onSuccessWithId:self];
    } else {
        callbacks = [PlaynCoreUtilCallbacks createAddWithJavaUtilList:callbacks withPlaynCoreUtilCallback:callback];
    }
}

- (void) setImageWithId:(id)impl withPlaynCoreGlScale:(PlaynCoreGlScale *)scale {
    image = ((UIImage*) impl).CGImage;
    [self setScale_: scale];
    //callbacks = [PlaynCoreUtilCallbacks dispatchSuccessClearWithJavaUtilList:callbacks withId:self];
}

- (void) setErrorWithJavaLangThrowable:(JavaLangThrowable *)error_ {
    error = error_;
    image = [[UIImage alloc] init].CGImage; //TODO create error image
    callbacks = [PlaynCoreUtilCallbacks dispatchFailureClearWithJavaUtilList:callbacks withJavaLangThrowable:error];
}

@end
