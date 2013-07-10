//
//  Log.m
//  tuxblocks
//
//  Created by Thomas on 7/5/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "IOSLog.h"
#import "java/lang/Throwable.h"

@implementation IOSLog

- (void) logImplWithPlaynCoreLog_LevelEnum:(PlaynCoreLog_LevelEnum *)level withNSString:(NSString *)msg withJavaLangThrowable:(JavaLangThrowable *)e {
    NSLog(@"%@", msg);
    if (e != nil) {
        [e printStackTrace];
    }
}

@end
