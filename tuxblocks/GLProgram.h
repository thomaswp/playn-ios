//
//  GLProgram.h
//  tuxblocks
//
//  Created by Thomas on 7/4/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "playn/core/gl/GLProgram.h"

@class GLContext;

@interface GLProgram : NSObject<PlaynCoreGlGLProgram> {
    int program, vertexShader, fragmentShader;
}

- (id) initWithGLContext:(GLContext*)ctx withString:(NSString*)vertexSource withString:(NSString*)fragmentSource;

@end
