//
//  AbstractSignal_Sub.m
//  PlayN-IOS
//
//  Created by Thomas on 7/10/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "AbstractSignal_Sub.h"

@implementation ReactAbstractSignal_$1

@synthesize val$outer = val$outer_;
@synthesize val$func = val$func_;

- (id<ReactConnection>)connect {
    return [((ReactAbstractSignal *) NIL_CHK(val$outer_)) connectWithReactSlot:[[ReactAbstractSignal_$1_$1 alloc] initWithReactAbstractSignal_$1:self]];
}

- (id)initWithReactAbstractSignal:(ReactAbstractSignal *)capture$0
withReactFunction:(id<ReactFunction>)capture$1 {
    if ((self = [super init])) {
        val$outer_ = capture$0;
        val$func_ = capture$1;
    }
    return self;
}

- (void)copyAllPropertiesTo:(id)copy {
    [super copyAllPropertiesTo:copy];
    ReactAbstractSignal_$1 *typedCopy = (ReactAbstractSignal_$1 *) copy;
    typedCopy.val$outer = val$outer_;
    typedCopy.val$func = val$func_;
}

@end