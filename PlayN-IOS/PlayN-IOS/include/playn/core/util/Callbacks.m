//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/util/Callbacks.java
//
//  Created by Thomas on 7/25/13.
//

#include "java/lang/Throwable.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "playn/core/util/Callback.h"
#include "playn/core/util/Callbacks.h"

@implementation PlaynCoreUtilCallbacks

+ (id<JavaUtilList>)createAddWithJavaUtilList:(id<JavaUtilList>)list
                    withPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback {
  if (list == nil) list = [[JavaUtilArrayList alloc] init];
  [((id<JavaUtilList>) nil_chk(list)) addWithId:callback];
  return list;
}

+ (id<JavaUtilList>)dispatchSuccessClearWithJavaUtilList:(id<JavaUtilList>)list
                                                  withId:(id)result {
  if (list != nil) {
    for (int ii = 0, ll = [list size]; ii < ll; ii++) [((id<PlaynCoreUtilCallback>) nil_chk([list getWithInt:ii])) onSuccessWithId:result];
  }
  return nil;
}

+ (id<JavaUtilList>)dispatchFailureClearWithJavaUtilList:(id<JavaUtilList>)list
                                   withJavaLangThrowable:(JavaLangThrowable *)cause {
  if (list != nil) {
    for (int ii = 0, ll = [list size]; ii < ll; ii++) [((id<PlaynCoreUtilCallback>) nil_chk([list getWithInt:ii])) onFailureWithJavaLangThrowable:cause];
  }
  return nil;
}

- (id)init {
  return [super init];
}

@end
