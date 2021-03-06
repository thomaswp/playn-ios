//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/syncdb/Protocol.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !TripleplaySyncdbProtocol_RESTRICT
#define TripleplaySyncdbProtocol_INCLUDE_ALL 1
#endif
#undef TripleplaySyncdbProtocol_RESTRICT
#if TripleplaySyncdbProtocol_NetServer_INCLUDE
#define TripleplaySyncdbProtocol_Server_INCLUDE 1
#endif

#if !defined (_TripleplaySyncdbProtocol_) && (TripleplaySyncdbProtocol_INCLUDE_ALL || TripleplaySyncdbProtocol_INCLUDE)
#define _TripleplaySyncdbProtocol_

@class TripleplaySyncdbProtocol_Request;
@class TripleplaySyncdbProtocol_Response;

@interface TripleplaySyncdbProtocol : NSObject {
}

+ (NSString *)VARABS;
+ (NSString *)VARCONT;
+ (int)BASE;
+ (unichar)ABS0;
+ (unichar)CONT0;
+ (NSString *)encodeRequestWithTripleplaySyncdbProtocol_Request:(TripleplaySyncdbProtocol_Request *)req;
+ (TripleplaySyncdbProtocol_Request *)decodeRequestWithNSString:(NSString *)payload;
+ (NSString *)encodeResponseWithTripleplaySyncdbProtocol_Response:(TripleplaySyncdbProtocol_Response *)rsp;
+ (TripleplaySyncdbProtocol_Response *)decodeResponseWithNSString:(NSString *)payload;
+ (int)protocolVersion;
- (id)init;
@end
#endif

#if !defined (_TripleplaySyncdbProtocol_Session_) && (TripleplaySyncdbProtocol_INCLUDE_ALL || TripleplaySyncdbProtocol_Session_INCLUDE)
#define _TripleplaySyncdbProtocol_Session_

@class JavaLangThrowable;
@class TripleplaySyncdbProtocol_Response;
@class TripleplaySyncdbSyncDB;
@protocol JavaLangRunnable;
@protocol JavaUtilMap;
@protocol TripleplaySyncdbProtocol_Server;

@interface TripleplaySyncdbProtocol_Session : NSObject {
 @public
  id<TripleplaySyncdbProtocol_Server> _server_;
}

@property (nonatomic, strong) id<TripleplaySyncdbProtocol_Server> _server;

- (id)initWithTripleplaySyncdbProtocol_Server:(id<TripleplaySyncdbProtocol_Server>)server;
- (void)syncWithTripleplaySyncdbSyncDB:(TripleplaySyncdbSyncDB *)db;
- (void)onCleanSync;
- (void)onBeforeMergeWithInt:(int)version_
             withJavaUtilMap:(id<JavaUtilMap>)delta
        withJavaLangRunnable:(id<JavaLangRunnable>)apply;
- (void)onSyncFailureWithTripleplaySyncdbSyncDB:(TripleplaySyncdbSyncDB *)db
                          withJavaLangThrowable:(JavaLangThrowable *)cause;
- (void)onSyncSuccessWithTripleplaySyncdbSyncDB:(TripleplaySyncdbSyncDB *)db
                                withJavaUtilMap:(id<JavaUtilMap>)mods
          withTripleplaySyncdbProtocol_Response:(TripleplaySyncdbProtocol_Response *)rsp;
@end
#endif

#if !defined (_TripleplaySyncdbProtocol_Session_$1_) && (TripleplaySyncdbProtocol_INCLUDE_ALL || TripleplaySyncdbProtocol_Session_$1_INCLUDE)
#define _TripleplaySyncdbProtocol_Session_$1_

@class JavaLangThrowable;
@class TripleplaySyncdbProtocol_Response;
@class TripleplaySyncdbProtocol_Session;
@class TripleplaySyncdbSyncDB;
@protocol JavaUtilMap;

#define PlaynCoreUtilCallback_RESTRICT 1
#define PlaynCoreUtilCallback_INCLUDE 1
#include "playn/core/util/Callback.h"

