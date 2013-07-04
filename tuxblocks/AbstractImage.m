//
//  AbstractImage.m
//  tuxblocks
//
//  Created by Thomas on 7/3/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "AbstractImage.h"
#import "playn/core/Image.h"
#import "playn/core/Pattern.h"
#import "playn/core/util/Callback.h"

@implementation AbstractImage

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
    NSLog(@"AbstractImage.toPattern()");
    return nil;
}

- (void) getRgbWithInt:(int)startX withInt:(int)startY withInt:(int)width withInt:(int)height withJavaLangIntegerArray:(IOSIntArray *)rgbArray withInt:(int)offset withInt:(int)scanSize {
    
}

- (id<PlaynCoreImage>) transformWithPlaynCoreImage_BitmapTransformer:(id<PlaynCoreImage_BitmapTransformer>)xform {
    NSLog(@"AbstractImage.transform()");
    return nil;
}

- (void) drawWithId:(id)gc withFloat:(float)dx withFloat:(float)dy withFloat:(float)dw withFloat:(float)dh {
    NSLog(@"!!!");
}

- (void) drawWithId:(id)gc withFloat:(float)dx withFloat:(float)dy withFloat:(float)dw withFloat:(float)dh withFloat:(float)sx withFloat:(float)sy withFloat:(float)sw withFloat:(float)sh {
    NSLog(@"!!");
}


@end
