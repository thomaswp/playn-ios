//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/javax/xml/parsers/FactoryConfigurationError.java
//
//  Created by tball on 7/9/13.
//

#ifndef _JavaxXmlParsersFactoryConfigurationError_H_
#define _JavaxXmlParsersFactoryConfigurationError_H_

@class JavaLangException;

#import "JreEmulation.h"
#include "java/lang/Error.h"

@interface JavaxXmlParsersFactoryConfigurationError : JavaLangError {
 @public
  JavaLangException *exception_;
}

@property (nonatomic, retain) JavaLangException *exception;

- (id)init;
- (id)initWithNSString:(NSString *)msg;
- (id)initWithJavaLangException:(JavaLangException *)e;
- (id)initWithJavaLangException:(JavaLangException *)e
                   withNSString:(NSString *)msg;
- (NSString *)getMessage;
- (JavaLangException *)getException;
@end

#endif // _JavaxXmlParsersFactoryConfigurationError_H_
