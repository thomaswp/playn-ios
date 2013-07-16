//
//  IOSTextLayout.m
//  PlayN-IOS
//
//  Created by Thomas on 7/15/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <CoreText/CoreText.h>
#import "IOSTextLayout.h"
#import "IOSGraphics.h"
#import "IOSFont.h"
#import "IOSCanvas.h"
#import "java/lang/Float.h"
#import "java/lang/Integer.h"
#import "pythagoras/f/Rectangle.h"
#import "playn/core/TextFormat.h"

@interface IOSTextStamp : NSObject {
    @public float width, height, ascent, descent, leading;
}

- (int) lineCount;
- (PythagorasFRectangle*) lineBoundsWithLine:(int)line;
- (void) paintWithBctx:(CGContextRef)bctx withX:(float)x withY:(float)y;

@end

@implementation IOSTextStamp

- (int) lineCount {
    [self doesNotRecognizeSelector:_cmd];
    return 0;
}

- (PythagorasFRectangle*) lineBoundsWithLine:(int)line {
    [self doesNotRecognizeSelector:_cmd];
    return nil;
}

- (void) paintWithBctx:(CGContextRef)bctx withX:(float)x withY:(float)y {
    [self doesNotRecognizeSelector:_cmd];
}

@end

@interface Wrapped : IOSTextStamp {
    CFArrayRef lines;
    int lineCount;
    CGPoint *origins;
    float adjustX, lineHeight;
    IOSTextLayout* parent;
}

- (id) initWithParent:(IOSTextLayout*)parent withFont:(IOSFont*)font withAttributes:(CFDictionaryRef)attribs withText:(NSString*)text;

@end

@implementation Wrapped

const float MAX_HEIGHT = 10000;

- (id) initWithParent:(IOSTextLayout*)parent_ withFont:(IOSFont *)font withAttributes:(CFDictionaryRef)attribs withText:(NSString *)text {
    if (self = [super init]) {
        parent = parent_;
        ascent = CTFontGetAscent(font->ctFont);
        descent = CTFontGetDescent(font->ctFont);
        leading = CTFontGetLeading(font->ctFont);
        lineHeight = ascent + descent + leading;
        
        CFAttributedStringRef str = CFAttributedStringCreate(CFAllocatorGetDefault(), (__bridge CFStringRef)(text), attribs);
        CTFramesetterRef fs = CTFramesetterCreateWithAttributedString(str);
        @try {
            CGMutablePathRef path = CGPathCreateMutable();
            CGPathAddRect(path, nil, CGRectMake(0, 0, parent.format.wrapWidth, MAX_HEIGHT));
            CTFrameRef frame = CTFramesetterCreateFrame(fs, CFRangeMake(0, 0), path, nil);
            lines = CTFrameGetLines(frame);
            lineCount = CFArrayGetCount(lines);
            origins = (CGPoint*) malloc(sizeof(CGPoint) * lineCount);
            CTFrameGetLineOrigins(frame, CFRangeMake(0, 0), origins);
            float minX = MAXFLOAT, maxX = 0;
            for (int ii = 0; ii < lineCount; ii++) {
                CTLineRef line = CFArrayGetValueAtIndex(lines, ii);
                CGRect bounds = CTLineGetImageBounds(line, parent->gfx->scratchCtx);
                float ox = origins[ii].x, lineX = ox + bounds.origin.x + bounds.size.width;
                minX = MIN(ox, minX);
                maxX = MAX(maxX, lineX);
            }
            adjustX = -minX;
            width = maxX - minX;
            height = lineHeight * lineCount - leading;
        } @finally {
            CFRelease(fs);
        }
    }
    return self;
}

- (int) lineCount {
    return lineCount;
}

- (PythagorasFRectangle*) lineBoundsWithLine:(int)line {
    //TODO: maybe cache bounds for lines?
    CTLineRef l = CFArrayGetValueAtIndex(lines, line);
    CGRect bounds = CTLineGetImageBounds(l, parent->gfx->scratchCtx);
    return [[PythagorasFRectangle alloc] initWithFloat:bounds.origin.x withFloat:bounds.origin.y withFloat:bounds.size.width withFloat:bounds.size.height];
}

- (void) paintWithBctx:(CGContextRef)bctx withX:(float)x withY:(float)y {
    float dx = x + adjustX, dy = y + ascent;
    CGContextSaveGState(bctx);
    CGContextTranslateCTM(bctx, dx, dy);
    CGContextScaleCTM(bctx, 1, -1);
    for (int ii = 0; ii < lineCount; ii++) {
        CGContextSetTextPosition(bctx, origins[ii].x, 0);
        CTLineRef line = CFArrayGetValueAtIndex(lines, ii);
        CTLineDraw(line, bctx);
        CGContextTranslateCTM(bctx, 0, -lineHeight);
    }
    CGContextRestoreGState(bctx);
}

- (void) dealloc {
    CFRelease(lines);
    free(origins);
}

@end

@interface Single : IOSTextStamp {
    CTLineRef line;
    CGRect bounds;
    IOSTextLayout* parent;
}

- (id) initWithParent:(IOSTextLayout*)parent withFont:(IOSFont *)font withAttributes:(CFDictionaryRef)attribs withText:(NSString *)text;

@end

@implementation Single

