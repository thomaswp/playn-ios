//
//  CanvasState.h
//  tuxblocks
//
//  Created by Thomas on 7/8/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>

@class IOSGradient;

@interface IOSCanvasState : NSObject {
    @public IOSGradient* gradient;
}

- (id) initWithCanvasState:(IOSCanvasState*)canvasState;
- (id) initWithGradient:(IOSGradient*)gradient;

@end
