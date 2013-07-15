//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/ReadWriteIntArrayBuffer.java
//
//  Created by tball on 6/22/13.
//

@class IOSIntArray;
@class JavaNioIntBuffer;

#import "JreEmulation.h"
#import "java/nio/IntArrayBuffer.h"

@interface JavaNioReadWriteIntArrayBuffer : JavaNioIntArrayBuffer {
}

+ (JavaNioReadWriteIntArrayBuffer *)copy__WithJavaNioIntArrayBuffer:(JavaNioIntArrayBuffer *)other
                                                            withInt:(int)markOfOther OBJC_METHOD_FAMILY_NONE;
- (id)initWithJavaLangIntegerArray:(IOSIntArray *)array;
- (id)initWithInt:(int)capacity;
- (id)initWithInt:(int)capacity
withJavaLangIntegerArray:(IOSIntArray *)backingArray
          withInt:(int)arrayOffset;
- (JavaNioIntBuffer *)asReadOnlyBuffer;
- (JavaNioIntBuffer *)compact;
- (JavaNioIntBuffer *)duplicate;
- (BOOL)isReadOnly;
- (IOSIntArray *)protectedArray;
- (int)protectedArrayOffset;
- (BOOL)protectedHasArray;
- (JavaNioIntBuffer *)putWithInt:(int)c;
- (JavaNioIntBuffer *)putWithInt:(int)index
                         withInt:(int)c;
- (JavaNioIntBuffer *)putWithJavaLangIntegerArray:(IOSIntArray *)src
                                          withInt:(int)off
                                          withInt:(int)len;
- (JavaNioIntBuffer *)slice;
@end
