//
//  CanvasImage.h
//  tuxblocks
//
//  Created by Thomas on 7/8/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IOSAbstractImage.h"
#import "playn/core/CanvasImage.h"

@class IOSCanvas;
@class IOSGLContext;

@interface IOSCanvasImage : IOSAbstractImage<PlaynCoreCanvasImage> {
    IOSCanvas* canvas;
}

- (id) initWithContext:(IOSGLContext*)context withWidth:(float)width withHeight:(float)height withInterpolate:(BOOL)interpolate;



@end
