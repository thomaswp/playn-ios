//
//  AbstractImage.h
//  tuxblocks
//
//  Created by Thomas on 7/3/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "playn/core/gl/ImageGL.h"
#import "playn/core/Image.h"

@interface IOSAbstractImage : PlaynCoreGlImageGL<PlaynCoreImage>

- (UIImage*) toUIImage;
- (CGImageRef) cgImage;

@end
