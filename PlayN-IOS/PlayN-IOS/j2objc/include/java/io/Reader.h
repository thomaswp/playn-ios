//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/Reader.java
//
//  Created by tball on 7/9/13.
//

#ifndef _JavaIoReader_H_
#define _JavaIoReader_H_

@class IOSCharArray;
@class JavaNioCharBuffer;

#import "JreEmulation.h"
#include "java/io/Closeable.h"
#include "java/lang/Readable.h"

@interface JavaIoReader : NSObject < JavaLangReadable, JavaIoCloseable > {
 @public
  id lock_;
}

@property (nonatomic, retain) id lock;

- (id)init;
- (id)initWithId:(id)lock;
- (void)close;
- (void)markWithInt:(int)readLimit;
- (BOOL)markSupported;
- (int)read;
- (int)readWithCharArray:(IOSCharArray *)buf;
- (int)readWithCharArray:(IOSCharArray *)buf
                 withInt:(int)offset
                 withInt:(int)count;
- (BOOL)ready;
- (void)reset;
- (long long int)skipWithLongInt:(long long int)count;
- (int)readWithJavaNioCharBuffer:(JavaNioCharBuffer *)target;
@end

#endif // _JavaIoReader_H_
