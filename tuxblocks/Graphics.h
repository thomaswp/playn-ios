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
@class GLContext;
@class Platform;

@interface Graphics : PlaynCoreGlGraphicsGL {
    PlaynCoreGlGroupLayerGL* rootLayer;
    GLContext* ctx;
    int screenWidth, screenHeight;
    float touchScale;
    BOOL invertSizes;
    BOOL interpolateCanvasDrawing;
}

- (id) initWithPlatform:(Platform*)platform withInt:(int)screenWidth withInt:(int)screenHeight withFloat:(float)viewScale withFloat:(float)touchScale withBOOL:(BOOL)interpolateCanvasDrawing;

- (void) paint;
- (GLContext*) ctx;

@end
