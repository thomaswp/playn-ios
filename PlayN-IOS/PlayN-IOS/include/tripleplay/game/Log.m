//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/game/Log.java
//
//  Created by Thomas on 7/10/13.
//

#import "tripleplay/game/Log.h"
#import "tripleplay/util/Logger.h"

@implementation TripleplayGameLog

static TripleplayUtilLogger * TripleplayGameLog_log_;

+ (TripleplayUtilLogger *)log {
  return TripleplayGameLog_log_;
}

- (id)init {
  return [super init];
}

+ (void)initialize {
  if (self == [TripleplayGameLog class]) {
    TripleplayGameLog_log_ = [[TripleplayUtilLogger alloc] initWithNSString:@"tpgame"];
  }
}

@end