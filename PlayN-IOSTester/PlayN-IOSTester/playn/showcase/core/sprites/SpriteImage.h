//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/playn/showcase/core/sprites/SpriteImage.java
//
//  Created by Thomas on 7/15/13.
//

@protocol PlaynCoreImage;

#import "JreEmulation.h"

@interface PlaynShowcaseCoreSpritesSpriteImage : NSObject {
 @public
  id<PlaynCoreImage> image__;
  int x__;
  int y__;
  int width__;
  int height__;
}

@property (nonatomic, strong) id<PlaynCoreImage> image_;
@property (nonatomic, assign) int x_;
@property (nonatomic, assign) int y_;
@property (nonatomic, assign) int width_;
@property (nonatomic, assign) int height_;

- (id)initWithPlaynCoreImage:(id<PlaynCoreImage>)image
                     withInt:(int)x
                     withInt:(int)y
                     withInt:(int)width
                     withInt:(int)height;
- (id<PlaynCoreImage>)image;
- (int)height;
- (int)width;
- (int)x;
- (int)y;
@end
