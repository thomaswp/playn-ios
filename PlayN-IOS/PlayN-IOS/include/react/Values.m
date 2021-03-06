//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: react/Values.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "java/lang/Boolean.h"
#include "java/lang/Iterable.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "react/Connection.h"
#include "react/Function.h"
#include "react/Functions.h"
#include "react/SignalView.h"
#include "react/UnitSlot.h"
#include "react/ValueView.h"
#include "react/Values.h"

@implementation ReactValues

static id<ReactFunction> ReactValues_COMPUTE_AND_;
static id<ReactFunction> ReactValues_COMPUTE_OR_;

+ (id<ReactFunction>)COMPUTE_AND {
  return ReactValues_COMPUTE_AND_;
}

+ (id<ReactFunction>)COMPUTE_OR {
  return ReactValues_COMPUTE_OR_;
}

+ (id<ReactValueView>)togglerWithReactSignalView:(id<ReactSignalView>)signal
                                        withBOOL:(BOOL)initial {
  return [[ReactValues_$1 alloc] initWithReactSignalView:signal withBOOL:initial];
}

+ (id<ReactValueView>)not__WithReactValueView:(id<ReactValueView>)value {
  return [((id<ReactValueView>) nil_chk(value)) mapWithReactFunction:[ReactFunctions NOT]];
}

+ (id<ReactValueView>)andWithReactValueView:(id<ReactValueView>)one
                         withReactValueView:(id<ReactValueView>)two {
  return [ReactValues andWithJavaLangIterable:[JavaUtilArrays asListWithNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ one, two } count:2 type:[IOSClass classWithClass:[NSObject class]]]]];
}

+ (id<ReactValueView>)andWithReactValueViewArray:(IOSObjectArray *)values {
  return [ReactValues andWithJavaLangIterable:[JavaUtilArrays asListWithNSObjectArray:values]];
}

+ (id<ReactValueView>)andWithJavaLangIterable:(id<JavaLangIterable>)values {
  return [ReactValues aggValueWithJavaLangIterable:values withReactFunction:ReactValues_COMPUTE_AND_];
}

+ (id<ReactValueView>)orWithReactValueView:(id<ReactValueView>)one
                        withReactValueView:(id<ReactValueView>)two {
  return [ReactValues orWithJavaLangIterable:[JavaUtilArrays asListWithNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ one, two } count:2 type:[IOSClass classWithClass:[NSObject class]]]]];
}

+ (id<ReactValueView>)orWithReactValueViewArray:(IOSObjectArray *)values {
  return [ReactValues orWithJavaLangIterable:[JavaUtilArrays asListWithNSObjectArray:values]];
}

+ (id<ReactValueView>)orWithJavaLangIterable:(id<JavaLangIterable>)values {
  return [ReactValues aggValueWithJavaLangIterable:values withReactFunction:ReactValues_COMPUTE_OR_];
}

+ (id<ReactValueView>)asValueWithReactSignalView:(id<ReactSignalView>)signal
                                          withId:(id)initial {
  return [[ReactValues_$2 alloc] initWithReactSignalView:signal withId:initial];
}

+ (id<ReactValueView>)aggValueWithJavaLangIterable:(id<JavaLangIterable>)values
                                 withReactFunction:(id<ReactFunction>)aggOp {
  return [[ReactValues_$3 alloc] initWithReactFunction:aggOp withJavaLangIterable:values];
}

- (id)init {
  return [super init];
}

+ (void)initialize {
  if (self == [ReactValues class]) {
    ReactValues_COMPUTE_AND_ = [[ReactValues_$4 alloc] init];
    ReactValues_COMPUTE_OR_ = [[ReactValues_$5 alloc] init];
  }
}

@end
@implementation ReactValues_$1

@synthesize _current = _current_;
@synthesize val$signal = val$signal_;
@synthesize val$initial = val$initial_;

- (JavaLangBoolean *)get {
  return [JavaLangBoolean valueOfWithBOOL:_current_];
}

