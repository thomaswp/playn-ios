//
//  CanvasState.m
//  tuxblocks
//
//  Created by Thomas on 7/8/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "IOSCanvasState.h"

@implementation IOSCanvasState

- (id) initWithCanvasState:(IOSCanvasState *)canvasState {
    if (self = [super init]) {
        gradient = canvasState->gradient;
    }
    return self;
}

- (id) initWithGradient:(IOSGradient *)gradient_ {
    if (self = [super init]) {
        gradient = gradient_;
    }
    return self;
}

@end
