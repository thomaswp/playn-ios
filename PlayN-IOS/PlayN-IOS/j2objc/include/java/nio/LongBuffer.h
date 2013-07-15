//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/LongBuffer.java
//
//  Created by tball on 6/22/13.
//

@class IOSLongArray;
@class JavaNioByteOrder;

#import "JreEmulation.h"
#import "java/lang/Comparable.h"
#import "java/nio/Buffer.h"

@interface JavaNioLongBuffer : JavaNioBuffer < JavaLangComparable > {
}

+ (JavaNioLongBuffer *)allocateWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE;
+ (JavaNioLongBuffer *)wrapWithJavaLangLongArray:(IOSLongArray *)array;
+ (JavaNioLongBuffer *)wrapWithJavaLangLongArray:(IOSLongArray *)array
                                         withInt:(int)start
                                         withInt:(int)len;
- (id)initWithInt:(int)capacity;
- (IOSLongArray *)array;
- (int)arrayOffset;
- (JavaNioLongBuffer *)asReadOnlyBuffer;
- (JavaNioLongBuffer *)compact;
- (int)compareToWithId:(JavaNioLongBuffer *)otherBuffer;
- (JavaNioLongBuffer *)duplicate;
- (BOOL)isEqual:(id)other;
- (long long int)get;
- (JavaNioLongBuffer *)getWithJavaLangLongArray:(IOSLongArray *)dest;
- (JavaNioLongBuffer *)getWithJavaLangLongArray:(IOSLongArray *)dest
                                        withInt:(int)off
                                        withInt:(int)len;
- (long long int)getWithInt:(int)index;
- (BOOL)hasArray;
- (NSUInteger)hash;
- (BOOL)isDirect;
- (JavaNioByteOrder *)order;
- (IOSLongArray *)protectedArray;
- (int)protectedArrayOffset;
- (BOOL)protectedHasArray;
- (JavaNioLongBuffer *)putWithLongInt:(long long int)l;
- (JavaNioLongBuffer *)putWithJavaLangLongArray:(IOSLongArray *)src;
- (JavaNioLongBuffer *)putWithJavaLangLongArray:(IOSLongArray *)src
                                        withInt:(int)off
                                        withInt:(int)len;
- (JavaNioLongBuffer *)putWithJavaNioLongBuffer:(JavaNioLongBuffer *)src;
- (JavaNioLongBuffer *)putWithInt:(int)index
                      withLongInt:(long long int)l;
- (JavaNioLongBuffer *)slice;
- (NSString *)description;
@end
