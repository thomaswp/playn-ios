//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/Selector.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !TripleplayUiSelector_RESTRICT
#define TripleplayUiSelector_INCLUDE_ALL 1
#endif
#undef TripleplayUiSelector_RESTRICT

#if !defined (_TripleplayUiSelector_) && (TripleplayUiSelector_INCLUDE_ALL || TripleplayUiSelector_INCLUDE)
#define _TripleplayUiSelector_

@class ReactSlot;
@class ReactValue;
@class TripleplayUiElement;
@class TripleplayUiElements;

@interface TripleplayUiSelector : NSObject {
 @public
  ReactValue *selected_;
  ReactSlot *_addSlot_;
  ReactSlot *_removeSlot_;
  ReactSlot *_clickSlot_;
}

@property (nonatomic, strong) ReactValue *selected;
@property (nonatomic, strong) ReactSlot *_addSlot;
@property (nonatomic, strong) ReactSlot *_removeSlot;
@property (nonatomic, strong) ReactSlot *_clickSlot;

- (id)init;
- (id)initWithTripleplayUiElements:(TripleplayUiElements *)elements
           withTripleplayUiElement:(TripleplayUiElement *)initialSelection;
- (TripleplayUiSelector *)addWithTripleplayUiElements:(TripleplayUiElements *)elements;
- (TripleplayUiSelector *)removeWithTripleplayUiElements:(TripleplayUiElements *)elements;
- (TripleplayUiSelector *)addWithTripleplayUiElement:(TripleplayUiElement *)elem
                        withTripleplayUiElementArray:(IOSObjectArray *)more;
- (TripleplayUiSelector *)removeWithTripleplayUiElement:(TripleplayUiElement *)elem
                           withTripleplayUiElementArray:(IOSObjectArray *)more;
- (ReactValue *)getWithTripleplayUiElement:(TripleplayUiElement *)elem;
@end
#endif

#if !defined (_TripleplayUiSelector_$1_) && (TripleplayUiSelector_INCLUDE_ALL || TripleplayUiSelector_$1_INCLUDE)
#define _TripleplayUiSelector_$1_

@class TripleplayUiElement;
@class TripleplayUiSelector;

#define ReactValueView_RESTRICT 1
#define ReactValueView_Listener_INCLUDE 1
#include "react/ValueView.h"

@interface TripleplayUiSelector_$1 : ReactValueView_Listener {
 @public
  TripleplayUiSelector *this$0_;
}

@property (nonatomic, strong) TripleplayUiSelector *this$0;

- (void)onChangeWithId:(TripleplayUiElement *)selected
                withId:(TripleplayUiElement *)deselected;
- (id)initWithTripleplayUiSelector:(TripleplayUiSelector *)outer$;
@end
#endif

#if !defined (_TripleplayUiSelector_$2_) && (TripleplayUiSelector_INCLUDE_ALL || TripleplayUiSelector_$2_INCLUDE)
#define _TripleplayUiSelector_$2_

@class TripleplayUiElement;
@class TripleplayUiSelector;

#define ReactSlot_RESTRICT 1
#define ReactSlot_INCLUDE 1
#include "react/Slot.h"

@interface TripleplayUiSelector_$2 : ReactSlot {
 @public
  TripleplayUiSelector *this$0_;
}

@property (nonatomic, strong) TripleplayUiSelector *this$0;

- (void)onEmitWithId:(TripleplayUiElement *)child;
- (id)initWithTripleplayUiSelector:(TripleplayUiSelector *)outer$;
@end
#endif

#if !defined (_TripleplayUiSelector_$3_) && (TripleplayUiSelector_INCLUDE_ALL || TripleplayUiSelector_$3_INCLUDE)
#define _TripleplayUiSelector_$3_

@class TripleplayUiElement;
@class TripleplayUiSelector;

#define ReactSlot_RESTRICT 1
#define ReactSlot_INCLUDE 1
#include "react/Slot.h"

@interface TripleplayUiSelector_$3 : ReactSlot {
 @public
  TripleplayUiSelector *this$0_;
}

@property (nonatomic, strong) TripleplayUiSelector *this$0;

- (void)onEmitWithId:(TripleplayUiElement *)removed;
- (id)initWithTripleplayUiSelector:(TripleplayUiSelector *)outer$;
@end
#endif

#if !defined (_TripleplayUiSelector_$4_) && (TripleplayUiSelector_INCLUDE_ALL || TripleplayUiSelector_$4_INCLUDE)
#define _TripleplayUiSelector_$4_

@class TripleplayUiElement;
@class TripleplayUiSelector;

#define ReactSlot_RESTRICT 1
#define ReactSlot_INCLUDE 1
#include "react/Slot.h"

@interface TripleplayUiSelector_$4 : ReactSlot {
 @public
  TripleplayUiSelector *this$0_;
}

@property (nonatomic, strong) TripleplayUiSelector *this$0;

- (void)onEmitWithId:(TripleplayUiElement *)clicked;
- (id)initWithTripleplayUiSelector:(TripleplayUiSelector *)outer$;
@end
#endif
