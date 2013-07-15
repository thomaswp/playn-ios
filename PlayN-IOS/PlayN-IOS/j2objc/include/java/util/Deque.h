//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/Deque.java
//
//  Created by tball on 6/22/13.
//

@protocol JavaUtilIterator;

#import "JreEmulation.h"
#import "java/util/Queue.h"

@protocol JavaUtilDeque < JavaUtilQueue, NSObject >
- (void)addFirstWithId:(id)e;
- (void)addLastWithId:(id)e;
- (BOOL)offerFirstWithId:(id)e;
- (BOOL)offerLastWithId:(id)e;
- (id)removeFirst;
- (id)removeLast;
- (id)pollFirst;
- (id)pollLast;
- (id)getFirst;
- (id)getLast;
- (id)peekFirst;
- (id)peekLast;
- (BOOL)removeFirstOccurrenceWithId:(id)o;
- (BOOL)removeLastOccurrenceWithId:(id)o;
- (BOOL)addWithId:(id)e;
- (BOOL)offerWithId:(id)e;
- (id)remove;
- (id)poll;
- (id)element;
- (id)peek;
- (void)pushWithId:(id)e;
- (id)pop;
- (BOOL)removeWithId:(id)o;
- (BOOL)containsWithId:(id)o;
- (int)size;
- (id<JavaUtilIterator>)iterator;
- (id<JavaUtilIterator>)descendingIterator;
@end
