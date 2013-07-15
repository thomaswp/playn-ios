//
//  IOSTouch.m
//  PlayN-IOS
//
//  Created by Thomas on 7/15/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "IOSTouch.h"
#import "IOSGraphics.h"
#import "pythagoras/f/IPoint.h"
#import "IOSObjectArray.h"

@implementation IOSTouch

- (id) initWithGraphics:(IOSGraphics *)graphics_ {
    if (self = [super init]) {
        graphics = graphics_;
    }
    return self;
}

- (void) onTouchesBeganWithTouches:(NSSet*)touches withEvent:(UIEvent*)event {
    IOSObjectArray* ts = [self toPointerEventWithTouches:touches withEvent:event];
    [self onTouchStartWithPlaynCoreTouch_Event_ImplArray:ts];
}

- (void) onTouchesMovedWithTouches:(NSSet*)touches withEvent:(UIEvent*)event {
    IOSObjectArray* ts = [self toPointerEventWithTouches:touches withEvent:event];
    [self onTouchMoveWithPlaynCoreTouch_Event_ImplArray:ts];
}

- (void) onTouchesEndedWithTouches:(NSSet *)touches withEvent:(UIEvent *)event {
    IOSObjectArray* ts = [self toPointerEventWithTouches:touches withEvent:event];
    [self onTouchEndWithPlaynCoreTouch_Event_ImplArray:ts];
}

- (void) onTouchesCancelledWithTouches:(NSSet *)touches withEvent:(UIEvent *)event {
    IOSObjectArray* ts = [self toPointerEventWithTouches:touches withEvent:event];
    [self onTouchCancelWithPlaynCoreTouch_Event_ImplArray:ts];
}

- (IOSObjectArray*) toPointerEventWithTouches:(NSSet*)touches withEvent:(UIEvent*)event {
    IOSClass* type = [IOSClass classWithClass:[PlaynCoreTouch_Event_Impl class]];
    IOSObjectArray* array = [IOSObjectArray arrayWithLength:[touches count] type:type];
    int index = 0;
    for (UITouch* touch in touches) {
        CGPoint loc = [touch locationInView:[touch view]];
        id<PythagorasFIPoint> xloc = [graphics transformTouchWithX:loc.x withY:loc.y];
        PlaynCoreTouch_Event_Impl* impl = [[PlaynCoreTouch_Event_Impl alloc] initWithPlaynCoreEvents_Flags:[[PlaynCoreEvents_Flags_Impl alloc] init] withDouble:touch.timestamp * 1000 withFloat:[xloc x] withFloat:[xloc y] withInt:(int)touch];
        [array replaceObjectAtIndex:index++ withObject:impl];
    }
    return array;
}

@end
