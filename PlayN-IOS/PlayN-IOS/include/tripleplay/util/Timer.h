//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/util/Timer.java
//
//  Created by Thomas on 7/10/13.
//

@class TripleplayUtilTimer_Action;
@protocol JavaLangRunnable;
@protocol TripleplayUtilTimer_Handle;

#import "JreEmulation.h"

@interface TripleplayUtilTimer : NSObject {
 @public
  TripleplayUtilTimer_Action *_root_;
  long long int _currentTime_;
}

@property (nonatomic, strong) TripleplayUtilTimer_Action *_root;
@property (nonatomic, assign) long long int _currentTime;

- (id)init;
- (id<TripleplayUtilTimer_Handle>)afterWithInt:(int)millis
                          withJavaLangRunnable:(id<JavaLangRunnable>)action;
- (id<TripleplayUtilTimer_Handle>)everyWithInt:(int)millis
                          withJavaLangRunnable:(id<JavaLangRunnable>)action;
- (id<TripleplayUtilTimer_Handle>)atThenEveryWithInt:(int)initialMillis
                                             withInt:(int)repeatMillis
                                withJavaLangRunnable:(id<JavaLangRunnable>)action;
- (void)update;
- (id)initWithLongInt:(long long int)now;
- (void)updateWithLongInt:(long long int)now;
- (void)executeWithJavaLangRunnable:(id<JavaLangRunnable>)runnable;
- (id<TripleplayUtilTimer_Handle>)addWithInt:(int)initialMillis
                                     withInt:(int)repeatMillis
                        withJavaLangRunnable:(id<JavaLangRunnable>)action;
- (TripleplayUtilTimer_Action *)insertWithTripleplayUtilTimer_Action:(TripleplayUtilTimer_Action *)target
                                      withTripleplayUtilTimer_Action:(TripleplayUtilTimer_Action *)tail;
- (TripleplayUtilTimer_Action *)removeWithTripleplayUtilTimer_Action:(TripleplayUtilTimer_Action *)target
                                      withTripleplayUtilTimer_Action:(TripleplayUtilTimer_Action *)tail;
@end

@protocol TripleplayUtilTimer_Handle < NSObject >
- (void)cancel;
@end

@interface TripleplayUtilTimer_Action : NSObject < TripleplayUtilTimer_Handle > {
 @public
  TripleplayUtilTimer *this$0_;
  int repeatMillis_;
  id<JavaLangRunnable> action_;
  long long int nextExpire_;
  TripleplayUtilTimer_Action *next_;
}

@property (nonatomic, strong) TripleplayUtilTimer *this$0;
@property (nonatomic, assign) int repeatMillis;
@property (nonatomic, strong) id<JavaLangRunnable> action;
@property (nonatomic, assign) long long int nextExpire;
@property (nonatomic, strong) TripleplayUtilTimer_Action *next;

- (id)initWithTripleplayUtilTimer:(TripleplayUtilTimer *)outer$
                          withInt:(int)initialMillis
                          withInt:(int)repeatMillis
             withJavaLangRunnable:(id<JavaLangRunnable>)action;
- (BOOL)cancelled;
- (void)cancel;
- (NSString *)description;
@end
