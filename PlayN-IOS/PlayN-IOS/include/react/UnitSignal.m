//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: react/UnitSignal.java
//
//  Created by Thomas on 7/10/13.
//

#import "IOSClass.h"
#import "react/AbstractSignal.h"
#import "react/UnitSignal.h"
#import "react/UnitSlot.h"

@implementation ReactUnitSignal

- (void)emit {
  [self notifyEmitWithId:nil];
}

- (ReactUnitSlot *)slot {
  return [[ReactUnitSignal_$1 alloc] initWithReactUnitSignal:self];
}

- (id)init {
  return [super init];
}

@end
@implementation ReactUnitSignal_$1

@synthesize this$0 = this$0_;

- (void)onEmit {
  [this$0_ emit];
}

- (id)initWithReactUnitSignal:(ReactUnitSignal *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ReactUnitSignal_$1 *typedCopy = (ReactUnitSignal_$1 *) copy;
  typedCopy.this$0 = this$0_;
}

@end