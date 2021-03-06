//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/BufferedOutputStream.java
//
//  Created by tball on 7/9/13.
//

#ifndef _JavaIoBufferedOutputStream_H_
#define _JavaIoBufferedOutputStream_H_

@class IOSByteArray;
@class JavaIoOutputStream;

#import "JreEmulation.h"
#include "java/io/FilterOutputStream.h"

@interface JavaIoBufferedOutputStream : JavaIoFilterOutputStream {
 @public
  IOSByteArray *buf_;
  int count_;
}

@property (nonatomic, retain) IOSByteArray *buf;
@property (nonatomic, assign) int count;

- (id)initWithJavaIoOutputStream:(JavaIoOutputStream *)outArg;
- (id)initWithJavaIoOutputStream:(JavaIoOutputStream *)outArg
                         withInt:(int)size;
- (void)flush;
- (void)writeWithByteArray:(IOSByteArray *)buffer
                   withInt:(int)offset
                   withInt:(int)length;
- (void)close;
- (void)writeWithInt:(int)oneByte;
- (void)flushInternal;
@end

#endif // _JavaIoBufferedOutputStream_H_
