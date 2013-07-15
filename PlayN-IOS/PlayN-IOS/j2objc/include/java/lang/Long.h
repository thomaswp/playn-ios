//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/lang/Long.java
//
//  Created by tball on 6/22/13.
//

@class IOSClass;
@class IOSObjectArray;

#import "JreEmulation.h"
#import "java/lang/Comparable.h"

#define JavaLangLong_MAX_VALUE 9223372036854775807
#define JavaLangLong_MIN_VALUE ((long long) 0x8000000000000000LL)
#define JavaLangLong_SIZE 64

@interface JavaLangLong : NSNumber < JavaLangComparable > {
 @public
  long long int value_;
}

@property (nonatomic, assign) long long int value;

+ (long long int)MAX_VALUE;
+ (long long int)MIN_VALUE;
+ (IOSClass *)TYPE;
+ (int)SIZE;
- (id)initWithLongInt:(long long int)value;
- (id)initWithNSString:(NSString *)string;
- (char)byteValue;
- (int)compareToWithId:(JavaLangLong *)object;
+ (JavaLangLong *)decodeWithNSString:(NSString *)string;
- (double)doubleValue;
- (BOOL)isEqual:(id)o;
- (float)floatValue;
+ (JavaLangLong *)getLongWithNSString:(NSString *)string;
+ (JavaLangLong *)getLongWithNSString:(NSString *)string
                          withLongInt:(long long int)defaultValue;
+ (JavaLangLong *)getLongWithNSString:(NSString *)string
                     withJavaLangLong:(JavaLangLong *)defaultValue;
- (NSUInteger)hash;
- (int)intValue;
- (long long int)longLongValue;
+ (long long int)parseLongWithNSString:(NSString *)string;
+ (long long int)parseLongWithNSString:(NSString *)string
                               withInt:(int)radix;
+ (long long int)parseWithNSString:(NSString *)string
                           withInt:(int)offset
                           withInt:(int)radix
                          withBOOL:(BOOL)negative;
- (short int)shortValue;
+ (NSString *)toBinaryStringWithLongInt:(long long int)l;
+ (NSString *)toHexStringWithLongInt:(long long int)l;
+ (NSString *)toOctalStringWithLongInt:(long long int)l;
- (NSString *)description;
+ (NSString *)toStringWithLongInt:(long long int)l;
+ (NSString *)toStringWithLongInt:(long long int)l
                          withInt:(int)radix;
+ (JavaLangLong *)valueOfWithNSString:(NSString *)string;
+ (JavaLangLong *)valueOfWithNSString:(NSString *)string
                              withInt:(int)radix;
+ (long long int)highestOneBitWithLongInt:(long long int)lng;
+ (long long int)lowestOneBitWithLongInt:(long long int)lng;
+ (int)numberOfLeadingZerosWithLongInt:(long long int)lng;
+ (int)numberOfTrailingZerosWithLongInt:(long long int)lng;
+ (int)bitCountWithLongInt:(long long int)lng;
+ (long long int)rotateLeftWithLongInt:(long long int)lng
                               withInt:(int)distance;
+ (long long int)rotateRightWithLongInt:(long long int)lng
                                withInt:(int)distance;
+ (long long int)reverseBytesWithLongInt:(long long int)lng;
+ (long long int)reverseWithLongInt:(long long int)lng;
+ (int)signumWithLongInt:(long long int)lng;
+ (JavaLangLong *)valueOfWithLongInt:(long long int)lng;
@end

@interface JavaLangLong_valueOfCache : NSObject {
}

+ (IOSObjectArray *)CACHE;
- (id)init;
@end
