//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/anim/Log.java
//
//  Created by Thomas on 7/10/13.
//

#import "tripleplay/anim/Log.h"
#import "tripleplay/util/Logger.h"

@implementation TripleplayAnimLog

static TripleplayUtilLogger * TripleplayAnimLog_log_;

+ (TripleplayUtilLogger *)log {
  return TripleplayAnimLog_log_;
}

- (id)init {
  return [super init];
}

+ (void)initialize {
  if (self == [TripleplayAnimLog class]) {
    TripleplayAnimLog_log_ = [[TripleplayUtilLogger alloc] initWithNSString:@"tpanim"];
  }
}

@end
