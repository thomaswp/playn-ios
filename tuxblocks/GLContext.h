//
//  GLContext.h
//  tuxblocks
//
//  Created by Thomas on 7/3/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "playn/core/gl/GLContext.h"

@class PlaynCoreInternalTransform;
@class PlaynCoreGlGLShader;
@class PlaynCoreGlGroupLayerGL;

@interface GLContext : PlaynCoreGlGLContext {
    id<PlaynCoreInternalTransform> rootTransform;
    UIDeviceOrientation orient;
    GLenum magFilter, minFilter;
    int defaultFramebuffer;
    PlaynCoreGlGLShader *quadShader, *trisShader;
}

- (id) initWithPlaynCorePlatform:(id<PlaynCorePlatform>)platform withFloat:(float)scaleFactor withInt:(int)screenWidth withInt:(int)screenHeight;
- (void) viewDidInitWithInt:(int)defaultFramebuffer;
- (void) paintWithGroupLayer:(PlaynCoreGlGroupLayerGL*)rootLayer;
- (void) updateTextureWithInt:(int)tex withCGImage:(CGImageRef) image;

@end
