//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/syncdb/Protocol.java
//
//  Created by Thomas on 7/10/13.
//

#import "java/lang/Exception.h"
#import "java/lang/NullPointerException.h"
#import "java/lang/Runnable.h"
#import "java/lang/RuntimeException.h"
#import "java/lang/Short.h"
#import "java/lang/StringBuilder.h"
#import "java/lang/Throwable.h"
#import "java/lang/UnsupportedOperationException.h"
#import "java/util/HashMap.h"
#import "java/util/Iterator.h"
#import "java/util/Map.h"
#import "java/util/Set.h"
#import "playn/core/Asserts.h"
#import "playn/core/Net.h"
#import "playn/core/util/Callback.h"
#import "tripleplay/syncdb/Protocol.h"
#import "tripleplay/syncdb/SyncDB.h"

@implementation TripleplaySyncdbProtocol

static NSString * TripleplaySyncdbProtocol_VARABS_ = @"!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNO";
static NSString * TripleplaySyncdbProtocol_VARCONT_ = @"PQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~";
static int TripleplaySyncdbProtocol_BASE_;
static unichar TripleplaySyncdbProtocol_ABS0_;
static unichar TripleplaySyncdbProtocol_CONT0_;

+ (NSString *)VARABS {
  return TripleplaySyncdbProtocol_VARABS_;
}

+ (NSString *)VARCONT {
  return TripleplaySyncdbProtocol_VARCONT_;
}

+ (int)BASE {
  return TripleplaySyncdbProtocol_BASE_;
}

+ (unichar)ABS0 {
  return TripleplaySyncdbProtocol_ABS0_;
}

+ (unichar)CONT0 {
  return TripleplaySyncdbProtocol_CONT0_;
}

