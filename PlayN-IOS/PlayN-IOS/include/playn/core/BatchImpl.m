//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/BatchImpl.java
//
//  Created by Thomas on 7/10/13.
//

#import "IOSClass.h"
#import "java/util/HashMap.h"
#import "java/util/Iterator.h"
#import "java/util/Map.h"
#import "java/util/Set.h"
#import "playn/core/BatchImpl.h"
#import "playn/core/Storage.h"

@implementation PlaynCoreBatchImpl

@synthesize storage = storage_;
@synthesize updates = updates_;

- (id)initWithPlaynCoreStorage:(id<PlaynCoreStorage>)storage {
  if ((self = [super init])) {
    updates_ = [[JavaUtilHashMap alloc] init];
    self.storage = storage;
  }
  return self;
}

- (void)setItemWithNSString:(NSString *)key
               withNSString:(NSString *)data {
  (void) [((id<JavaUtilMap>) NIL_CHK(updates_)) putWithId:key withId:data];
}

- (void)removeItemWithNSString:(NSString *)key {
  (void) [((id<JavaUtilMap>) NIL_CHK(updates_)) putWithId:key withId:nil];
}

- (void)commit {
  @try {
    [self onBeforeCommit];
    {
      id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilSet>) [((id<JavaUtilMap>) NIL_CHK(updates_)) entrySet]) iterator]);
      while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
        id<JavaUtilMap_Entry> entry = ((id<JavaUtilMap_Entry>) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
        NSString *key = ((NSString *) [((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getKey]), *data = ((NSString *) [((id<JavaUtilMap_Entry>) NIL_CHK(entry)) getValue]);
        if (data == nil) [self removeImplWithNSString:key];
        else [self setImplWithNSString:key withNSString:data];
      }
    }
    [self onAfterCommit];
  }
  @finally {
    updates_ = nil;
  }
}

- (void)onBeforeCommit {
}

- (void)setImplWithNSString:(NSString *)key
               withNSString:(NSString *)data {
  [((id<PlaynCoreStorage>) NIL_CHK(storage_)) setItemWithNSString:key withNSString:data];
}

- (void)removeImplWithNSString:(NSString *)key {
  [((id<PlaynCoreStorage>) NIL_CHK(storage_)) removeItemWithNSString:key];
}

- (void)onAfterCommit {
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreBatchImpl *typedCopy = (PlaynCoreBatchImpl *) copy;
  typedCopy.storage = storage_;
  typedCopy.updates = updates_;
}

@end