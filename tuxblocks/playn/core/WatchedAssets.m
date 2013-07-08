//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/WatchedAssets.java
//
//  Created by Thomas on 7/1/13.
//

#import "Assets.h"
#import "Callback.h"
#import "Image.h"
#import "Sound.h"
#import "java/lang/Throwable.h"
#import "WatchedAssets.h"

@implementation PlaynCoreWatchedAssets

- (id<PlaynCoreAssets>)delegate {
  return delegate_;
}
- (void)setDelegate:(id<PlaynCoreAssets>)delegate {
  JreOperatorRetainedAssign(&delegate_, self, delegate);
}
@synthesize delegate = delegate_;
@synthesize totalRequestsCount = totalRequestsCount_;
@synthesize successCount = successCount_;
@synthesize errorsCount = errorsCount_;
- (id<PlaynCoreUtilCallback>)callback {
  return callback_;
}
- (void)setCallback:(id<PlaynCoreUtilCallback>)callback {
  JreOperatorRetainedAssign(&callback_, self, callback);
}
@synthesize callback = callback_;

- (id)initWithPlaynCoreAssets:(id<PlaynCoreAssets>)delegate {
  if ((self = [super init])) {
    totalRequestsCount_ = 0;
    successCount_ = 0;
    errorsCount_ = 0;
    JreOperatorRetainedAssign(&callback_, self, [[[PlaynCoreWatchedAssets_$1 alloc] initWithPlaynCoreWatchedAssets:self] autorelease]);
    self.delegate = delegate;
  }
  return self;
}

- (id<PlaynCoreImage>)getImageSyncWithNSString:(NSString *)path {
  [self incrementRequestCount];
  id<PlaynCoreImage> image = [((id<PlaynCoreAssets>) NIL_CHK(delegate_)) getImageSyncWithNSString:path];
  [((id<PlaynCoreImage>) NIL_CHK(image)) addCallbackWithPlaynCoreUtilCallback:callback_];
  return image;
}

- (id<PlaynCoreImage>)getImageWithNSString:(NSString *)path {
  [self incrementRequestCount];
  id<PlaynCoreImage> image = [((id<PlaynCoreAssets>) NIL_CHK(delegate_)) getImageWithNSString:path];
  [((id<PlaynCoreImage>) NIL_CHK(image)) addCallbackWithPlaynCoreUtilCallback:callback_];
  return image;
}

- (id<PlaynCoreImage>)getRemoteImageWithNSString:(NSString *)url {
  [self incrementRequestCount];
  id<PlaynCoreImage> image = [((id<PlaynCoreAssets>) NIL_CHK(delegate_)) getRemoteImageWithNSString:url];
  [((id<PlaynCoreImage>) NIL_CHK(image)) addCallbackWithPlaynCoreUtilCallback:callback_];
  return image;
}

- (id<PlaynCoreImage>)getRemoteImageWithNSString:(NSString *)url
                                       withFloat:(float)width
                                       withFloat:(float)height {
  [self incrementRequestCount];
  id<PlaynCoreImage> image = [((id<PlaynCoreAssets>) NIL_CHK(delegate_)) getRemoteImageWithNSString:url withFloat:width withFloat:height];
  [((id<PlaynCoreImage>) NIL_CHK(image)) addCallbackWithPlaynCoreUtilCallback:callback_];
  return image;
}

- (id<PlaynCoreSound>)getSoundWithNSString:(NSString *)path {
  [self incrementRequestCount];
  id<PlaynCoreSound> sound = [((id<PlaynCoreAssets>) NIL_CHK(delegate_)) getSoundWithNSString:path];
  [((id<PlaynCoreSound>) NIL_CHK(sound)) addCallbackWithPlaynCoreUtilCallback:callback_];
  return sound;
}

- (id<PlaynCoreSound>)getMusicWithNSString:(NSString *)path {
  [self incrementRequestCount];
  id<PlaynCoreSound> sound = [((id<PlaynCoreAssets>) NIL_CHK(delegate_)) getMusicWithNSString:path];
  [((id<PlaynCoreSound>) NIL_CHK(sound)) addCallbackWithPlaynCoreUtilCallback:callback_];
  return sound;
}

- (NSString *)getTextSyncWithNSString:(NSString *)path {
  return [((id<PlaynCoreAssets>) NIL_CHK(delegate_)) getTextSyncWithNSString:path];
}

- (void)getTextWithNSString:(NSString *)path
  withPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback {
  [((id<PlaynCoreAssets>) NIL_CHK(delegate_)) getTextWithNSString:path withPlaynCoreUtilCallback:callback];
}

- (BOOL)isDone {
  return (self.totalRequestsCount == self.errorsCount + self.successCount);
}

- (int)getPendingRequestCount {
  return self.totalRequestsCount - self.errorsCount - self.successCount;
}

- (void)incrementRequestCount {
  ++totalRequestsCount_;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&callback_, self, nil);
  JreOperatorRetainedAssign(&delegate_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreWatchedAssets *typedCopy = (PlaynCoreWatchedAssets *) copy;
  typedCopy.delegate = delegate_;
  typedCopy.totalRequestsCount = totalRequestsCount_;
  typedCopy.successCount = successCount_;
  typedCopy.errorsCount = errorsCount_;
  typedCopy.callback = callback_;
}

@end
@implementation PlaynCoreWatchedAssets_$1

- (PlaynCoreWatchedAssets *)this$0 {
  return this$0_;
}
- (void)setThis$0:(PlaynCoreWatchedAssets *)this$0 {
  JreOperatorRetainedAssign(&this$0_, self, this$0);
}
@synthesize this$0 = this$0_;

- (void)onSuccessWithId:(id)resource {
  ++this$0_.successCount;
}

- (void)onFailureWithJavaLangThrowable:(JavaLangThrowable *)e {
  ++this$0_.errorsCount;
}

- (id)initWithPlaynCoreWatchedAssets:(PlaynCoreWatchedAssets *)outer$ {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&this$0_, self, outer$);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&this$0_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreWatchedAssets_$1 *typedCopy = (PlaynCoreWatchedAssets_$1 *) copy;
  typedCopy.this$0 = this$0_;
}

@end