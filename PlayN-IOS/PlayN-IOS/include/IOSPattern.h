//
//  IOSPattern.h
//  tuxblocks
//
//  Created by Thomas on 7/9/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "playn/core/gl/GLPattern.h"

@class PlaynCoreGlAbstractImageGL;

@interface IOSPattern : NSObject<PlaynCoreGlGLPattern> {
    @public CGColorRef colorWithPattern;
    PlaynCoreGlAbstractImageGL* image;
    BOOL repeatX, repeatY;
}

- (id) initWithImage:(PlaynCoreGlAbstractImageGL*)image withColor:(CGColorRef)color withRepeatX:(BOOL)repeatX withRepeatY:(BOOL)repeatY;

@end
