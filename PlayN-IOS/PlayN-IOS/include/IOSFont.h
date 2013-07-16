//
//  IOSFont.h
//  tuxblocks
//
//  Created by Thomas on 7/9/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreText/CoreText.h>
#import "playn/core/AbstractFont.h"

@interface IOSFont : PlaynCoreAbstractFont {
    @public CTFontRef ctFont;
}

+ (void) registerVariantWithName:(NSString*)name withStyle:(PlaynCoreFont_StyleEnum*)style withVariantName:(NSString*)variantName;
+ (IOSFont*) defaultFont;

- (NSString*) iosName;

@end
