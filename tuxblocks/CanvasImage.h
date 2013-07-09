//
//  CanvasImage.h
//  tuxblocks
//
//  Created by Thomas on 7/8/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractImage.h"
#import "playn/core/CanvasImage.h"

@class Canvas;
@class GLContext;

@interface CanvasImage : AbstractImage<PlaynCoreCanvasImage> {
    Canvas* canvas;
}

- (id) initWithContext:(GLContext*)context withWidth:(float)width withHeight:(float)height withInterpolate:(BOOL)interpolate;



@end
