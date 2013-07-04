//
//  GLProgram.m
//  tuxblocks
//
//  Created by Thomas on 7/4/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "GLProgram.h"

@implementation GLProgram

- (id) initWithGLContext:(GLContext *)ctx withString:(NSString *)vertexSource withString:(NSString *)fragmentSource {
    if (self = [super init]) {
        @try {
            program = glCreateProgram();
            if (program == 0) {
                //FAIL
                NSLog(@"Failed to create program %d", glGetError());
            }
            
            
        } @finally {
            
        }
    }
    return self;
}

@end
