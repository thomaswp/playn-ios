//
//  Pointer.m
//  tuxblocks
//
//  Created by Thomas on 7/2/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "IOSPointer.h"
#import "IOSGraphics.h"
#import "playn/core/Events.h"
#import "pythagoras/f/IPoint.h"

@implementation IOSPointer

- (id) initWithGraphics:(IOSGraphics *)graphics_ {
    if (self = [super init]) {
        graphics = graphics_;
    }
    return self;
}

- (void) onTouchesBeganWithTouches:(NSSet*)touches withEvent:(UIEvent*)event {
    PlaynCorePointer_Event_Impl* ev = [self toPointerEventWithTouches:touches withEvent:event];
    if (ev != nil) [self onPointerStartWithPlaynCorePointer_Event_Impl:ev withBOOL:NO];
}

- (void) onTouchesMovedWithTouches:(NSSet*)touches withEvent:(UIEvent*)event {
    PlaynCorePointer_Event_Impl* ev = [self toPointerEventWithTouches:touches withEvent:event];
    if (ev != nil) [self onPointerDragWithPlaynCorePointer_Event_Impl:ev withBOOL:NO];
}

- (void) onTouchesEndedWithTouches:(NSSet *)touches withEvent:(UIEvent *)event {
    PlaynCorePointer_Event_Impl* ev = [self toPointerEventWithTouches:touches withEvent:event];
    if (ev != nil) {
        [self onPointerEndWithPlaynCorePointer_Event_Impl:ev withBOOL:NO];
        _active = 0;
    }
}

- (void) onTouchesCancelledWithTouches:(NSSet *)touches withEvent:(UIEvent *)event {
    PlaynCorePointer_Event_Impl* ev = [self toPointerEventWithTouches:touches withEvent:event];
    if (ev != nil) {
        [self onPointerCancelWithPlaynCorePointer_Event_Impl:ev withBOOL:NO];
        _active = 0;
    }
}

- (PlaynCorePointer_Event_Impl*) toPointerEventWithTouches:(NSSet*)touches withEvent:(UIEvent*)event {
    for (UITouch* touch in touches) {
        CGPoint loc = [touch locationInView:[touch view]];
        id<PythagorasFIPoint> xloc = [graphics transformTouchWithX:loc.x withY:loc.y];
        PlaynCorePointer_Event_Impl* impl = [[PlaynCorePointer_Event_Impl alloc] initWithPlaynCoreEvents_Flags:[[PlaynCoreEvents_Flags_Impl alloc] init] withDouble:touch.timestamp * 1000 withFloat:[xloc x] withFloat:[xloc y] withBOOL:YES];
        return impl;
    }
    return nil;
}

@end
