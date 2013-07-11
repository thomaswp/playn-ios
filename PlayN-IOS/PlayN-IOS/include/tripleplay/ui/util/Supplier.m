//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/util/Supplier.java
//
//  Created by Thomas on 7/10/13.
//

#import "playn/core/GroupLayer.h"
#import "tripleplay/ui/Element.h"
#import "tripleplay/ui/util/Supplier.h"

@implementation TripleplayUiUtilSupplier

+ (TripleplayUiUtilSupplier *)auto__WithTripleplayUiElement:(TripleplayUiElement *)elem {
  return [[TripleplayUiUtilSupplier_$1 alloc] initWithTripleplayUiElement:elem];
}

- (TripleplayUiElement *)get {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)destroy {
}

- (id)init {
  return [super init];
}

@end
@implementation TripleplayUiUtilSupplier_$1

@synthesize element = element_;
@synthesize val$elem = val$elem_;

- (TripleplayUiElement *)get {
  TripleplayUiElement *ret = element_;
  element_ = nil;
  return ret;
}

- (void)destroy {
  if (element_ != nil) [((id<PlaynCoreGroupLayer>) NIL_CHK(element_.layer)) destroy];
  element_ = nil;
}

- (id)initWithTripleplayUiElement:(TripleplayUiElement *)capture$0 {
  if ((self = [super init])) {
    val$elem_ = capture$0;
    element_ = val$elem_;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiUtilSupplier_$1 *typedCopy = (TripleplayUiUtilSupplier_$1 *) copy;
  typedCopy.element = element_;
  typedCopy.val$elem = val$elem_;
}

@end