- (id) initWithParent:(IOSTextLayout*)parent_ withFont:(IOSFont *)font withAttributes:(CFDictionaryRef)attribs withText:(NSString *)text {
    if (self = [super init]) {
        parent = parent_;
        ascent = CTFontGetAscent(font->ctFont);
        descent = CTFontGetDescent(font->ctFont);
        leading = CTFontGetLeading(font->ctFont);
        CFStringRef cfText = (__bridge CFStringRef)text;
        CFAttributedStringRef str = CFAttributedStringCreate(CFAllocatorGetDefault(), cfText, attribs);
        line = CTLineCreateWithAttributedString(str);
        bounds = CTLineGetImageBounds(line, parent->gfx->scratchCtx);
        width = bounds.origin.x + bounds.size.width;
        height = ascent + descent;
    }
    return self;
}

- (int) lineCount {
    return 1;
}

- (PythagorasFRectangle*) lineBoundsWithLine:(int)line {
    return [[PythagorasFRectangle alloc] initWithFloat:parent->pad_ withFloat:parent->pad_ withFloat:width withFloat:height];
}

- (void) paintWithBctx:(CGContextRef)bctx withX:(float)x withY:(float)y {
    float dy = y + ascent;
    CGContextSaveGState(bctx);
    CGContextTranslateCTM(bctx, x, dy);
    CGContextScaleCTM(bctx, 1, -1);
    CGContextSetTextPosition(bctx, 0, 0);
    CTLineDraw(line, bctx);
    CGContextRestoreGState(bctx);
}

- (void) dealloc {
    CFRelease(line);
}

@end

@implementation IOSTextLayout

- (id)initWithGraphics:(IOSGraphics *)gfx_ withNSString:(NSString *)text_ withPlaynCoreTextFormat:(PlaynCoreTextFormat *)format {
    if (self = [super initWithPlaynCoreGraphics:gfx_ withNSString:text_ withPlaynCoreTextFormat:format]) {
        gfx = gfx_;
        text = [[text_ stringByReplacingOccurrencesOfString:@"\r\n" withString:@"\n"] stringByReplacingOccurrencesOfString:@"\r" withString:@"\n"];
        fillStamp = [self createStampWithText:text withStrokeWidth:-1 withStrokeColor:0];
        width__ = fillStamp->width;
        height__ = fillStamp->height;
    }
    return self;
}

- (int) lineCount {
    return [fillStamp lineCount];
}

- (PythagorasFRectangle*) lineBoundsWithInt:(int)line {
    return [fillStamp lineBoundsWithLine:line];
}

- (float) ascent {
    return fillStamp->ascent;
}

- (float)descent {
    return fillStamp->descent;
}

- (float)leading {
    return fillStamp->leading;
}

- (void) strokeWithContext:(CGContextRef)bctx withX:(float)x withY:(float)y withStrokeWidth:(float)strokeWidth_ withStrokeColor:(int)strokeColor {
    if (strokeStamp == nil || strokeWidth != strokeWidth_) {
        strokeWidth = strokeWidth_;
        strokeStamp = [self createStampWithText:text withStrokeWidth:strokeWidth withStrokeColor:strokeColor];
    }
    [strokeStamp paintWithBctx:bctx withX:x+pad_ withY:y+pad_];
}

- (void) fillWithContext:(CGContextRef)bctx withX:(float)x withY:(float)y {
    [fillStamp paintWithBctx:bctx withX:pad_ withY:pad_];
}

- (IOSTextStamp*) createStampWithText:(NSString*)text_ withStrokeWidth:(float)strokeWidth_ withStrokeColor:(int)strokeColor {
    CFMutableDictionaryRef attribs = CFDictionaryCreateMutable(CFAllocatorGetDefault(), 5, nil, nil);
    IOSFont* font = (format__.font == nil) ? [IOSGraphics defaultFont] : (IOSFont*)format__.font;
    CFDictionaryAddValue(attribs, kCTFontAttributeName, font->ctFont);
    CFDictionaryAddValue(attribs, kCTForegroundColorFromContextAttributeName, kCFBooleanTrue);
    
    if (strokeWidth_ >= 0) { //chosing to use int instead of Integer
        // stroke width is expressed as a percentage of the font size in iOS
        float strokePct = 100 * strokeWidth_ / [font size];
        CFDictionaryAddValue(attribs, kCTStrokeWidthAttributeName, CFNumberCreate(CFAllocatorGetDefault(), kCFNumberCGFloatType, &strokePct));
        CFDictionaryAddValue(attribs, kCTStrokeColorAttributeName, [IOSCanvas toCGColor:strokeColor]);
    }
    
    NSMutableParagraphStyle* paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.alignment = [IOSTextLayout toCTWithAlignment:format__.align];
    
    CTParagraphStyleRef pStyle = CTParagraphStyleCreate(nil, 1);
    CFDictionarySetValue(attribs, kCTParagraphStyleAttributeName, pStyle);
    
    if ([format__ shouldWrap] || [text contains:@"\n"]) {
        return [[Wrapped alloc] initWithParent:self withFont:font withAttributes:attribs withText:text_];
    } else {
        return [[Single alloc] initWithParent:self withFont:font withAttributes:attribs withText:text_];
    }
    //TODO: release dictionary?
}

+ (CTTextAlignment) toCTWithAlignment:(PlaynCoreTextFormat_AlignmentEnum*)alignment {
    if (alignment == [PlaynCoreTextFormat_AlignmentEnum CENTER]) {
        return kCTCenterTextAlignment;
    } else if (alignment == [PlaynCoreTextFormat_AlignmentEnum RIGHT]) {
        return kCTRightTextAlignment;
    } else {
        return kCTTextAlignmentLeft;
    }
}

@end
