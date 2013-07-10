//
//  Image.h
//  tuxblocks
//
//  Created by Thomas on 7/2/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IOSAbstractImage.h"

@class PlaynCoreGlGLContext;
@class PlaynCoreGlScale;

@interface IOSImage : IOSAbstractImage {
    CGImageRef image;
}

- (id) initWithPlaynCoreGlGLContext:(PlaynCoreGlGLContext *)ctx withCGImage:(CGImageRef)image withPlaynCoreGlScale:(PlaynCoreGlScale *)scale_;

@end
