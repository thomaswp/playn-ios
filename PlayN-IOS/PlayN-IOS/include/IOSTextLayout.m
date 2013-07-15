//
//  IOSTextLayout.m
//  PlayN-IOS
//
//  Created by Thomas on 7/15/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "IOSTextLayout.h"
#import "IOSGraphics.h"

@implementation IOSTextLayout

- (id)initWithGraphics:(IOSGraphics *)gfx withNSString:(NSString *)text withPlaynCoreTextFormat:(PlaynCoreTextFormat *)format {
    if (self = [super initWithPlaynCoreGraphics:gfx withNSString:text withPlaynCoreTextFormat:format]) {
        
    }
    return self;
}

- (float)ascent {
    return 0;
}

- (float)descent {
    return 0;
}

- (float)leading {
    return 0;
}

- (PythagorasFRectangle *)lineBoundsWithInt:(int)line {
    return 0;
}

- (int)lineCount {
    return 0;
}

@end
