//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/WatchedAssets.java
//
//  Created by Thomas on 7/10/13.
//

@class JavaLangThrowable;
@protocol PlaynCoreImage;
@protocol PlaynCoreSound;

#import "JreEmulation.h"
#import "playn/core/Assets.h"
#import "playn/core/util/Callback.h"

@interface PlaynCoreWatchedAssets : NSObject < PlaynCoreAssets > {
 @public
  id<PlaynCoreAssets> delegate_;
  int totalRequestsCount_;
  int successCount_;
  int errorsCount_;
  id<PlaynCoreUtilCallback> callback_;
}

@property (nonatomic, strong) id<PlaynCoreAssets> delegate;
@property (nonatomic, assign) int totalRequestsCount;
@property (nonatomic, assign) int successCount;
@property (nonatomic, assign) int errorsCount;
@property (nonatomic, strong) id<PlaynCoreUtilCallback> callback;

- (id)initWithPlaynCoreAssets:(id<PlaynCoreAssets>)delegate;
- (id<PlaynCoreImage>)getImageSyncWithNSString:(NSString *)path;
- (id<PlaynCoreImage>)getImageWithNSString:(NSString *)path;
- (id<PlaynCoreImage>)getRemoteImageWithNSString:(NSString *)url;
- (id<PlaynCoreImage>)getRemoteImageWithNSString:(NSString *)url
                                       withFloat:(float)width
                                       withFloat:(float)height;
- (id<PlaynCoreSound>)getSoundWithNSString:(NSString *)path;
- (id<PlaynCoreSound>)getMusicWithNSString:(NSString *)path;
- (NSString *)getTextSyncWithNSString:(NSString *)path;
- (void)getTextWithNSString:(NSString *)path
  withPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback;
- (BOOL)isDone;
- (int)getPendingRequestCount;
- (void)incrementRequestCount;
@end

@interface PlaynCoreWatchedAssets_$1 : NSObject < PlaynCoreUtilCallback > {
 @public
  PlaynCoreWatchedAssets *this$0_;
}

@property (nonatomic, strong) PlaynCoreWatchedAssets *this$0;

- (void)onSuccessWithId:(id)resource;
- (void)onFailureWithJavaLangThrowable:(JavaLangThrowable *)e;
- (id)initWithPlaynCoreWatchedAssets:(PlaynCoreWatchedAssets *)outer$;
@end