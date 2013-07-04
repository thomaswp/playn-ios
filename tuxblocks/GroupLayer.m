//
//  GroupLayerIOS.m
//  tuxblocks
//
//  Created by Thomas on 7/2/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "GroupLayer.h"
#import "playn/core/Layer.h"

@implementation GroupLayer

- (void) addAtWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer withFloat:(float)tx withFloat:(float)ty {
    NSLog(@"Added %@ to group layer", [layer description]);
}

- (void) addWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer {
    [self addAtWithPlaynCoreLayer:layer withFloat:0 withFloat:0];
}

- (void) paintWithPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)curTransform withInt:(int)curTint withPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)curShader {
    NSLog(@"Drawing!");
}

-(int) size {
    
}

@end
