//
//  IOSFont.m
//  tuxblocks
//
//  Created by Thomas on 7/9/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "IOSFont.h"
#import "IOSGraphics.h"

@interface StyleEnum : NSObject {
}

@property(readonly) PlaynCoreFont_StyleEnum* BOLD;
@property(readonly) PlaynCoreFont_StyleEnum* ITALIC;
@property(readonly) PlaynCoreFont_StyleEnum* BOLD_ITALIC;
@property(readonly) PlaynCoreFont_StyleEnum* PLAIN;

@end

@implementation StyleEnum

@synthesize BOLD, BOLD_ITALIC, ITALIC, PLAIN;

- (id) init {
    BOLD = [PlaynCoreFont_StyleEnum BOLD];
    BOLD_ITALIC = [PlaynCoreFont_StyleEnum BOLD_ITALIC];
    ITALIC = [PlaynCoreFont_StyleEnum ITALIC];
    PLAIN = [PlaynCoreFont_StyleEnum PLAIN];
    return self;
}

@end

@implementation IOSFont

NSMutableDictionary* _variants;

/**
 * Registers a font for use when a bold, italic or bold italic variant is requested. iOS does not
 * programmatically generate bold, italic and bold italic variants of fonts. Instead it uses the
 * actual bold, italic or bold italic variant of the font provided by the original designer.
 *
 * <p> The built-in iOS fonts (Helvetica, Courier) have already had their variants mapped, but if
 * you add custom fonts to your game, you will need to register variants for the bold, italic or
 * bold italic versions if you intend to make use of them. </p>
 *
 * <p> Alternatively, you can simply request a font variant by name (e.g. {@code
 * graphics().createFont("Arial Bold Italic", Font.Style.PLAIN, 16)}) to use a specific font
 * variant directly. This variant mapping process exists only to simplify cross-platform
 * development. </p>
 */
+ (void) registerVariantWithName:(NSString *)name withStyle:(PlaynCoreFont_StyleEnum *)style withVariantName:(NSString *)variantName {
    NSMutableDictionary* styleVariants = [_variants objectForKey:style];
    if (styleVariants == nil) {
        [_variants setObject:style forKey:styleVariants = [[NSMutableDictionary alloc] init]];
    }
    [styleVariants setObject:name forKey:variantName];
}

+ (IOSFont*) defaultFont {
    return [IOSGraphics defaultFont];
}

- (id) initWithNSString:(NSString *)name withPlaynCoreFont_StyleEnum:(PlaynCoreFont_StyleEnum *)style withFloat:(float)size {
    if (self = [super initWithNSString:name withPlaynCoreFont_StyleEnum:style withFloat:size]) {
        ctFont = CTFontCreateWithName((__bridge CFStringRef)([self iosName]), size, nil);
    }
    return self;
}

- (NSString*) iosName {
    return [IOSFont getVariantWithName:name__ withStyle:style__];
}

+ (NSString*) getVariantWithName:(NSString*)name withStyle:(PlaynCoreFont_StyleEnum*)style {
    NSDictionary* styleVariants = [_variants objectForKey:style];
    NSString *variant = (styleVariants == nil) ? nil : [styleVariants objectForKey:name];
    if (variant != nil) {
        return variant;
    } else if (style == [PlaynCoreFont_StyleEnum BOLD_ITALIC]) {
        // fall back to bold if we have no bold+italic variant
        return [IOSFont getVariantWithName:name withStyle:[PlaynCoreFont_StyleEnum BOLD]];
    } else {
        return name;
    }
}

//use some macros to convert java from: http://code.google.com/p/playn/source/browse/ios/src/playn/ios/IOSFont.java
#define cString(s) @s
#define registerVariant(name, style, variantName) [IOSFont registerVariantWithName:cString(name) withStyle:style withVariantName:cString(variantName)];

