//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/FileDescriptor.java
//
//  Created by tball on 7/9/13.
//

#ifndef _JavaIoFileDescriptor_H_
#define _JavaIoFileDescriptor_H_

#import "JreEmulation.h"

@interface JavaIoFileDescriptor : NSObject {
 @public
  long long int descriptor_;
  BOOL readOnly_;
}

@property (nonatomic, assign) long long int descriptor;
@property (nonatomic, assign) BOOL readOnly;

+ (JavaIoFileDescriptor *)in;
+ (JavaIoFileDescriptor *)out;
+ (JavaIoFileDescriptor *)err;
+ (long long int)getStdInDescriptor;
+ (long long int)getStdOutDescriptor;
+ (long long int)getStdErrDescriptor;
- (id)init;
- (void)sync;
- (void)syncImpl;
- (BOOL)valid;
@end

#endif // _JavaIoFileDescriptor_H_
