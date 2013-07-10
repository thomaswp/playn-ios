//
//  GLProgram.h
//  tuxblocks
//
//  Created by Thomas on 7/4/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "playn/core/gl/GLProgram.h"

@class IOSGLContext;

@interface IOSGLProgram : NSObject<PlaynCoreGlGLProgram> {
    int program, vertexShader, fragmentShader;
}

- (id) initWithGLContext:(IOSGLContext*)ctx withString:(NSString*)vertexSource withString:(NSString*)fragmentSource;

@end
