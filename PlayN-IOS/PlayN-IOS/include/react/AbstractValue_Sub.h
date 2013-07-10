//
//  AbstractValue_Sub.h
//  PlayN-IOS
//
//  Created by Thomas on 7/10/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "react/MappedValue.h"

@interface ReactAbstractValue_$1 : ReactMappedValue {
@public
    id<ReactFunction> val$func_;
    ReactAbstractValue *val$outer_;
}

@property (nonatomic, strong) id<ReactFunction> val$func;
@property (nonatomic, strong) ReactAbstractValue *val$outer;

- (id)get;
- (id<ReactConnection>)connect;
- (id)initWithReactFunction:(id<ReactFunction>)capture$0
withReactAbstractValue:(ReactAbstractValue *)capture$1;
@end
