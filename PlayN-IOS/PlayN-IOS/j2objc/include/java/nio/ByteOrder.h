//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/ByteOrder.java
//
//  Created by tball on 7/9/13.
//

#ifndef _JavaNioByteOrder_H_
#define _JavaNioByteOrder_H_

#import "JreEmulation.h"

@interface JavaNioByteOrder : NSObject {
 @public
  NSString *name_;
}

@property (nonatomic, copy) NSString *name;

+ (JavaNioByteOrder *)getBIG_ENDIAN;
+ (JavaNioByteOrder *)getLITTLE_ENDIAN;
+ (JavaNioByteOrder *)NATIVE_ORDER;
+ (BOOL)isLittleEndian;
+ (JavaNioByteOrder *)nativeOrder;
- (id)initWithNSString:(NSString *)name;
- (NSString *)description;
@end

#endif // _JavaNioByteOrder_H_
