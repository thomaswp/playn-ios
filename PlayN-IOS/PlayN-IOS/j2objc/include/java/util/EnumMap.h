//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/EnumMap.java
//
//  Created by tball on 7/9/13.
//

#ifndef _JavaUtilEnumMap_H_
#define _JavaUtilEnumMap_H_

@class IOSBooleanArray;
@class IOSClass;
@class IOSObjectArray;
@class JavaLangEnum;
@class JavaUtilEnumMap_EnumMapEntrySet;
@protocol JavaUtilCollection;
@protocol JavaUtilMap;
@protocol JavaUtilMap_Entry;
@protocol JavaUtilSet;

#import "JreEmulation.h"
#include "java/io/Serializable.h"
#include "java/util/AbstractCollection.h"
#include "java/util/AbstractMap.h"
#include "java/util/AbstractSet.h"
#include "java/util/Iterator.h"
#include "java/util/MapEntry.h"

#define JavaUtilEnumMap_serialVersionUID 458661240069192865

@interface JavaUtilEnumMap : JavaUtilAbstractMap < JavaIoSerializable, NSCopying > {
 @public
  IOSClass *keyType_;
  IOSObjectArray *keys_;
  IOSObjectArray *values__;
  IOSBooleanArray *hasMapping_;
  int mappingsCount_;
  int enumSize_;
  JavaUtilEnumMap_EnumMapEntrySet *entrySet__;
  id<JavaUtilCollection> valuesCollection_EnumMap_;
}

@property (nonatomic, retain) IOSClass *keyType;
@property (nonatomic, retain) IOSObjectArray *keys;
@property (nonatomic, retain) IOSObjectArray *values_;
@property (nonatomic, retain) IOSBooleanArray *hasMapping;
@property (nonatomic, assign) int mappingsCount;
@property (nonatomic, assign) int enumSize;
@property (nonatomic, retain) JavaUtilEnumMap_EnumMapEntrySet *entrySet_;
@property (nonatomic, retain) id<JavaUtilCollection> valuesCollection_EnumMap;

- (id)initWithIOSClass:(IOSClass *)keyType;
- (id)initWithJavaUtilEnumMap:(JavaUtilEnumMap *)map;
- (id)initWithJavaUtilMap:(id<JavaUtilMap>)map;
- (void)clear;
- (JavaUtilEnumMap *)clone;
- (BOOL)containsKeyWithId:(id)key;
- (BOOL)containsValueWithId:(id)value;
- (id<JavaUtilSet>)entrySet;
- (BOOL)isEqual:(id)object;
- (id)getWithId:(id)key;
- (id<JavaUtilSet>)keySet;
- (id)putWithId:(JavaLangEnum *)key
         withId:(id)value;
- (void)putAllWithJavaUtilMap:(id<JavaUtilMap>)map;
- (id)removeWithId:(id)key;
- (int)size;
- (id<JavaUtilCollection>)values;
- (BOOL)isValidKeyTypeWithId:(id)key;
- (void)initializationWithJavaUtilEnumMap:(JavaUtilEnumMap *)enumMap OBJC_METHOD_FAMILY_NONE;
- (void)initializationWithIOSClass:(IOSClass *)type OBJC_METHOD_FAMILY_NONE;
- (void)putAllImplWithJavaUtilMap:(id<JavaUtilMap>)map;
- (id)putImplWithId:(JavaLangEnum *)key
             withId:(id)value;
- (id)copyWithZone:(NSZone *)zone;
@end

@interface JavaUtilEnumMap_Entry : JavaUtilMapEntry {
 @public
  JavaUtilEnumMap *enumMap_;
  int ordinal_;
}

@property (nonatomic, retain) JavaUtilEnumMap *enumMap;
@property (nonatomic, assign) int ordinal;

- (id)initWithId:(JavaLangEnum *)theKey
          withId:(id)theValue
