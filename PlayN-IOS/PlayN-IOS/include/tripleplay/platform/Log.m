//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/platform/Log.java
//
//  Created by Thomas on 7/10/13.
//

#import "tripleplay/platform/Log.h"
#import "tripleplay/util/Logger.h"

@implementation TripleplayPlatformLog

static TripleplayUtilLogger * TripleplayPlatformLog_log_;

+ (TripleplayUtilLogger *)log {
  return TripleplayPlatformLog_log_;
}

- (id)init {
  return [super init];
}

+ (void)initialize {
  if (self == [TripleplayPlatformLog class]) {
    TripleplayPlatformLog_log_ = [[TripleplayUtilLogger alloc] initWithNSString:@"tppf"];
  }
}

@end