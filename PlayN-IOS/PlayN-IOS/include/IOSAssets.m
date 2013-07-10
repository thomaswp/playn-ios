//
//  AssetsIOS.m
//  tuxblocks
//
//  Created by Thomas on 7/2/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "IOSAssets.h"
#import "IOSPlatform.h"
#import "IOSAsyncImage.h"
#import "IOSImage.h"
#import "IOSGraphics.h"
#import "java/util/List.h"
#import "java/util/Iterator.h"
#import "java/io/File.h"
#import "playn/core/Image.h"
#import "playn/core/AsyncImage.h"
#import "playn/core/Platform.h"
#import "playn/core/Log.h"
#import "playn/core/gl/Scale.h"
#import "playn/core/gl/GLContext.h"

@implementation IOSAssets

NSString* ASSETS_DIR = @"assets/";

- (id) initWithPlatform:(IOSPlatform *)platform__ {
    if (self = [super initWithPlaynCoreAbstractPlatform:platform__]) {
        platform = platform__;
    }
    return self;
}

- (id<PlaynCoreImage>) createStaticImageWithId:(id)iimpl withPlaynCoreGlScale:(PlaynCoreGlScale *)scale_ {
    return [[IOSImage alloc] initWithPlaynCoreGlGLContext:[platform.graphics ctx] withCGImage:((UIImage*)iimpl).CGImage withPlaynCoreGlScale:scale_];
}

- (id<PlaynCoreAsyncImage>) createAsyncImageWithFloat:(float)width withFloat:(float)height {
    return [[IOSAsyncImage alloc] initWithContext:[platform.graphics ctx] withFloat:width withFloat:height];
}

- (id<PlaynCoreImage>) loadImageWithNSString:(NSString *)path withPlaynCoreAbstractAssets_ImageReceiver:(id<PlaynCoreAbstractAssets_ImageReceiver>)recv {
    NSString* fullPath = [NSString stringWithFormat:@"%@%@", ASSETS_DIR, path]; //Add more search paths later..
    
    PlaynCoreGlGLContext* ctx = [[platform graphics] ctx];
    id<JavaUtilList> resources = [[ctx scale_] getScaledResourcesWithNSString:fullPath];
    id<JavaUtilIterator> iterator = [resources iterator];
    
    while ([iterator hasNext]) {
        PlaynCoreGlScale_ScaledResource* rsrc = [iterator next];
        //...hope file really does exist!
        
        UIImage* img = [UIImage imageNamed:rsrc.path];
        if (img != nil) {
            id<PlaynCoreImage> image = [recv imageLoadedWithId:img withPlaynCoreGlScale:rsrc.scale_];
            [ctx checkGLErrorWithNSString:@"load image"];
            return image;
        }
        
    }
    
    [[platform log] warnWithNSString:@"Failed to load image"];
    return [recv loadFailedWithJavaLangThrowable:nil];
}

@end