withJavaUtilEnumMap:(JavaUtilEnumMap *)em;
- (BOOL)isEqual:(id)object;
- (NSUInteger)hash;
- (id)getKey;
- (id)getValue;
- (id)setValueWithId:(id)value;
- (NSString *)description;
- (void)checkEntryStatus;
@end

@interface JavaUtilEnumMap_EnumMapKeySet : JavaUtilAbstractSet {
 @public
  JavaUtilEnumMap *enumMap_;
}

@property (nonatomic, assign) JavaUtilEnumMap *enumMap;

- (id)initWithJavaUtilEnumMap:(JavaUtilEnumMap *)em;
- (void)clear;
- (BOOL)containsWithId:(id)object;
- (id<JavaUtilIterator>)iterator;
- (BOOL)removeWithId:(id)object;
- (int)size;
@end

@interface JavaUtilEnumMap_EnumMapKeySet_$1 : NSObject < JavaUtilMapEntry_Type > {
}

- (id)getWithJavaUtilMapEntry:(JavaUtilMapEntry *)entry;
- (id)init;
@end

@interface JavaUtilEnumMap_EnumMapValueCollection : JavaUtilAbstractCollection {
 @public
  JavaUtilEnumMap *enumMap_;
}

@property (nonatomic, assign) JavaUtilEnumMap *enumMap;

- (id)initWithJavaUtilEnumMap:(JavaUtilEnumMap *)em;
- (void)clear;
- (BOOL)containsWithId:(id)object;
- (id<JavaUtilIterator>)iterator;
- (BOOL)removeWithId:(id)object;
- (int)size;
@end

@interface JavaUtilEnumMap_EnumMapValueCollection_$1 : NSObject < JavaUtilMapEntry_Type > {
}

- (id)getWithJavaUtilMapEntry:(JavaUtilMapEntry *)entry;
- (id)init;
@end

@interface JavaUtilEnumMap_EnumMapIterator : NSObject < JavaUtilIterator > {
 @public
  int position_;
  int prePosition_;
  JavaUtilEnumMap *enumMap_;
  id<JavaUtilMapEntry_Type> type_;
}

@property (nonatomic, assign) int position;
@property (nonatomic, assign) int prePosition;
@property (nonatomic, retain) JavaUtilEnumMap *enumMap;
@property (nonatomic, retain) id<JavaUtilMapEntry_Type> type;

- (id)initWithJavaUtilMapEntry_Type:(id<JavaUtilMapEntry_Type>)value
                withJavaUtilEnumMap:(JavaUtilEnumMap *)em;
- (BOOL)hasNext;
- (id)next;
- (void)remove;
- (NSString *)description;
- (void)checkStatus;
@end

@interface JavaUtilEnumMap_EnumMapEntryIterator : JavaUtilEnumMap_EnumMapIterator {
}

- (id)initWithJavaUtilMapEntry_Type:(id<JavaUtilMapEntry_Type>)value
                withJavaUtilEnumMap:(JavaUtilEnumMap *)em;
- (id)next;
@end

@interface JavaUtilEnumMap_EnumMapEntrySet : JavaUtilAbstractSet {
 @public
  JavaUtilEnumMap *enumMap_;
}

@property (nonatomic, assign) JavaUtilEnumMap *enumMap;

- (id)initWithJavaUtilEnumMap:(JavaUtilEnumMap *)em;
- (void)clear;
- (BOOL)containsWithId:(id)object;
- (id<JavaUtilIterator>)iterator;
- (BOOL)removeWithId:(id)object;
- (int)size;
@end

@interface JavaUtilEnumMap_EnumMapEntrySet_$1 : NSObject < JavaUtilMapEntry_Type > {
}

- (id<JavaUtilMap_Entry>)getWithJavaUtilMapEntry:(JavaUtilMapEntry *)entry;
- (id)init;
@end

#endif // _JavaUtilEnumMap_H_
