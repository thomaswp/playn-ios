//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: react/UnitSlot.java
//
//  Created by Thomas on 7/10/13.
//

#import "JreEmulation.h"
#import "java/lang/Runnable.h"
#import "react/Slot.h"

@interface ReactUnitSlot : ReactSlot < JavaLangRunnable > {
}

+ (ReactUnitSlot *)toSlotWithJavaLangRunnable:(id<JavaLangRunnable>)runnable;
- (void)onEmit;
- (ReactUnitSlot *)andThenWithReactUnitSlot:(ReactUnitSlot *)after;
- (void)onEmitWithId:(id)event;
- (void)run;
- (id)init;
@end

@interface ReactUnitSlot_$1 : ReactUnitSlot {
 @public
  id<JavaLangRunnable> val$runnable_;
}

@property (nonatomic, strong) id<JavaLangRunnable> val$runnable;

- (void)onEmit;
- (id)initWithJavaLangRunnable:(id<JavaLangRunnable>)capture$0;
@end

@interface ReactUnitSlot_$2 : ReactUnitSlot {
 @public
  ReactUnitSlot *val$before_;
  ReactUnitSlot *val$after_;
}

@property (nonatomic, strong) ReactUnitSlot *val$before;
@property (nonatomic, strong) ReactUnitSlot *val$after;

- (void)onEmit;
- (id)initWithReactUnitSlot:(ReactUnitSlot *)capture$0
          withReactUnitSlot:(ReactUnitSlot *)capture$1;
@end
