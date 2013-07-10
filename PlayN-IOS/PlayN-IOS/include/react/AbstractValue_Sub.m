//
//  AbstractValue_Sub.m
//  PlayN-IOS
//
//  Created by Thomas on 7/10/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "AbstractValue_Sub.h"
#import "react/Function.h"

@implementation ReactAbstractValue_$1

@synthesize val$func = val$func_;
@synthesize val$outer = val$outer_;

- (id)get {
    return [((id<ReactFunction>) NIL_CHK(val$func_)) applyWithId:[((ReactAbstractValue *) NIL_CHK(val$outer_)) get]];
}

- (id<ReactConnection>)connect {
    return [((ReactAbstractValue *) NIL_CHK(val$outer_)) connectWithReactValueView_Listener:[[ReactAbstractValue_$1_$1 alloc] initWithReactAbstractValue_$1:self]];
}

- (id)initWithReactFunction:(id<ReactFunction>)capture$0
withReactAbstractValue:(ReactAbstractValue *)capture$1 {
    if ((self = [super init])) {
        val$func_ = capture$0;
        val$outer_ = capture$1;
    }
    return self;
}

- (void)copyAllPropertiesTo:(id)copy {
    [super copyAllPropertiesTo:copy];
    ReactAbstractValue_$1 *typedCopy = (ReactAbstractValue_$1 *) copy;
    typedCopy.val$func = val$func_;
    typedCopy.val$outer = val$outer_;
}

@end