@interface TripleplaySyncdbProtocol_Session_$1 : NSObject < PlaynCoreUtilCallback > {
 @public
  TripleplaySyncdbProtocol_Session *this$0_;
  TripleplaySyncdbSyncDB *val$db_;
  id<JavaUtilMap> val$mods_;
}

@property (nonatomic, strong) TripleplaySyncdbProtocol_Session *this$0;
@property (nonatomic, strong) TripleplaySyncdbSyncDB *val$db;
@property (nonatomic, strong) id<JavaUtilMap> val$mods;

- (void)onSuccessWithId:(TripleplaySyncdbProtocol_Response *)rsp;
- (void)onFailureWithJavaLangThrowable:(JavaLangThrowable *)cause;
- (id)initWithTripleplaySyncdbProtocol_Session:(TripleplaySyncdbProtocol_Session *)outer$
                    withTripleplaySyncdbSyncDB:(TripleplaySyncdbSyncDB *)capture$0
                               withJavaUtilMap:(id<JavaUtilMap>)capture$1;
@end
#endif

#if !defined (_TripleplaySyncdbProtocol_Session_$2_) && (TripleplaySyncdbProtocol_INCLUDE_ALL || TripleplaySyncdbProtocol_Session_$2_INCLUDE)
#define _TripleplaySyncdbProtocol_Session_$2_

@class TripleplaySyncdbProtocol_Response;
@class TripleplaySyncdbProtocol_Session;
@class TripleplaySyncdbSyncDB;

#define JavaLangRunnable_RESTRICT 1
#define JavaLangRunnable_INCLUDE 1
#include "java/lang/Runnable.h"

@interface TripleplaySyncdbProtocol_Session_$2 : NSObject < JavaLangRunnable > {
 @public
  TripleplaySyncdbProtocol_Session *this$0_;
  TripleplaySyncdbSyncDB *val$db_;
  TripleplaySyncdbProtocol_Response *val$rsp_;
}

@property (nonatomic, strong) TripleplaySyncdbProtocol_Session *this$0;
@property (nonatomic, strong) TripleplaySyncdbSyncDB *val$db;
@property (nonatomic, strong) TripleplaySyncdbProtocol_Response *val$rsp;

- (void)run;
- (id)initWithTripleplaySyncdbProtocol_Session:(TripleplaySyncdbProtocol_Session *)outer$
                    withTripleplaySyncdbSyncDB:(TripleplaySyncdbSyncDB *)capture$0
         withTripleplaySyncdbProtocol_Response:(TripleplaySyncdbProtocol_Response *)capture$1;
@end
#endif

#if !defined (_TripleplaySyncdbProtocol_Request_) && (TripleplaySyncdbProtocol_INCLUDE_ALL || TripleplaySyncdbProtocol_Request_INCLUDE)
#define _TripleplaySyncdbProtocol_Request_

@protocol JavaUtilMap;

@interface TripleplaySyncdbProtocol_Request : NSObject {
 @public
  int protocolVersion_;
  int version__;
  id<JavaUtilMap> delta_;
}

@property (nonatomic, assign) int protocolVersion;
@property (nonatomic, assign) int version_;
@property (nonatomic, strong) id<JavaUtilMap> delta;

- (id)initWithInt:(int)version_
  withJavaUtilMap:(id<JavaUtilMap>)delta;
@end
#endif

#if !defined (_TripleplaySyncdbProtocol_Response_) && (TripleplaySyncdbProtocol_INCLUDE_ALL || TripleplaySyncdbProtocol_Response_INCLUDE)
#define _TripleplaySyncdbProtocol_Response_

@protocol JavaUtilMap;

@interface TripleplaySyncdbProtocol_Response : NSObject {
 @public
  int protocolVersion_;
  int version__;
  id<JavaUtilMap> delta_;
  BOOL cleanSync_;
}

@property (nonatomic, assign) int protocolVersion;
@property (nonatomic, assign) int version_;
@property (nonatomic, strong) id<JavaUtilMap> delta;
@property (nonatomic, assign) BOOL cleanSync;

- (id)initWithInt:(int)version_;
- (id)initWithInt:(int)version_
  withJavaUtilMap:(id<JavaUtilMap>)delta;
