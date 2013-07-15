//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni-kernel/src/main/java/java/lang/reflect/Array.java
//
//  Created by tball on 6/22/13.
//

@class IOSClass;
@class IOSIntArray;

#import "JreEmulation.h"

@interface JavaLangReflectArray : NSObject {
}

- (id)init;
+ (id)getWithId:(id)array
        withInt:(int)index;
+ (BOOL)getBooleanWithId:(id)array
                 withInt:(int)index;
+ (char)getByteWithId:(id)array
              withInt:(int)index;
+ (unichar)getCharWithId:(id)array
                 withInt:(int)index;
+ (double)getDoubleWithId:(id)array
                  withInt:(int)index;
+ (float)getFloatWithId:(id)array
                withInt:(int)index;
+ (int)getIntWithId:(id)array
            withInt:(int)index;
+ (int)getLengthWithId:(id)array;
+ (long long int)getLongWithId:(id)array
                       withInt:(int)index;
+ (short int)getShortWithId:(id)array
                    withInt:(int)index;
+ (id)newInstanceWithIOSClass:(IOSClass *)componentType
     withJavaLangIntegerArray:(IOSIntArray *)dimensions OBJC_METHOD_FAMILY_NONE;
+ (id)newInstanceWithIOSClass:(IOSClass *)componentType
                      withInt:(int)size OBJC_METHOD_FAMILY_NONE;
+ (void)setWithId:(id)array
          withInt:(int)index
           withId:(id)value;
+ (void)setBooleanWithId:(id)array
                 withInt:(int)index
                withBOOL:(BOOL)value;
+ (void)setByteWithId:(id)array
              withInt:(int)index
             withChar:(char)value;
+ (void)setCharWithId:(id)array
              withInt:(int)index
          withUnichar:(unichar)value;
+ (void)setDoubleWithId:(id)array
                withInt:(int)index
             withDouble:(double)value;
+ (void)setFloatWithId:(id)array
               withInt:(int)index
             withFloat:(float)value;
+ (void)setIntWithId:(id)array
             withInt:(int)index
             withInt:(int)value;
+ (void)setLongWithId:(id)array
              withInt:(int)index
          withLongInt:(long long int)value;
+ (void)setShortWithId:(id)array
               withInt:(int)index
          withShortInt:(short int)value;
@end