+ (NSString *)encodeRequestWithTripleplaySyncdbProtocol_Request:(TripleplaySyncdbProtocol_Request *)req {
  TripleplaySyncdbProtocol_PayloadWriter *out = [[TripleplaySyncdbProtocol_PayloadWriter alloc] init];
  [((TripleplaySyncdbProtocol_PayloadWriter *) NIL_CHK(out)) writeIntWithInt:((TripleplaySyncdbProtocol_Request *) NIL_CHK(req)).protocolVersion];
  [((TripleplaySyncdbProtocol_PayloadWriter *) NIL_CHK(out)) writeIntWithInt:((TripleplaySyncdbProtocol_Request *) NIL_CHK(req)).version_];
  {
    id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilSet>) [((id<JavaUtilMap>) NIL_CHK(req.delta)) entrySet]) iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
      id<JavaUtilMap_Entry> entry = ((id<JavaUtilMap_Entry>) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
      [((TripleplaySyncdbProtocol_PayloadWriter *) NIL_CHK(out)) writeStringWithNSString:((NSString *) [((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getKey])];
      [((TripleplaySyncdbProtocol_PayloadWriter *) NIL_CHK(out)) writeStringWithNSString:((NSString *) [((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getValue])];
    }
  }
  return [((TripleplaySyncdbProtocol_PayloadWriter *) NIL_CHK(out)) payload];
}

+ (TripleplaySyncdbProtocol_Request *)decodeRequestWithNSString:(NSString *)payload {
  if (payload == nil) @throw [[JavaLangNullPointerException alloc] initWithNSString:@"Cannot decode null request."];
  TripleplaySyncdbProtocol_PayloadReader *in = [[TripleplaySyncdbProtocol_PayloadReader alloc] initWithNSString:payload];
  @try {
    int protocolVersion = [((TripleplaySyncdbProtocol_PayloadReader *) NIL_CHK(in)) readInt];
    if (protocolVersion != 1) @throw [[JavaLangUnsupportedOperationException alloc] initWithNSString:[NSString stringWithFormat:@"Unknown protocol version %d", protocolVersion]];
    int version_ = [((TripleplaySyncdbProtocol_PayloadReader *) NIL_CHK(in)) readInt];
    id<JavaUtilMap> delta = [[JavaUtilHashMap alloc] init];
    while (![((TripleplaySyncdbProtocol_PayloadReader *) NIL_CHK(in)) atEOF]) (void) [((id<JavaUtilMap>) NIL_CHK(delta)) putWithId:[((TripleplaySyncdbProtocol_PayloadReader *) NIL_CHK(in)) readString] withId:[((TripleplaySyncdbProtocol_PayloadReader *) NIL_CHK(in)) readString]];
    return [[TripleplaySyncdbProtocol_Request alloc] initWithInt:version_ withJavaUtilMap:delta];
  }
  @catch (JavaLangException *e) {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:[NSString stringWithFormat:@"Error decoding request: %@", payload] withJavaLangThrowable:e];
  }
}

+ (NSString *)encodeResponseWithTripleplaySyncdbProtocol_Response:(TripleplaySyncdbProtocol_Response *)rsp {
  TripleplaySyncdbProtocol_PayloadWriter *out = [[TripleplaySyncdbProtocol_PayloadWriter alloc] init];
  [((TripleplaySyncdbProtocol_PayloadWriter *) NIL_CHK(out)) writeIntWithInt:((TripleplaySyncdbProtocol_Response *) NIL_CHK(rsp)).protocolVersion];
  [((TripleplaySyncdbProtocol_PayloadWriter *) NIL_CHK(out)) writeIntWithInt:((TripleplaySyncdbProtocol_Response *) NIL_CHK(rsp)).version_];
  [((TripleplaySyncdbProtocol_PayloadWriter *) NIL_CHK(out)) writeIntWithInt:((TripleplaySyncdbProtocol_Response *) NIL_CHK(rsp)).cleanSync ? 1 : 0];
  {
    id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilSet>) [((id<JavaUtilMap>) NIL_CHK(rsp.delta)) entrySet]) iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
      id<JavaUtilMap_Entry> entry = ((id<JavaUtilMap_Entry>) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
      [((TripleplaySyncdbProtocol_PayloadWriter *) NIL_CHK(out)) writeStringWithNSString:((NSString *) [((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getKey])];
      [((TripleplaySyncdbProtocol_PayloadWriter *) NIL_CHK(out)) writeStringWithNSString:((NSString *) [((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getValue])];
    }
  }
  return [((TripleplaySyncdbProtocol_PayloadWriter *) NIL_CHK(out)) payload];
}

+ (TripleplaySyncdbProtocol_Response *)decodeResponseWithNSString:(NSString *)payload {
  if (payload == nil) @throw [[JavaLangNullPointerException alloc] initWithNSString:@"Cannot decode null response."];
  TripleplaySyncdbProtocol_PayloadReader *in = [[TripleplaySyncdbProtocol_PayloadReader alloc] initWithNSString:payload];
  @try {
    int protocolVersion = [((TripleplaySyncdbProtocol_PayloadReader *) NIL_CHK(in)) readInt];
    if (protocolVersion != 1) @throw [[JavaLangUnsupportedOperationException alloc] initWithNSString:[NSString stringWithFormat:@"Unknown protocol version %d", protocolVersion]];
    int version_ = [((TripleplaySyncdbProtocol_PayloadReader *) NIL_CHK(in)) readInt];
    BOOL cleanSync = [((TripleplaySyncdbProtocol_PayloadReader *) NIL_CHK(in)) readInt] == 1;
    if (cleanSync) return [[TripleplaySyncdbProtocol_Response alloc] initWithInt:version_];
    id<JavaUtilMap> delta = [[JavaUtilHashMap alloc] init];
    while (![((TripleplaySyncdbProtocol_PayloadReader *) NIL_CHK(in)) atEOF]) (void) [((id<JavaUtilMap>) NIL_CHK(delta)) putWithId:[((TripleplaySyncdbProtocol_PayloadReader *) NIL_CHK(in)) readString] withId:[((TripleplaySyncdbProtocol_PayloadReader *) NIL_CHK(in)) readString]];
    return [[TripleplaySyncdbProtocol_Response alloc] initWithInt:version_ withJavaUtilMap:delta];
  }
  @catch (JavaLangException *e) {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:[NSString stringWithFormat:@"Error decoding response: %@", payload] withJavaLangThrowable:e];
  }
}

+ (int)protocolVersion {
  return 1;
}

- (id)init {
  return [super init];
}

+ (void)initialize {
  if (self == [TripleplaySyncdbProtocol class]) {
    TripleplaySyncdbProtocol_BASE_ = [NIL_CHK(TripleplaySyncdbProtocol_VARABS_) length];
    TripleplaySyncdbProtocol_ABS0_ = [NIL_CHK(TripleplaySyncdbProtocol_VARABS_) charAtWithInt:0];
    TripleplaySyncdbProtocol_CONT0_ = [NIL_CHK(TripleplaySyncdbProtocol_VARCONT_) charAtWithInt:0];
  }
}

@end
@implementation TripleplaySyncdbProtocol_Session

@synthesize _server = _server_;

- (id)initWithTripleplaySyncdbProtocol_Server:(id<TripleplaySyncdbProtocol_Server>)server {
  if ((self = [super init])) {
    _server_ = server;
  }
  return self;
}

- (void)syncWithTripleplaySyncdbSyncDB:(TripleplaySyncdbSyncDB *)db {
  id<JavaUtilMap> mods = [((TripleplaySyncdbSyncDB *) NIL_CHK(db)) getMods];
  [((id<TripleplaySyncdbProtocol_Server>) NIL_CHK(_server_)) sendSyncWithInt:[((TripleplaySyncdbSyncDB *) NIL_CHK(db)) version__] withJavaUtilMap:[((TripleplaySyncdbSyncDB *) NIL_CHK(db)) getDelta] withPlaynCoreUtilCallback:[[TripleplaySyncdbProtocol_Session_$1 alloc] initWithTripleplaySyncdbProtocol_Session:self withTripleplaySyncdbSyncDB:db withJavaUtilMap:mods]];
}

- (void)onCleanSync {
}

- (void)onBeforeMergeWithInt:(int)version_
             withJavaUtilMap:(id<JavaUtilMap>)delta
        withJavaLangRunnable:(id<JavaLangRunnable>)apply {
  [((id<JavaLangRunnable>) NIL_CHK(apply)) run];
}

- (void)onSyncFailureWithTripleplaySyncdbSyncDB:(TripleplaySyncdbSyncDB *)db
                          withJavaLangThrowable:(JavaLangThrowable *)cause {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)onSyncSuccessWithTripleplaySyncdbSyncDB:(TripleplaySyncdbSyncDB *)db
                                withJavaUtilMap:(id<JavaUtilMap>)mods
          withTripleplaySyncdbProtocol_Response:(TripleplaySyncdbProtocol_Response *)rsp {
  if (((TripleplaySyncdbProtocol_Response *) NIL_CHK(rsp)).cleanSync) {
    [((TripleplaySyncdbSyncDB *) NIL_CHK(db)) noteSyncWithInt:((TripleplaySyncdbProtocol_Response *) NIL_CHK(rsp)).version_ withJavaUtilMap:mods];
    [self onCleanSync];
  }
  else {
    id<JavaLangRunnable> merge = [[TripleplaySyncdbProtocol_Session_$2 alloc] initWithTripleplaySyncdbProtocol_Session:self withTripleplaySyncdbSyncDB:db withTripleplaySyncdbProtocol_Response:rsp];
    if ([((TripleplaySyncdbSyncDB *) NIL_CHK(db)) containsMergesWithJavaUtilMap:((TripleplaySyncdbProtocol_Response *) NIL_CHK(rsp)).delta]) {
      [self onBeforeMergeWithInt:((TripleplaySyncdbProtocol_Response *) NIL_CHK(rsp)).version_ withJavaUtilMap:((TripleplaySyncdbProtocol_Response *) NIL_CHK(rsp)).delta withJavaLangRunnable:merge];
    }
    else {
      [((id<JavaLangRunnable>) NIL_CHK(merge)) run];
    }
  }
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplaySyncdbProtocol_Session *typedCopy = (TripleplaySyncdbProtocol_Session *) copy;
  typedCopy._server = _server_;
}

@end
@implementation TripleplaySyncdbProtocol_Session_$1

@synthesize this$0 = this$0_;
@synthesize val$db = val$db_;
@synthesize val$mods = val$mods_;

- (void)onSuccessWithId:(TripleplaySyncdbProtocol_Response *)rsp {
  [this$0_ onSyncSuccessWithTripleplaySyncdbSyncDB:val$db_ withJavaUtilMap:val$mods_ withTripleplaySyncdbProtocol_Response:rsp];
}

- (void)onFailureWithJavaLangThrowable:(JavaLangThrowable *)cause {
  [this$0_ onSyncFailureWithTripleplaySyncdbSyncDB:val$db_ withJavaLangThrowable:cause];
}

- (id)initWithTripleplaySyncdbProtocol_Session:(TripleplaySyncdbProtocol_Session *)outer$
                    withTripleplaySyncdbSyncDB:(TripleplaySyncdbSyncDB *)capture$0
                               withJavaUtilMap:(id<JavaUtilMap>)capture$1 {
  if ((self = [super init])) {
    this$0_ = outer$;
    val$db_ = capture$0;
    val$mods_ = capture$1;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplaySyncdbProtocol_Session_$1 *typedCopy = (TripleplaySyncdbProtocol_Session_$1 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.val$db = val$db_;
  typedCopy.val$mods = val$mods_;
}

@end
@implementation TripleplaySyncdbProtocol_Session_$2

@synthesize this$0 = this$0_;
@synthesize val$db = val$db_;
@synthesize val$rsp = val$rsp_;

- (void)run {
  [((TripleplaySyncdbSyncDB *) NIL_CHK(val$db_)) applyDeltaWithInt:((TripleplaySyncdbProtocol_Response *) NIL_CHK(val$rsp_)).version_ withJavaUtilMap:((TripleplaySyncdbProtocol_Response *) NIL_CHK(val$rsp_)).delta];
  if ([((TripleplaySyncdbSyncDB *) NIL_CHK(val$db_)) hasUnsyncedChanges]) [this$0_ syncWithTripleplaySyncdbSyncDB:val$db_];
  else [this$0_ onCleanSync];
}

- (id)initWithTripleplaySyncdbProtocol_Session:(TripleplaySyncdbProtocol_Session *)outer$
                    withTripleplaySyncdbSyncDB:(TripleplaySyncdbSyncDB *)capture$0
         withTripleplaySyncdbProtocol_Response:(TripleplaySyncdbProtocol_Response *)capture$1 {
  if ((self = [super init])) {
    this$0_ = outer$;
    val$db_ = capture$0;
    val$rsp_ = capture$1;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplaySyncdbProtocol_Session_$2 *typedCopy = (TripleplaySyncdbProtocol_Session_$2 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.val$db = val$db_;
  typedCopy.val$rsp = val$rsp_;
}

@end
@implementation TripleplaySyncdbProtocol_Request

@synthesize protocolVersion = protocolVersion_;
@synthesize version_ = version__;
@synthesize delta = delta_;

- (id)initWithInt:(int)version_
  withJavaUtilMap:(id<JavaUtilMap>)delta {
  if ((self = [super init])) {
    protocolVersion_ = [TripleplaySyncdbProtocol protocolVersion];
    self.version_ = version_;
    self.delta = delta;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplaySyncdbProtocol_Request *typedCopy = (TripleplaySyncdbProtocol_Request *) copy;
  typedCopy.protocolVersion = protocolVersion_;
  typedCopy.version_ = version__;
  typedCopy.delta = delta_;
}

@end
@implementation TripleplaySyncdbProtocol_Response

@synthesize protocolVersion = protocolVersion_;
@synthesize version_ = version__;
@synthesize delta = delta_;
@synthesize cleanSync = cleanSync_;

- (id)initWithInt:(int)version_ {
  return [self initTripleplaySyncdbProtocol_ResponseWithInt:version_ withJavaUtilMap:[[JavaUtilHashMap alloc] init] withBOOL:YES];
}

- (id)initWithInt:(int)version_
  withJavaUtilMap:(id<JavaUtilMap>)delta {
  return [self initTripleplaySyncdbProtocol_ResponseWithInt:version_ withJavaUtilMap:delta withBOOL:NO];
}

- (id)initTripleplaySyncdbProtocol_ResponseWithInt:(int)version_
                                   withJavaUtilMap:(id<JavaUtilMap>)delta
                                          withBOOL:(BOOL)cleanSync {
  if ((self = [super init])) {
    protocolVersion_ = [TripleplaySyncdbProtocol protocolVersion];
    self.version_ = version_;
    self.delta = delta;
    self.cleanSync = cleanSync;
  }
  return self;
}

- (id)initWithInt:(int)version_
  withJavaUtilMap:(id<JavaUtilMap>)delta
         withBOOL:(BOOL)cleanSync {
  return [self initTripleplaySyncdbProtocol_ResponseWithInt:version_ withJavaUtilMap:delta withBOOL:cleanSync];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplaySyncdbProtocol_Response *typedCopy = (TripleplaySyncdbProtocol_Response *) copy;
  typedCopy.protocolVersion = protocolVersion_;
  typedCopy.version_ = version__;
  typedCopy.delta = delta_;
  typedCopy.cleanSync = cleanSync_;
}

@end
@implementation TripleplaySyncdbProtocol_NetServer

@synthesize _net = _net_;

- (id)initWithPlaynCoreNet:(id<PlaynCoreNet>)net {
  if ((self = [super init])) {
    _net_ = net;
  }
  return self;
}

- (void)sendSyncWithInt:(int)version_
        withJavaUtilMap:(id<JavaUtilMap>)delta
withPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)cb {
  NSString *payload = [TripleplaySyncdbProtocol encodeRequestWithTripleplaySyncdbProtocol_Request:[[TripleplaySyncdbProtocol_Request alloc] initWithInt:version_ withJavaUtilMap:delta]];
  [((id<PlaynCoreNet>) NIL_CHK(_net_)) postWithNSString:[self syncURLWithNSString:payload] withNSString:payload withPlaynCoreUtilCallback:[[TripleplaySyncdbProtocol_NetServer_$1 alloc] initWithPlaynCoreUtilCallback:cb]];
}

- (NSString *)syncURLWithNSString:(NSString *)payload {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplaySyncdbProtocol_NetServer *typedCopy = (TripleplaySyncdbProtocol_NetServer *) copy;
  typedCopy._net = _net_;
}

@end
@implementation TripleplaySyncdbProtocol_NetServer_$1

@synthesize val$cb = val$cb_;

- (void)onSuccessWithId:(NSString *)payload {
  @try {
    [((id<PlaynCoreUtilCallback>) NIL_CHK(val$cb_)) onSuccessWithId:[TripleplaySyncdbProtocol decodeResponseWithNSString:payload]];
  }
  @catch (JavaLangThrowable *t) {
    [self onFailureWithJavaLangThrowable:t];
  }
}

- (void)onFailureWithJavaLangThrowable:(JavaLangThrowable *)cause {
  [((id<PlaynCoreUtilCallback>) NIL_CHK(val$cb_)) onFailureWithJavaLangThrowable:cause];
}

- (id)initWithPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)capture$0 {
  if ((self = [super init])) {
    val$cb_ = capture$0;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplaySyncdbProtocol_NetServer_$1 *typedCopy = (TripleplaySyncdbProtocol_NetServer_$1 *) copy;
  typedCopy.val$cb = val$cb_;
}

@end
@implementation TripleplaySyncdbProtocol_PayloadReader

@synthesize _payload = _payload_;
@synthesize _pos = _pos_;

- (id)initWithNSString:(NSString *)payload {
  if ((self = [super init])) {
    _payload_ = payload;
  }
  return self;
}

- (BOOL)atEOF {
  return _pos_ >= [NIL_CHK(_payload_) length];
}

- (int)readInt {
  int value = 0;
  unichar c;
  do {
    value *= [TripleplaySyncdbProtocol BASE];
    c = [NIL_CHK(_payload_) charAtWithInt:_pos_++];
    value += (c >= [TripleplaySyncdbProtocol CONT0]) ? (c - [TripleplaySyncdbProtocol CONT0]) : (c - [TripleplaySyncdbProtocol ABS0]);
  }
  while (c >= [TripleplaySyncdbProtocol CONT0]);
  return value;
}

- (NSString *)readString {
  int length = [self readInt], start = _pos_;
  if (length == JavaLangShort_MAX_VALUE) return nil;
  @try {
    return [NIL_CHK(_payload_) substring:start endIndex:_pos_ += length];
  }
  @catch (JavaLangException *e) {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:[NSString stringWithFormat:@"Invalid readString state [start=%d, length=%d]", start, length] withJavaLangThrowable:e];
  }
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplaySyncdbProtocol_PayloadReader *typedCopy = (TripleplaySyncdbProtocol_PayloadReader *) copy;
  typedCopy._payload = _payload_;
  typedCopy._pos = _pos_;
}

@end
@implementation TripleplaySyncdbProtocol_PayloadWriter

@synthesize _payload = _payload_;

- (void)writeIntWithInt:(int)value {
  [PlaynCoreAsserts checkArgumentWithBOOL:value >= 0 withId:@"Cannot write negative integers to payload."];
  [self writeIntWithInt:value withBOOL:NO];
}

- (void)writeStringWithNSString:(NSString *)value {
  [PlaynCoreAsserts checkArgumentWithBOOL:value == nil || [NIL_CHK(value) length] < JavaLangShort_MAX_VALUE withId:@"Strings must be less than 32767 chars."];
  if (value == nil) [self writeIntWithInt:JavaLangShort_MAX_VALUE];
  else {
    [self writeIntWithInt:[value length]];
    (void) [((JavaLangStringBuilder *) NIL_CHK(_payload_)) appendWithNSString:value];
  }
}

- (NSString *)payload {
  return [((JavaLangStringBuilder *) NIL_CHK(_payload_)) description];
}

- (void)writeIntWithInt:(int)value
               withBOOL:(BOOL)cont {
  if (value >= [TripleplaySyncdbProtocol BASE]) [self writeIntWithInt:value / [TripleplaySyncdbProtocol BASE] withBOOL:YES];
  (void) [((JavaLangStringBuilder *) NIL_CHK(_payload_)) appendWithUnichar:[(cont ? [TripleplaySyncdbProtocol VARCONT] : [TripleplaySyncdbProtocol VARABS]) charAtWithInt:value % [TripleplaySyncdbProtocol BASE]]];
}

- (id)init {
  if ((self = [super init])) {
    _payload_ = [[JavaLangStringBuilder alloc] init];
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplaySyncdbProtocol_PayloadWriter *typedCopy = (TripleplaySyncdbProtocol_PayloadWriter *) copy;
  typedCopy._payload = _payload_;
}

@end
