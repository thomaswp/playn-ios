//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/util/RunQueue.java
//
//  Created by Thomas on 7/10/13.
//

#import "java/lang/Runnable.h"
#import "java/lang/Throwable.h"
#import "playn/core/Log.h"
#import "playn/core/util/RunQueue.h"

@implementation PlaynCoreUtilRunQueue

@synthesize log = log_;
@synthesize head = head_;

- (id)initWithPlaynCoreLog:(id<PlaynCoreLog>)log {
  if ((self = [super init])) {
    self.log = log;
  }
  return self;
}

- (void)execute {
  PlaynCoreUtilRunQueue_Entry *head;
  @synchronized (self) {
    head = self.head;
    self.head = nil;
  }
  while (head != nil) {
    @try {
      [((id<JavaLangRunnable>) NIL_CHK(head.runnable)) run];
    }
    @catch (JavaLangThrowable *t) {
      [((id<PlaynCoreLog>) NIL_CHK(log_)) warnWithNSString:[NSString stringWithFormat:@"Failure executing runnable: %@", ((PlaynCoreUtilRunQueue_Entry *) NIL_CHK(head)).runnable] withJavaLangThrowable:t];
    }
    head = ((PlaynCoreUtilRunQueue_Entry *) NIL_CHK(head)).next;
  }
}

- (void)addWithJavaLangRunnable:(id<JavaLangRunnable>)runnable {
  @synchronized(self) {
    {
      if (head_ == nil) {
        head_ = [[PlaynCoreUtilRunQueue_Entry alloc] initWithPlaynCoreUtilRunQueue:self withJavaLangRunnable:runnable];
      }
      else {
        PlaynCoreUtilRunQueue_Entry *parent = head_;
        while (((PlaynCoreUtilRunQueue_Entry *) NIL_CHK(parent)).next != nil) {
          parent = ((PlaynCoreUtilRunQueue_Entry *) NIL_CHK(parent)).next;
        }
        ((PlaynCoreUtilRunQueue_Entry *) NIL_CHK(parent)).next = [[PlaynCoreUtilRunQueue_Entry alloc] initWithPlaynCoreUtilRunQueue:self withJavaLangRunnable:runnable];
      }
    }
  }
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreUtilRunQueue *typedCopy = (PlaynCoreUtilRunQueue *) copy;
  typedCopy.log = log_;
  typedCopy.head = head_;
}

@end
@implementation PlaynCoreUtilRunQueue_Entry

@synthesize runnable = runnable_;
@synthesize next = next_;

- (id)initWithPlaynCoreUtilRunQueue:(PlaynCoreUtilRunQueue *)outer$
               withJavaLangRunnable:(id<JavaLangRunnable>)runnable {
  if ((self = [super init])) {
    self.runnable = runnable;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreUtilRunQueue_Entry *typedCopy = (PlaynCoreUtilRunQueue_Entry *) copy;
  typedCopy.runnable = runnable_;
  typedCopy.next = next_;
}

@end