//
//  AbstractSignal_Sub.h
//  PlayN-IOS
//
//  Created by Thomas on 7/10/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "react/MappedSignal.h"

@interface ReactAbstractSignal_$1 : ReactMappedSignal {
@public
    ReactAbstractSignal *val$outer_;
    id<ReactFunction> val$func_;
}

@property (nonatomic, strong) ReactAbstractSignal *val$outer;
@property (nonatomic, strong) id<ReactFunction> val$func;

- (id<ReactConnection>)connect;
- (id)initWithReactAbstractSignal:(ReactAbstractSignal *)capture$0
withReactFunction:(id<ReactFunction>)capture$1;
@end