- (id)initWithInt:(int)version_
  withJavaUtilMap:(id<JavaUtilMap>)delta
         withBOOL:(BOOL)cleanSync;
@end
#endif

#if !defined (_TripleplaySyncdbProtocol_Server_) && (TripleplaySyncdbProtocol_INCLUDE_ALL || TripleplaySyncdbProtocol_Server_INCLUDE)
#define _TripleplaySyncdbProtocol_Server_

@protocol JavaUtilMap;
@protocol PlaynCoreUtilCallback;

@protocol TripleplaySyncdbProtocol_Server < NSObject, JavaObject >
- (void)sendSyncWithInt:(int)version_
        withJavaUtilMap:(id<JavaUtilMap>)delta
withPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)onResponse;
@end
#endif

#if !defined (_TripleplaySyncdbProtocol_NetServer_) && (TripleplaySyncdbProtocol_INCLUDE_ALL || TripleplaySyncdbProtocol_NetServer_INCLUDE)
#define _TripleplaySyncdbProtocol_NetServer_

@protocol JavaUtilMap;
@protocol PlaynCoreNet;
@protocol PlaynCoreUtilCallback;

@interface TripleplaySyncdbProtocol_NetServer : NSObject < TripleplaySyncdbProtocol_Server > {
 @public
  id<PlaynCoreNet> _net_;
}

@property (nonatomic, strong) id<PlaynCoreNet> _net;

- (id)initWithPlaynCoreNet:(id<PlaynCoreNet>)net;
- (void)sendSyncWithInt:(int)version_
        withJavaUtilMap:(id<JavaUtilMap>)delta
withPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)cb;
- (NSString *)syncURLWithNSString:(NSString *)payload;
@end
#endif

#if !defined (_TripleplaySyncdbProtocol_NetServer_$1_) && (TripleplaySyncdbProtocol_INCLUDE_ALL || TripleplaySyncdbProtocol_NetServer_$1_INCLUDE)
#define _TripleplaySyncdbProtocol_NetServer_$1_

@class JavaLangThrowable;

#define PlaynCoreUtilCallback_RESTRICT 1
#define PlaynCoreUtilCallback_INCLUDE 1
#include "playn/core/util/Callback.h"

@interface TripleplaySyncdbProtocol_NetServer_$1 : NSObject < PlaynCoreUtilCallback > {
 @public
  id<PlaynCoreUtilCallback> val$cb_;
}

@property (nonatomic, strong) id<PlaynCoreUtilCallback> val$cb;

- (void)onSuccessWithId:(NSString *)payload;
- (void)onFailureWithJavaLangThrowable:(JavaLangThrowable *)cause;
- (id)initWithPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)capture$0;
@end
#endif

#if !defined (_TripleplaySyncdbProtocol_PayloadReader_) && (TripleplaySyncdbProtocol_INCLUDE_ALL || TripleplaySyncdbProtocol_PayloadReader_INCLUDE)
#define _TripleplaySyncdbProtocol_PayloadReader_

@interface TripleplaySyncdbProtocol_PayloadReader : NSObject {
 @public
  NSString *_payload_;
  int _pos_;
}

@property (nonatomic, copy) NSString *_payload;
@property (nonatomic, assign) int _pos;

- (id)initWithNSString:(NSString *)payload;
- (BOOL)atEOF;
- (int)readInt;
- (NSString *)readString;
@end
#endif

#if !defined (_TripleplaySyncdbProtocol_PayloadWriter_) && (TripleplaySyncdbProtocol_INCLUDE_ALL || TripleplaySyncdbProtocol_PayloadWriter_INCLUDE)
#define _TripleplaySyncdbProtocol_PayloadWriter_

@class JavaLangStringBuilder;

@interface TripleplaySyncdbProtocol_PayloadWriter : NSObject {
 @public
  JavaLangStringBuilder *_payload_;
}

@property (nonatomic, strong) JavaLangStringBuilder *_payload;

- (void)writeIntWithInt:(int)value;
- (void)writeStringWithNSString:(NSString *)value;
- (NSString *)payload;
- (void)writeIntWithInt:(int)value
               withBOOL:(BOOL)cont;
- (id)init;
@end
#endif
