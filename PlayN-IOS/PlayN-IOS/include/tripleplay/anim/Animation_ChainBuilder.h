//
//  Animation_ChainBuilder.h
//  PlayN-IOS
//
//  Created by Thomas on 7/10/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "tripleplay/anim/AnimBuilder.h"

@interface TripleplayAnimAnimation_ChainBuilder : TripleplayAnimAnimBuilder {
@public
    TripleplayAnimAnimation *this$0_;
    BOOL _added_;
}

@property (nonatomic, strong) TripleplayAnimAnimation *this$0;
@property (nonatomic, assign) BOOL _added;

- (id)addWithId:(TripleplayAnimAnimation *)anim;
- (TripleplayAnimAnimation *)next;
- (id)initWithTripleplayAnimAnimation:(TripleplayAnimAnimation *)outer$;
@end

@interface TripleplayAnimAnimation_Repeat_$1 : TripleplayAnimAnimation_ChainBuilder {
@public
    TripleplayAnimAnimation_Repeat *this$1_;
}

@property (nonatomic, strong) TripleplayAnimAnimation_Repeat *this$1;

- (TripleplayAnimAnimation *)next;
- (id)initWithTripleplayAnimAnimation_Repeat:(TripleplayAnimAnimation_Repeat *)outer$;
@end

@interface TripleplayAnimAnimation_$1 : TripleplayAnimAnimation_ChainBuilder {
@public
    TripleplayAnimAnimation *this$1_;
}

@property (nonatomic, strong) TripleplayAnimAnimation *this$1;

- (TripleplayAnimAnimation *)next;
- (id)initWithTripleplayAnimAnimation:(TripleplayAnimAnimation *)outer$;
@end
