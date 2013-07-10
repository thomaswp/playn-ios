//
//  IOSPattern.m
//  tuxblocks
//
//  Created by Thomas on 7/9/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "IOSPattern.h"

@implementation IOSPattern

- (id) initWithImage:(PlaynCoreGlAbstractImageGL *)image_ withColor:(CGColorRef)color_ withRepeatX:(BOOL)
    repeatX_ withRepeatY:(BOOL)repeatY_ {
    if (self = [super init]) {
        image = image_;
        colorWithPattern = color_;
        repeatX = repeatX_;
        repeatY = repeatY_;
    }
    return self;
}

- (BOOL) repeatX {
    return repeatX;
}

- (BOOL) repeatY {
    return repeatY;
}

- (PlaynCoreGlAbstractImageGL*) image {
    return image;
}

@end