+ (void) initialize {
    StyleEnum* Style = [[StyleEnum alloc] init];
    
    _variants = [[NSMutableDictionary alloc] init];
    // this is a selection of moderately well-known fonts that are available on iOS;
    // see http://www.bluecrowbar.com/blog/2010/12/ios-fonts.html for a complete list
    registerVariant("American Typewriter", Style.BOLD, "American Typewriter Bold");
    registerVariant("Arial", Style.ITALIC, "Arial Italic");
    registerVariant("Arial", Style.BOLD, "Arial Bold");
    registerVariant("Arial", Style.BOLD_ITALIC, "Arial Bold Italic");
    registerVariant("Arial Hebrew", Style.BOLD, "Arial Hebrew Bold");
    registerVariant("Baskerville", Style.BOLD, "Baskerville Bold");
    registerVariant("Baskerville", Style.ITALIC, "Baskerville Italic");
    registerVariant("Baskerville", Style.BOLD_ITALIC, "Baskerville Bold Italic");
    registerVariant("Chalkboard SE", Style.PLAIN, "Chalkboard SE Regular");
    registerVariant("Chalkboard SE", Style.BOLD, "Chalkboard SE Bold");
    registerVariant("Chalkboard SE Regular", Style.BOLD_ITALIC, "Chalkboard SE Bold");
    registerVariant("Cochin", Style.BOLD, "Cochin Bold");
    registerVariant("Cochin", Style.ITALIC, "Cochin Italic");
    registerVariant("Cochin", Style.BOLD_ITALIC, "Cochin Bold Italic");
    registerVariant("Courier", Style.BOLD, "Courier Bold");
    registerVariant("Courier", Style.ITALIC, "Courier Oblique");
    registerVariant("Courier", Style.BOLD_ITALIC, "Courier Bold Oblique");
    registerVariant("Courier New", Style.BOLD, "Courier New Bold");
    registerVariant("Courier New", Style.ITALIC, "Courier New Italic");
    registerVariant("Courier New", Style.BOLD_ITALIC, "Courier New Bold Italic");
    registerVariant("Georgia", Style.ITALIC, "Georgia Italic");
    registerVariant("Georgia", Style.BOLD, "Georgia Bold");
    registerVariant("Georgia", Style.BOLD_ITALIC, "Georgia Bold Italic");
    registerVariant("Georgia", Style.ITALIC, "Georgia Italic");
    registerVariant("Georgia", Style.BOLD, "Georgia Bold");
    registerVariant("Georgia", Style.BOLD_ITALIC, "Georgia Bold Italic");
    registerVariant("Helvetica", Style.BOLD, "Helvetica-Bold");
    registerVariant("Helvetica", Style.ITALIC, "Helvetica-Oblique");
    registerVariant("Helvetica", Style.BOLD_ITALIC, "Helvetica-Bold-Oblique");
    registerVariant("Helvetica Neue", Style.BOLD, "Helvetica Neue Bold");
    registerVariant("Helvetica Neue", Style.ITALIC, "Helvetica Neue Italic");
    registerVariant("Helvetica Neue", Style.BOLD_ITALIC, "Helvetica Neue Bold Italic");
    registerVariant("Palatino", Style.ITALIC, "Palatino Italic");
    registerVariant("Palatino", Style.BOLD, "Palatino Bold");
    registerVariant("Palatino", Style.BOLD_ITALIC, "Palatino Bold Italic");
    registerVariant("Times New Roman", Style.ITALIC, "Times New Roman Italic");
    registerVariant("Times New Roman", Style.BOLD, "Times New Roman Bold");
    registerVariant("Times New Roman", Style.BOLD_ITALIC, "Times New Roman Bold Italic");
    registerVariant("Trebuchet MS", Style.ITALIC, "Trebuchet MS Italic");
    registerVariant("Trebuchet MS", Style.BOLD, "Trebuchet MS Bold");
    registerVariant("Trebuchet MS", Style.BOLD_ITALIC, "Trebuchet MS Bold Italic");
    registerVariant("Verdana", Style.ITALIC, "Verdana Italic");
    registerVariant("Verdana", Style.BOLD, "Verdana Bold");
    registerVariant("Verdana", Style.BOLD_ITALIC, "Verdana Bold Italic");
    // map 'Times New Roman' as 'Times' for compatibility as well
    registerVariant("Times", Style.PLAIN, "Times New Roman");
    registerVariant("Times", Style.ITALIC, "Times New Roman Italic");
    registerVariant("Times", Style.BOLD, "Times New Roman Bold");
    registerVariant("Times", Style.BOLD_ITALIC, "Times New Roman Bold Italic");
}

@end
