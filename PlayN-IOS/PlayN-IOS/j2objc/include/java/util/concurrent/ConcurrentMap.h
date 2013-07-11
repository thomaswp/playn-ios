//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/concurrent/src/main/java/java/util/concurrent/ConcurrentMap.java
//
//  Created by tball on 6/22/13.
//

#import "JreEmulation.h"
#import "java/util/Map.h"

@protocol JavaUtilConcurrentConcurrentMap < JavaUtilMap, NSObject >
- (id)putIfAbsentWithId:(id)key
                 withId:(id)value;
- (BOOL)removeWithId:(id)key
              withId:(id)value;
- (BOOL)replaceWithId:(id)key
               withId:(id)oldValue
               withId:(id)newValue;
- (id)replaceWithId:(id)key
             withId:(id)value;
@end