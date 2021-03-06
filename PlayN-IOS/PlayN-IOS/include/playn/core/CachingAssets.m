//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/CachingAssets.java
//
//  Created by Thomas on 7/25/13.
//

#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "playn/core/Assets.h"
#include "playn/core/CachingAssets.h"
#include "playn/core/Image.h"
#include "playn/core/Sound.h"
#include "playn/core/util/Callback.h"

@implementation PlaynCoreCachingAssets

@synthesize delegate = delegate_;
@synthesize cache = cache_;

- (id)initWithPlaynCoreAssets:(id<PlaynCoreAssets>)delegate {
  if ((self = [super init])) {
    cache_ = [[JavaUtilHashMap alloc] init];
    self.delegate = delegate;
  }
  return self;
}

- (id<PlaynCoreImage>)getImageSyncWithNSString:(NSString *)path {
  id object = nil;
  if ((object = [((id<JavaUtilMap>) nil_chk(cache_)) getWithId:path]) == nil) {
    object = [((id<PlaynCoreAssets>) nil_chk(delegate_)) getImageSyncWithNSString:path];
    (void) [((id<JavaUtilMap>) nil_chk(cache_)) putWithId:path withId:object];
  }
  return (id<PlaynCoreImage>) object;
}

- (id<PlaynCoreImage>)getImageWithNSString:(NSString *)path {
  id object = nil;
  if ((object = [((id<JavaUtilMap>) nil_chk(cache_)) getWithId:path]) == nil) {
    object = [((id<PlaynCoreAssets>) nil_chk(delegate_)) getImageWithNSString:path];
    (void) [((id<JavaUtilMap>) nil_chk(cache_)) putWithId:path withId:object];
  }
  return (id<PlaynCoreImage>) object;
}

- (id<PlaynCoreImage>)getRemoteImageWithNSString:(NSString *)url {
  id object = nil;
  if ((object = [((id<JavaUtilMap>) nil_chk(cache_)) getWithId:url]) == nil) {
    object = [((id<PlaynCoreAssets>) nil_chk(delegate_)) getRemoteImageWithNSString:url];
    (void) [((id<JavaUtilMap>) nil_chk(cache_)) putWithId:url withId:object];
  }
  return (id<PlaynCoreImage>) object;
}

- (id<PlaynCoreImage>)getRemoteImageWithNSString:(NSString *)url
                                       withFloat:(float)width
                                       withFloat:(float)height {
  id object = nil;
  if ((object = [((id<JavaUtilMap>) nil_chk(cache_)) getWithId:url]) == nil) {
    object = [((id<PlaynCoreAssets>) nil_chk(delegate_)) getRemoteImageWithNSString:url withFloat:width withFloat:height];
    (void) [((id<JavaUtilMap>) nil_chk(cache_)) putWithId:url withId:object];
  }
  return (id<PlaynCoreImage>) object;
}

- (id<PlaynCoreSound>)getSoundWithNSString:(NSString *)path {
  id object = nil;
  if ((object = [((id<JavaUtilMap>) nil_chk(cache_)) getWithId:path]) == nil) {
    object = [((id<PlaynCoreAssets>) nil_chk(delegate_)) getSoundWithNSString:path];
    (void) [((id<JavaUtilMap>) nil_chk(cache_)) putWithId:path withId:object];
  }
  return (id<PlaynCoreSound>) object;
}

- (id<PlaynCoreSound>)getMusicWithNSString:(NSString *)path {
  id object = nil;
  if ((object = [((id<JavaUtilMap>) nil_chk(cache_)) getWithId:path]) == nil) {
    object = [((id<PlaynCoreAssets>) nil_chk(delegate_)) getMusicWithNSString:path];
    (void) [((id<JavaUtilMap>) nil_chk(cache_)) putWithId:path withId:object];
  }
  return (id<PlaynCoreSound>) object;
}

- (NSString *)getTextSyncWithNSString:(NSString *)path {
  return [((id<PlaynCoreAssets>) nil_chk(delegate_)) getTextSyncWithNSString:path];
}

- (void)getTextWithNSString:(NSString *)path
  withPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback {
  [((id<PlaynCoreAssets>) nil_chk(delegate_)) getTextWithNSString:path withPlaynCoreUtilCallback:callback];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreCachingAssets *typedCopy = (PlaynCoreCachingAssets *) copy;
  typedCopy.delegate = delegate_;
  typedCopy.cache = cache_;
}

@end
