//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/playn/showcase/core/sprites/Sprite.java
//
//  Created by Thomas on 7/25/13.
//

#include "java/lang/Integer.h"
#include "java/lang/Throwable.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "playn/core/Asserts.h"
#include "playn/core/Image.h"
#include "playn/core/ImageLayer.h"
#include "playn/core/Log.h"
#include "playn/core/PlayN.h"
#include "playn/core/util/Callback.h"
#include "playn/showcase/core/sprites/Sprite.h"
#include "playn/showcase/core/sprites/SpriteImage.h"

@implementation PlaynShowcaseCoreSpritesSprite

@synthesize layer_ = layer__;
@synthesize spriteImages_ = spriteImages__;
@synthesize spriteIdMap = spriteIdMap_;
@synthesize callback = callback_;
@synthesize current = current_;
@synthesize currentId = currentId_;
@synthesize imagesDone = imagesDone_;
@synthesize dataDone = dataDone_;

- (id)initWithPlaynCoreImageLayer:(id<PlaynCoreImageLayer>)imageLayer {
  if ((self = [super init])) {
    currentId_ = -1;
    imagesDone_ = NO;
    dataDone_ = NO;
    self.layer_ = imageLayer;
    spriteImages__ = [[JavaUtilArrayList alloc] initWithInt:0];
    spriteIdMap_ = [[JavaUtilHashMap alloc] init];
  }
  return self;
}

- (void)addCallbackWithPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback {
  self.callback = callback;
  if ([self isReady]) {
    [((id<PlaynCoreUtilCallback>) nil_chk(callback)) onSuccessWithId:self];
  }
}

- (id<PlaynCoreImageLayer>)layer {
  return layer__;
}

- (int)numSprites {
  return (spriteImages__ == nil ? 0 : [((id<JavaUtilList>) nil_chk(spriteImages__)) size]);
}

- (float)height {
  if (current_ != nil) {
    return [current_ height];
  }
  else {
    return 1;
  }
}

- (BOOL)isReady {
  return imagesDone_ && dataDone_;
}

- (void)setSpriteWithInt:(int)index {
  [PlaynCoreAsserts checkElementIndexWithInt:index withInt:[((id<JavaUtilList>) nil_chk(spriteImages__)) size] withNSString:@"Invalid sprite index"];
  if (index != currentId_) {
    current_ = [((id<JavaUtilList>) nil_chk(spriteImages__)) getWithInt:index];
    currentId_ = index;
    [self updateLayer];
  }
}

- (void)setSpriteWithNSString:(NSString *)id_ {
  [self setSpriteWithInt:[((JavaLangInteger *) nil_chk([PlaynCoreAsserts checkNotNullWithId:[((JavaUtilHashMap *) nil_chk(spriteIdMap_)) getWithId:id_] withId:@"Invalid sprite id"])) intValue]];
}

- (float)width {
  if (current_ != nil) {
    return [current_ width];
  }
  else {
    return 1;
  }
}

- (void)addSpriteImageWithNSString:(NSString *)key
withPlaynShowcaseCoreSpritesSpriteImage:(PlaynShowcaseCoreSpritesSpriteImage *)spriteImage {
  (void) [((JavaUtilHashMap *) nil_chk(spriteIdMap_)) putWithId:key withId:[JavaLangInteger valueOfWithInt:[((id<JavaUtilList>) nil_chk(spriteImages__)) size]]];
  [((id<JavaUtilList>) nil_chk(spriteImages__)) addWithId:spriteImage];
}

- (void)done {
  if (callback_ != nil) {
    [callback_ onSuccessWithId:self];
  }
}

- (void)doneLoadingImages {
  imagesDone_ = YES;
  if ([self isReady]) {
    [self done];
  }
}

- (void)doneLoadingData {
  dataDone_ = YES;
  if ([self isReady]) {
    [self done];
  }
}

- (void)errorWithJavaLangThrowable:(JavaLangThrowable *)err {
  if (callback_ != nil) {
    [callback_ onFailureWithJavaLangThrowable:err];
  }
  else {
    [((id<PlaynCoreLog>) nil_chk([PlaynCorePlayN log])) errorWithNSString:@"Error loading sprite" withJavaLangThrowable:err];
  }
}

- (id<JavaUtilList>)spriteImages {
  return spriteImages__;
}

- (void)updateLayer {
  if (current_ != nil) {
    (void) [((id<PlaynCoreImageLayer>) nil_chk(layer__)) setImageWithPlaynCoreImage:[((id<PlaynCoreImage>) nil_chk([current_ image])) subImageWithFloat:[current_ x] withFloat:[current_ y] withFloat:[current_ width] withFloat:[current_ height]]];
  }
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynShowcaseCoreSpritesSprite *typedCopy = (PlaynShowcaseCoreSpritesSprite *) copy;
  typedCopy.layer_ = layer__;
  typedCopy.spriteImages_ = spriteImages__;
  typedCopy.spriteIdMap = spriteIdMap_;
  typedCopy.callback = callback_;
  typedCopy.current = current_;
  typedCopy.currentId = currentId_;
  typedCopy.imagesDone = imagesDone_;
  typedCopy.dataDone = dataDone_;
}

@end
