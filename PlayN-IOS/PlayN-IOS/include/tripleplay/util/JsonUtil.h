//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/util/JsonUtil.java
//
//  Created by Thomas on 7/10/13.
//

@class IOSClass;
@class JavaLangEnum;
@protocol PlaynCoreJson_Array;
@protocol PlaynCoreJson_Object;

#import "JreEmulation.h"

@interface TripleplayUtilJsonUtil : NSObject {
}

+ (id)getEnumWithPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)json
                         withNSString:(NSString *)key
                         withIOSClass:(IOSClass *)enumType
                               withId:(JavaLangEnum *)defaultVal;
+ (id)requireEnumWithPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)json
                             withNSString:(NSString *)key
                             withIOSClass:(IOSClass *)enumType;
+ (BOOL)getBooleanWithPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)json
                              withNSString:(NSString *)key
                                  withBOOL:(BOOL)defaultVal;
+ (BOOL)requireBooleanWithPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)json
                                  withNSString:(NSString *)key;
+ (double)getNumberWithPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)json
                               withNSString:(NSString *)key
                                 withDouble:(double)defaultVal;
+ (double)requireNumberWithPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)json
                                   withNSString:(NSString *)key;
+ (float)getFloatWithPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)json
                             withNSString:(NSString *)key
                                withFloat:(float)defaultVal;
+ (float)requireFloatWithPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)json
                                 withNSString:(NSString *)key;
+ (int)getIntWithPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)json
                         withNSString:(NSString *)key
                              withInt:(int)defaultVal;
+ (int)requireIntWithPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)json
                             withNSString:(NSString *)key;
+ (NSString *)getStringWithPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)json
                                   withNSString:(NSString *)key
                                   withNSString:(NSString *)defaultVal;
+ (NSString *)requireStringWithPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)json
                                       withNSString:(NSString *)key;
+ (id<PlaynCoreJson_Object>)getObjectWithPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)json
                                                 withNSString:(NSString *)key
                                     withPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)defaultVal;
+ (id<PlaynCoreJson_Object>)requireObjectWithPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)json
                                                     withNSString:(NSString *)key;
+ (id<PlaynCoreJson_Array>)getArrayWithPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)json
                                               withNSString:(NSString *)key
                                    withPlaynCoreJson_Array:(id<PlaynCoreJson_Array>)defaultVal;
+ (id<PlaynCoreJson_Array>)requireArrayWithPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)json
                                                   withNSString:(NSString *)key;
+ (void)requireKeyWithPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)json
                              withNSString:(NSString *)key;
- (id)init;
@end