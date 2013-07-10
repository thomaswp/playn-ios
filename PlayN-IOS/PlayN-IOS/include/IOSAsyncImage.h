//
//  AsyncImage.h
//  tuxblocks
//
//  Created by Thomas on 7/3/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IOSImage.h"
#import "playn/core/AsyncImage.h"

@protocol PlaynCoreUtilCallback;
@protocol JavaUtilList;
@class PlaynCoreGlGLContext;
@class JavaLangThrowable;

@interface IOSAsyncImage : IOSImage<PlaynCoreAsyncImage> {
    float preWidth, preHeight;
    id<JavaUtilList> callbacks;
    JavaLangThrowable* error;
}

- (id) initWithContext:(PlaynCoreGlGLContext*)context withFloat:(float)preWidth withFloat:(float)preHeight;

@end
