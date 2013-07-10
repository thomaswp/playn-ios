//
//  IOSBitmapTransformer.h
//  tuxblocks
//
//  Created by Thomas on 7/9/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IOSBitmapTransformer <NSObject>

- (CGImageRef) transformWithImage:(CGImageRef)image;

@end
