//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/json/JsonWriterException.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PlaynCoreJsonJsonWriterException_RESTRICT
#define PlaynCoreJsonJsonWriterException_INCLUDE_ALL 1
#endif
#undef PlaynCoreJsonJsonWriterException_RESTRICT

#if !defined (_PlaynCoreJsonJsonWriterException_) && (PlaynCoreJsonJsonWriterException_INCLUDE_ALL || PlaynCoreJsonJsonWriterException_INCLUDE)
#define _PlaynCoreJsonJsonWriterException_

@class JavaLangThrowable;

#define JavaLangRuntimeException_RESTRICT 1
#define JavaLangRuntimeException_INCLUDE 1
#include "java/lang/RuntimeException.h"

#define PlaynCoreJsonJsonWriterException_serialVersionUID 1

@interface PlaynCoreJsonJsonWriterException : JavaLangRuntimeException {
}

- (id)initWithNSString:(NSString *)message;
- (id)initWithJavaLangThrowable:(JavaLangThrowable *)t;
@end
#endif
