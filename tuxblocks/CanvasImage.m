//
//  CanvasImage.m
//  tuxblocks
//
//  Created by Thomas on 7/8/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "CanvasImage.h"
#import "GLContext.h"
#import "Canvas.h"

@implementation CanvasImage

- (id) initWithContext:(GLContext *)context withWidth:(float)width withHeight:(float)height withInterpolate:(BOOL)interpolate {
    if (self = [super initWithPlaynCoreGlGLContext:context withPlaynCoreGlScale:[context scale_]]) {
        canvas = [[Canvas alloc] initWithContext:context withWidth:width withHeight:height withInterpolate:interpolate];
    }
    return self;
}


@end
