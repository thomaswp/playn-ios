//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/lang/IllegalStateException.java
//
//  Created by tball on 6/22/13.
//

@class JavaLangThrowable;

#import "JreEmulation.h"
#import "java/lang/RuntimeException.h"

#define JavaLangIllegalStateException_serialVersionUID -1848914673093119416

@interface JavaLangIllegalStateException : JavaLangRuntimeException {
}

- (id)init;
- (id)initWithNSString:(NSString *)detailMessage;
- (id)initWithNSString:(NSString *)message
 withJavaLangThrowable:(JavaLangThrowable *)cause;
- (id)initWithJavaLangThrowable:(JavaLangThrowable *)cause;
@end
