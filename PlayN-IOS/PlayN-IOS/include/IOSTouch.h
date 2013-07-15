//
//  IOSTouch.h
//  PlayN-IOS
//
//  Created by Thomas on 7/15/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "playn/core/TouchImpl.h"

@class IOSGraphics;

@interface IOSTouch : PlaynCoreTouchImpl {
    IOSGraphics* graphics;
}

- (id) initWithGraphics:(IOSGraphics*)graphics;
- (void) onTouchesBeganWithTouches:(NSSet*)touches withEvent:(UIEvent*)event;
- (void) onTouchesMovedWithTouches:(NSSet*)touches withEvent:(UIEvent*)event;
- (void) onTouchesEndedWithTouches:(NSSet*)touches withEvent:(UIEvent*)event;
- (void) onTouchesCancelledWithTouches:(NSSet*)touches withEvent:(UIEvent*)event;

@end
