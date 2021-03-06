//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/security/PermissionCollection.java
//
//  Created by tball on 7/9/13.
//

#ifndef _JavaSecurityPermissionCollection_H_
#define _JavaSecurityPermissionCollection_H_

@class JavaSecurityPermission;
@protocol JavaUtilEnumeration;

#import "JreEmulation.h"
#include "java/io/Serializable.h"

@interface JavaSecurityPermissionCollection : NSObject < JavaIoSerializable > {
}

- (void)addWithJavaSecurityPermission:(JavaSecurityPermission *)permission;
- (id<JavaUtilEnumeration>)elements;
- (BOOL)impliesWithJavaSecurityPermission:(JavaSecurityPermission *)permission;
- (BOOL)isReadOnly;
- (void)setReadOnly;
- (id)init;
@end

#endif // _JavaSecurityPermissionCollection_H_
