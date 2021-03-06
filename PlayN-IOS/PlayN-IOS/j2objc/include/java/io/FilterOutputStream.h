//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/FilterOutputStream.java
//
//  Created by tball on 7/9/13.
//

#ifndef _JavaIoFilterOutputStream_H_
#define _JavaIoFilterOutputStream_H_

@class IOSByteArray;

#import "JreEmulation.h"
#include "java/io/OutputStream.h"

@interface JavaIoFilterOutputStream : JavaIoOutputStream {
 @public
  JavaIoOutputStream *out_;
}

@property (nonatomic, retain) JavaIoOutputStream *out;

- (id)initWithJavaIoOutputStream:(JavaIoOutputStream *)outArg;
- (void)close;
- (void)flush;
- (void)writeWithByteArray:(IOSByteArray *)buffer;
- (void)writeWithByteArray:(IOSByteArray *)buffer
                   withInt:(int)offset
                   withInt:(int)length;
- (void)writeWithInt:(int)oneByte;
@end

#endif // _JavaIoFilterOutputStream_H_