- (id<ReactConnection>)connect {
  return [((id<ReactSignalView>) nil_chk(val$signal_)) connectWithReactSlot:[[ReactValues_$1_$1 alloc] initWithReactValues_$1:self]];
}

- (id)initWithReactSignalView:(id<ReactSignalView>)capture$0
                     withBOOL:(BOOL)capture$1 {
  if ((self = [super init])) {
    val$signal_ = capture$0;
    val$initial_ = capture$1;
    _current_ = val$initial_;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ReactValues_$1 *typedCopy = (ReactValues_$1 *) copy;
  typedCopy._current = _current_;
  typedCopy.val$signal = val$signal_;
  typedCopy.val$initial = val$initial_;
}

@end
@implementation ReactValues_$1_$1

@synthesize this$0 = this$0_;

- (void)onEmit {
  BOOL old = this$0_._current;
  [this$0_ notifyChangeWithId:[JavaLangBoolean valueOfWithBOOL:this$0_._current = !old] withId:[JavaLangBoolean valueOfWithBOOL:old]];
}

- (id)initWithReactValues_$1:(ReactValues_$1 *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ReactValues_$1_$1 *typedCopy = (ReactValues_$1_$1 *) copy;
  typedCopy.this$0 = this$0_;
}

@end
@implementation ReactValues_$2

@synthesize _value = _value_;
@synthesize val$signal = val$signal_;
@synthesize val$initial = val$initial_;

- (id)get {
  return _value_;
}

- (id)updateLocalWithId:(id)value {
  id ovalue = _value_;
  _value_ = value;
  return ovalue;
}

- (id<ReactConnection>)connect {
  return [((id<ReactSignalView>) nil_chk(val$signal_)) connectWithReactSlot:[[ReactValues_$2_$1 alloc] initWithReactValues_$2:self]];
}

- (id)initWithReactSignalView:(id<ReactSignalView>)capture$0
                       withId:(id)capture$1 {
  if ((self = [super init])) {
    val$signal_ = capture$0;
    val$initial_ = capture$1;
    _value_ = val$initial_;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ReactValues_$2 *typedCopy = (ReactValues_$2 *) copy;
  typedCopy._value = _value_;
  typedCopy.val$signal = val$signal_;
  typedCopy.val$initial = val$initial_;
}

@end
@implementation ReactValues_$2_$1

@synthesize this$0 = this$0_;

- (void)onEmitWithId:(id)value {
  (void) [this$0_ updateAndNotifyIfWithId:value];
}

- (id)initWithReactValues_$2:(ReactValues_$2 *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ReactValues_$2_$1 *typedCopy = (ReactValues_$2_$1 *) copy;
  typedCopy.this$0 = this$0_;
}

@end
@implementation ReactValues_$3

@synthesize _trigger = _trigger_;
@synthesize val$aggOp = val$aggOp_;
@synthesize val$values = val$values_;

- (JavaLangBoolean *)get {
  return [((id<ReactFunction>) nil_chk(val$aggOp_)) applyWithId:val$values_];
}

- (id<ReactConnection>)connect {
  id<JavaUtilList> conns = [[JavaUtilArrayList alloc] init];
  {
    id<JavaUtilIterator> iter__ = [((id<JavaLangIterable>) nil_chk(val$values_)) iterator];
    while ([((id<JavaUtilIterator>) nil_chk(iter__)) hasNext]) {
      id<ReactValueView> value = [((id<JavaUtilIterator>) nil_chk(iter__)) next];
      [((id<JavaUtilList>) nil_chk(conns)) addWithId:[((id<ReactValueView>) nil_chk(value)) connectWithReactValueView_Listener:_trigger_]];
    }
  }
  return [[ReactValues_$3_$1 alloc] initWithJavaUtilList:conns];
}

- (id)initWithReactFunction:(id<ReactFunction>)capture$0
       withJavaLangIterable:(id<JavaLangIterable>)capture$1 {
  if ((self = [super init])) {
    val$aggOp_ = capture$0;
    val$values_ = capture$1;
    _trigger_ = [[ReactValues_$3_$2 alloc] initWithReactValues_$3:self];
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ReactValues_$3 *typedCopy = (ReactValues_$3 *) copy;
  typedCopy._trigger = _trigger_;
  typedCopy.val$aggOp = val$aggOp_;
  typedCopy.val$values = val$values_;
}

@end
@implementation ReactValues_$3_$1

@synthesize val$conns = val$conns_;

- (void)disconnect {
  {
    id<JavaUtilIterator> iter__ = [((id<JavaUtilList>) nil_chk(val$conns_)) iterator];
    while ([((id<JavaUtilIterator>) nil_chk(iter__)) hasNext]) {
      id<ReactConnection> conn = [((id<JavaUtilIterator>) nil_chk(iter__)) next];
      [((id<ReactConnection>) nil_chk(conn)) disconnect];
    }
  }
}

- (id<ReactConnection>)once {
  {
    id<JavaUtilIterator> iter__ = [((id<JavaUtilList>) nil_chk(val$conns_)) iterator];
    while ([((id<JavaUtilIterator>) nil_chk(iter__)) hasNext]) {
      id<ReactConnection> conn = [((id<JavaUtilIterator>) nil_chk(iter__)) next];
      (void) [((id<ReactConnection>) nil_chk(conn)) once];
    }
  }
  return self;
}

- (id)initWithJavaUtilList:(id<JavaUtilList>)capture$0 {
  if ((self = [super init])) {
    val$conns_ = capture$0;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ReactValues_$3_$1 *typedCopy = (ReactValues_$3_$1 *) copy;
  typedCopy.val$conns = val$conns_;
}

@end
@implementation ReactValues_$3_$2

@synthesize this$0 = this$0_;
@synthesize _current = _current_;

- (void)onEmit {
  BOOL ovalue = _current_;
  _current_ = [((JavaLangBoolean *) nil_chk([((id<ReactFunction>) nil_chk(this$0_.val$aggOp)) applyWithId:this$0_.val$values])) booleanValue];
  [this$0_ notifyChangeWithId:[JavaLangBoolean valueOfWithBOOL:_current_] withId:[JavaLangBoolean valueOfWithBOOL:ovalue]];
}

- (id)initWithReactValues_$3:(ReactValues_$3 *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
    _current_ = [((JavaLangBoolean *) nil_chk([((id<ReactFunction>) nil_chk(outer$.val$aggOp)) applyWithId:outer$.val$values])) booleanValue];
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ReactValues_$3_$2 *typedCopy = (ReactValues_$3_$2 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy._current = _current_;
}

@end
@implementation ReactValues_$4

- (JavaLangBoolean *)applyWithId:(id<JavaLangIterable>)values {
  {
    id<JavaUtilIterator> iter__ = [((id<JavaLangIterable>) nil_chk(values)) iterator];
    while ([((id<JavaUtilIterator>) nil_chk(iter__)) hasNext]) {
      id<ReactValueView> value = [((id<JavaUtilIterator>) nil_chk(iter__)) next];
      if (![((JavaLangBoolean *) nil_chk([((id<ReactValueView>) nil_chk(value)) get])) booleanValue]) return [JavaLangBoolean valueOfWithBOOL:NO];
    }
  }
  return [JavaLangBoolean valueOfWithBOOL:YES];
}

- (id)init {
  return [super init];
}

@end
@implementation ReactValues_$5

- (JavaLangBoolean *)applyWithId:(id<JavaLangIterable>)values {
  {
    id<JavaUtilIterator> iter__ = [((id<JavaLangIterable>) nil_chk(values)) iterator];
    while ([((id<JavaUtilIterator>) nil_chk(iter__)) hasNext]) {
      id<ReactValueView> value = [((id<JavaUtilIterator>) nil_chk(iter__)) next];
      if ([((JavaLangBoolean *) nil_chk([((id<ReactValueView>) nil_chk(value)) get])) booleanValue]) return [JavaLangBoolean valueOfWithBOOL:YES];
    }
  }
  return [JavaLangBoolean valueOfWithBOOL:NO];
}

- (id)init {
  return [super init];
}

@end
