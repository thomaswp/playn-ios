//
//  AbstractImage.m
//  tuxblocks
//
//  Created by Thomas on 7/3/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "IOSAbstractImage.h"
#import "IOSCanvas.h"
#import "IOSPattern.h"
#import "IOSImage.h"
#import "IOSBitmapTransformer.h"
#import "playn/core/Image.h"
#import "playn/core/Pattern.h"
#import "playn/core/util/Callback.h"
#import "playn/core/InternalTransform.h"
#import "playn/core/gl/Scale.h"

@implementation IOSAbstractImage

- (UIImage*) toUIImage {
    return [UIImage imageWithCGImage:[self cgImage]];
}

- (CGImageRef) cgImage {
    [self doesNotRecognizeSelector:_cmd];
    return nil;
}

- (BOOL) isReady {
    return YES;
}

- (void) addCallbackWithPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback {
    [callback onSuccessWithId:self];
}

- (id<PlaynCorePattern>) toPattern {
    UIImage* uiImage = [[UIImage alloc] initWithCGImage:[self cgImage]];
    UIColor* uiColor = [[UIColor alloc] initWithPatternImage:uiImage];
    CGColorRef cgColor = uiColor.CGColor;
    return [[IOSPattern alloc] initWithImage:self withColor:cgColor withRepeatX:repeatX__ withRepeatY:repeatY__];

}

- (void) getRgbWithInt:(int)startX withInt:(int)startY withInt:(int)width withInt:(int)height withIntArray:(IOSIntArray *)rgbArray withInt:(int)offset withInt:(int)scanSize {
    
    int bytesPerRow = 4 * width;
    int regionBytesLength = bytesPerRow * height;
    char* regionBytes = (char*) malloc(regionBytesLength * sizeof(char));
    
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef context = CGBitmapContextCreate(regionBytes, width, height, 8, bytesPerRow, colorSpace, kCGImageAlphaPremultipliedFirst);
    CGColorSpaceRelease(colorSpace);
    //no interpolation for rgb pixels
    CGContextSetInterpolationQuality(context, kCGInterpolationNone);
    
    IOSCanvas_ImageHolder* imageHolder = [[IOSCanvas_ImageHolder alloc] init];
    imageHolder->bctx = context;
    [self drawWithId:imageHolder withFloat:0 withFloat:0 withFloat:width withFloat:height withFloat:startX withFloat:startY withFloat:width withFloat:height];
    
    int x = 0;
    int y = height - 1; //inverted y
    for (int px = 0; px < regionBytesLength; px += 4) {
        int a = (int)regionBytes[px    ] & 0xFF;
        int r = (int)regionBytes[px + 1] & 0xFF;
        int g = (int)regionBytes[px + 2] & 0xFF;
        int b = (int)regionBytes[px + 3] & 0xFF;
        
        int value = a << 24 | r << 16 | g << 8 | b;
        int index = offset + y * scanSize + x;
        [rgbArray replaceIntAtIndex:index withInt:value];
        
        x++;
        if (x == width) {
            x = 0;
            y--;
        }
    }
    
}

- (id<PlaynCoreImage>) transformWithPlaynCoreImage_BitmapTransformer:(id<PlaynCoreImage_BitmapTransformer>)xform {
    id<IOSBitmapTransformer> iosXform = (id<IOSBitmapTransformer>)xform;
    UIImage* ximage = [[UIImage alloc] initWithCGImage:[iosXform transformWithImage:[self cgImage]]];
    return [[IOSImage alloc] initWithPlaynCoreGlGLContext:ctx_ withCGImage:ximage.CGImage withPlaynCoreGlScale:scale__];
}

- (void) drawWithId:(id)gc withFloat:(float)x withFloat:(float)y withFloat:(float)width withFloat:(float)height {
    IOSCanvas_ImageHolder* imageHolder = (IOSCanvas_ImageHolder*)gc;
    CGContextRef bctx = imageHolder->bctx;
    
    CGImageRef cgImage = [self cgImage];
    //Flip b/c of inverted y
    //TODO: make sure drawing a canvas image on a canvas image does the right thing
    y += height;
    CGContextSaveGState(bctx);
    CGContextTranslateCTM(bctx, x, y);
    CGContextScaleCTM(bctx, 1, -1);
    CGContextDrawImage(bctx, CGRectMake(0, 0, width, height), cgImage);
    CGContextRestoreGState(bctx);
}

- (void) drawWithId:(id)gc withFloat:(float)dx withFloat:(float)dy withFloat:(float)dw withFloat:(float)dh withFloat:(float)sx withFloat:(float)sy withFloat:(float)sw withFloat:(float)sh {
    IOSCanvas_ImageHolder* imageHolder = (IOSCanvas_ImageHolder*)gc;
    CGContextRef bctx = imageHolder->bctx;
    
    sx *= scale__.factor;
    sy *= scale__.factor;
    sw *= scale__.factor;
    sh *= scale__.factor;
    
    CGImageRef cgImage = [self cgImage];
    float iw = CGImageGetWidth(cgImage);
    float ih = CGImageGetHeight(cgImage);
    float scaleX = dw/sw, scaleY = dh/sh;
    
    //Flip b/c of inverted y
    CGContextSaveGState(bctx);
    CGContextTranslateCTM(bctx, dx, dy+dh);
    CGContextScaleCTM(bctx, 1, -1);
    CGContextClipToRect(bctx, CGRectMake(0, 0, dw, dh));
    CGContextTranslateCTM(bctx, -sx*scaleX, -(ih-(sy+sh))*scaleY);
    CGContextDrawImage(bctx, CGRectMake(0, 0, iw*scaleX, ih*scaleY), cgImage);
    CGContextRestoreGState(bctx);
}

- (id<PlaynCorePattern>) toSubPatternWithPlaynCoreGlAbstractImageGL:(PlaynCoreGlAbstractImageGL *)image withBOOL:(BOOL)repeatX withBOOL:(BOOL)repeatY withFloat:(float)x withFloat:(float)y withFloat:(float)width withFloat:(float)height {
    
    CGImageRef subImage = CGImageCreateWithImageInRect([self cgImage], CGRectMake(x, y, width, height));
    UIImage* uiImage = [[UIImage alloc] initWithCGImage:subImage];
    UIColor* uiColor = [[UIColor alloc] initWithPatternImage:uiImage];
    CGColorRef cgColor = uiColor.CGColor;
    return [[IOSPattern alloc] initWithImage:image withColor:cgColor withRepeatX:repeatX withRepeatY:repeatY];
}


@end
