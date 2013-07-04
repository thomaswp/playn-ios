//
//  Image.m
//  tuxblocks
//
//  Created by Thomas on 7/2/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "Image.h"
#import "GLContext.h"
#import "playn/core/gl/Scale.h"

@implementation Image

- (id) initWithPlaynCoreGlGLContext:(PlaynCoreGlGLContext *)ctx withCGImage:(CGImageRef)image_ withPlaynCoreGlScale:(PlaynCoreGlScale *)scale_ {
    if (self = [super initWithPlaynCoreGlGLContext:ctx withPlaynCoreGlScale:scale_]) {
        image = image_;
    }
    return self;
}

- (CGImageRef) cgImage {
    return image;
}

- (float) width {
    return [scale__ invScaledWithFloat:CGImageGetWidth(image)];
}

- (float) height {
    return [scale__ invScaledWithFloat:CGImageGetHeight(image)];
}

- (void) updateTextureWithInt:(int)tex {
    [((GLContext*) ctx_) updateTextureWithInt:tex withCGImage:image];
}

@end
