//
//  IOSTextLayout.h
//  PlayN-IOS
//
//  Created by Thomas on 7/15/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "playn/core/AbstractTextLayout.h"

@class IOSGraphics;
@class IOSTextStamp;

@interface IOSTextLayout : PlaynCoreAbstractTextLayout {
    @public IOSGraphics* gfx;
    NSString* text;
    IOSTextStamp *fillStamp, *strokeStamp;
    float strokeWidth;
}

- (id)initWithGraphics:(IOSGraphics*)gfx withNSString:(NSString *)text withPlaynCoreTextFormat:(PlaynCoreTextFormat *)format;
- (void) fillWithContext:(CGContextRef)bctx withX:(float)x withY:(float)y;
- (void) strokeWithContext:(CGContextRef)bctx withX:(float)x withY:(float)y withStrokeWidth:(float)strokeWidth_ withStrokeColor:(int)strokeColor;

@end
