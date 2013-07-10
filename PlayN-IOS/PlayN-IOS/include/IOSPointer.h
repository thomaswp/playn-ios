//
//  Pointer.h
//  tuxblocks
//
//  Created by Thomas on 7/2/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "playn/core/PointerImpl.h"

@class IOSGraphics;

@interface IOSPointer : PlaynCorePointerImpl {
    IOSGraphics* graphics;
    int _active;
}

- (id) initWithGraphics:(IOSGraphics*)graphics;
- (void) onTouchesBeganWithTouches:(NSSet*)touches withEvent:(UIEvent*)event;
- (void) onTouchesMovedWithTouches:(NSSet*)touches withEvent:(UIEvent*)event;
- (void) onTouchesEndedWithTouches:(NSSet*)touches withEvent:(UIEvent*)event;
- (void) onTouchesCancelledWithTouches:(NSSet*)touches withEvent:(UIEvent*)event;

@end
