//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/syncdb/Log.java
//
//  Created by Thomas on 7/25/13.
//

#include "tripleplay/syncdb/Log.h"
#include "tripleplay/util/Logger.h"

@implementation TripleplaySyncdbLog

static TripleplayUtilLogger * TripleplaySyncdbLog_log_;

+ (TripleplayUtilLogger *)log {
  return TripleplaySyncdbLog_log_;
}

- (id)init {
  return [super init];
}

+ (void)initialize {
  if (self == [TripleplaySyncdbLog class]) {
    TripleplaySyncdbLog_log_ = [[TripleplayUtilLogger alloc] initWithNSString:@"syncdb"];
  }
}

@end
