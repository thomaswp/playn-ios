//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/flump/Library.java
//
//  Created by Thomas on 7/10/13.
//

@class JavaLangInteger;
@class JavaUtilArrayList;
@class ReactValue;
@class TripleplayFlumpMovie;
@class TripleplayFlumpTexture;
@protocol JavaUtilMap;
@protocol PlaynCoreImage;
@protocol PlaynCoreJson_Object;
@protocol PlaynCoreUtilCallback;
@protocol TripleplayFlumpInstance;

#import "JreEmulation.h"
#import "playn/core/util/Callback.h"
#import "react/ValueView.h"

@interface TripleplayFlumpLibrary : NSObject {
 @public
  float frameRate_;
  id<JavaUtilMap> symbols_;
}

@property (nonatomic, assign) float frameRate;
@property (nonatomic, strong) id<JavaUtilMap> symbols;

- (id)initWithPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)json
                      withNSString:(NSString *)baseDir
         withPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback;
+ (void)fromAssetsWithNSString:(NSString *)baseDir
     withPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback;
- (id<TripleplayFlumpInstance>)createInstanceWithNSString:(NSString *)symbolName;
- (TripleplayFlumpMovie *)createMovieWithNSString:(NSString *)symbolName;
- (TripleplayFlumpTexture *)createTextureWithNSString:(NSString *)symbolName;
@end

@interface TripleplayFlumpLibrary_$1 : ReactValueView_Listener {
 @public
  TripleplayFlumpLibrary *this$0_;
  JavaUtilArrayList *val$movies_;
  id<JavaUtilMap> val$symbols_;
  id<PlaynCoreUtilCallback> val$callback_;
}

@property (nonatomic, strong) TripleplayFlumpLibrary *this$0;
@property (nonatomic, strong) JavaUtilArrayList *val$movies;
@property (nonatomic, strong) id<JavaUtilMap> val$symbols;
@property (nonatomic, strong) id<PlaynCoreUtilCallback> val$callback;

- (void)onChangeWithId:(JavaLangInteger *)remaining
                withId:(JavaLangInteger *)_;
- (id)initWithTripleplayFlumpLibrary:(TripleplayFlumpLibrary *)outer$
               withJavaUtilArrayList:(JavaUtilArrayList *)capture$0
                     withJavaUtilMap:(id<JavaUtilMap>)capture$1
           withPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)capture$2;
@end

@interface TripleplayFlumpLibrary_$2 : PlaynCoreUtilCallback_Chain {
 @public
  id<PlaynCoreJson_Object> val$atlasJson_;
  id<JavaUtilMap> val$symbols_;
  ReactValue *val$remainingAtlases_;
}

@property (nonatomic, strong) id<PlaynCoreJson_Object> val$atlasJson;
@property (nonatomic, strong) id<JavaUtilMap> val$symbols;
@property (nonatomic, strong) ReactValue *val$remainingAtlases;

- (void)onSuccessWithId:(id<PlaynCoreImage>)atlas;
- (id)initWithPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)arg$0
           withPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)capture$0
                    withJavaUtilMap:(id<JavaUtilMap>)capture$1
                     withReactValue:(ReactValue *)capture$2;
@end

@interface TripleplayFlumpLibrary_$3 : PlaynCoreUtilCallback_Chain {
 @public
  NSString *val$baseDir_;
  id<PlaynCoreUtilCallback> val$callback_;
}

@property (nonatomic, copy) NSString *val$baseDir;
@property (nonatomic, strong) id<PlaynCoreUtilCallback> val$callback;

- (void)onSuccessWithId:(NSString *)text;
- (id)initWithPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)arg$0
                       withNSString:(NSString *)capture$0
          withPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)capture$1;
@end
