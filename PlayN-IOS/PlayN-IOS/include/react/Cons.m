//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: react/Cons.java
//
//  Created by Thomas on 7/25/13.
//

#include "java/lang/Boolean.h"
#include "react/Connection.h"
#include "react/Cons.h"
#include "react/Reactor.h"

@implementation ReactCons

@synthesize owner = owner_;
@synthesize listener = listener_;
@synthesize next = next_;
@synthesize oneShot = oneShot_;

- (id)initWithReactReactor:(ReactReactor *)owner
                    withId:(ReactReactor_RListener *)listener {
  if ((self = [super init])) {
    self.owner = owner;
    self.listener = listener;
  }
  return self;
}

- (id<ReactConnection>)once {
  oneShot_ = YES;
  return self;
}

- (void)disconnect {
  [((ReactReactor *) nil_chk(owner_)) disconnectWithReactCons:self];
}

- (NSString *)description {
  return [NSString stringWithFormat:@"[owner=%@, lner=%@, hasNext=%@, oneShot=%@]", owner_, listener_, [JavaLangBoolean toStringWithBOOL:(next_ != nil)], [JavaLangBoolean toStringWithBOOL:oneShot_]];
}

+ (ReactCons *)insertWithReactCons:(ReactCons *)head
                     withReactCons:(ReactCons *)cons {
  if (head == nil) {
    return cons;
  }
  else if ([((ReactReactor_RListener *) nil_chk(head.listener)) priority] > [((ReactReactor_RListener *) nil_chk(((ReactCons *) nil_chk(cons)).listener)) priority]) {
    ((ReactCons *) nil_chk(cons)).next = head;
    return cons;
  }
  else {
    head.next = [ReactCons insertWithReactCons:head.next withReactCons:cons];
    return head;
  }
}

+ (ReactCons *)removeWithReactCons:(ReactCons *)head
                     withReactCons:(ReactCons *)cons {
  if (head == nil) return head;
  if (head == cons) return ((ReactCons *) nil_chk(head)).next;
  ((ReactCons *) nil_chk(head)).next = [ReactCons removeWithReactCons:((ReactCons *) nil_chk(head)).next withReactCons:cons];
  return head;
}

+ (ReactCons *)removeAllWithReactCons:(ReactCons *)head
                               withId:(id)listener {
  if (head == nil) return nil;
  if (((ReactCons *) nil_chk(head)).listener == listener) return [ReactCons removeAllWithReactCons:((ReactCons *) nil_chk(head)).next withId:listener];
  ((ReactCons *) nil_chk(head)).next = [ReactCons removeAllWithReactCons:((ReactCons *) nil_chk(head)).next withId:listener];
  return head;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ReactCons *typedCopy = (ReactCons *) copy;
  typedCopy.owner = owner_;
  typedCopy.listener = listener_;
  typedCopy.next = next_;
  typedCopy.oneShot = oneShot_;
}

@end
