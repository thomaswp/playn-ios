//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/SurfaceImage.java
//
//  Created by Thomas on 7/10/13.
//

@protocol PlaynCoreSurface;

#import "JreEmulation.h"
#import "playn/core/Image.h"

@protocol PlaynCoreSurfaceImage < PlaynCoreImage, NSObject >
- (id<PlaynCoreSurface>)surface;
- (void)destroy;
@end