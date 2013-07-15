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

@interface IOSTextLayout : PlaynCoreAbstractTextLayout

- (id)initWithGraphics:(IOSGraphics*)gfx withNSString:(NSString *)text withPlaynCoreTextFormat:(PlaynCoreTextFormat *)format;

@end
