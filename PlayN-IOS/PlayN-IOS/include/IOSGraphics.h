//
//  GraphicsIOS.h
//  tuxblocks
//
//  Created by Thomas on 7/2/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "playn/core/gl/GraphicsGL.h"

@class PlaynCoreGlGroupLayerGL;
@class IOSGLContext;
@class IOSPlatform;
@class PythagorasFPoint;
@protocol PythagorasFIPoint;

@interface IOSGraphics : PlaynCoreGlGraphicsGL {
    PlaynCoreGlGroupLayerGL* rootLayer;
    IOSGLContext* ctx;
    int screenWidth, screenHeight;
    float touchScale;
    BOOL invertSizes;
    BOOL interpolateCanvasDrawing;
    PythagorasFPoint* touchTemp;
}

- (id) initWithPlatform:(IOSPlatform*)platform withInt:(int)screenWidth withInt:(int)screenHeight withFloat:(float)viewScale withFloat:(float)touchScale withBOOL:(BOOL)interpolateCanvasDrawing;

- (void) paint;
- (IOSGLContext*) ctx;
- (id<PythagorasFIPoint>) transformTouchWithX:(float)x withY:(int)y;

@end
