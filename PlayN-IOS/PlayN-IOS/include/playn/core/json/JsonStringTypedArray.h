//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/json/JsonStringTypedArray.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PlaynCoreJsonJsonStringTypedArray_RESTRICT
#define PlaynCoreJsonJsonStringTypedArray_INCLUDE_ALL 1
#endif
#undef PlaynCoreJsonJsonStringTypedArray_RESTRICT

#if !defined (_PlaynCoreJsonJsonStringTypedArray_) && (PlaynCoreJsonJsonStringTypedArray_INCLUDE_ALL || PlaynCoreJsonJsonStringTypedArray_INCLUDE)
#define _PlaynCoreJsonJsonStringTypedArray_

@protocol JavaUtilCollection;

#define JavaUtilArrayList_RESTRICT 1
#define JavaUtilArrayList_INCLUDE 1
#include "java/util/ArrayList.h"

#define PlaynCoreJson_RESTRICT 1
#define PlaynCoreJson_TypedArray_INCLUDE 1
#include "playn/core/Json.h"

#define PlaynCoreJsonJsonStringTypedArray_serialVersionUID 1

@interface PlaynCoreJsonJsonStringTypedArray : JavaUtilArrayList < PlaynCoreJson_TypedArray > {
}

- (id)initWithJavaUtilCollection:(id<JavaUtilCollection>)contents;
- (int)length;
- (NSString *)getWithInt:(int)index
                  withId:(NSString *)dflt;
@end
#endif
