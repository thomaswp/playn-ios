//
//  GLProgram.m
//  tuxblocks
//
//  Created by Thomas on 7/4/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "IOSGLProgram.h"
#import "IOSGLContext.h"
#import "IOSGLBuffer.h"
#import "playn/core/gl/GLShader.h"

@interface Uniform : NSObject<PlaynCoreGlGLShader_Uniform1f, PlaynCoreGlGLShader_Uniform2f, PlaynCoreGlGLShader_Uniform3f, PlaynCoreGlGLShader_Uniform4f, PlaynCoreGlGLShader_Uniform1i, PlaynCoreGlGLShader_Uniform2i> {
    int location;
}

- (id) initWithInt:(int)location;

@end

@implementation Uniform

- (id) initWithInt:(int)location_ {
    if (self = [super init]) {
        location = location_;
    }
    return self;
}

- (void) bindWithFloat:(float)a {
    glUniform1f(location, a);
}

- (void) bindWithFloat:(float)a withFloat:(float)b {
    glUniform2f(location, a, b);
}

- (void) bindWithFloat:(float)a withFloat:(float)b withFloat:(float)c {
    glUniform3f(location, a, b, c);
}

- (void) bindWithFloat:(float)a withFloat:(float)b withFloat:(float)c withFloat:(float)d {
    glUniform4f(location, a, b, c, d);
}

- (void) bindWithInt:(int)a {
    glUniform1i(location, a);
}

- (void) bindWithInt:(int)a withInt:(int)b {
    glUniform2i(location, a, b);
}

@end

@interface Uniform2fv : NSObject<PlaynCoreGlGLShader_Uniform2fv> {
    int location;
}

- (id) initWithInt:(int)location;

@end

@implementation Uniform2fv


- (id) initWithInt:(int)location_ {
    if (self = [super init]) {
        location = location_;
    }
    return self;
}

- (void) bindWithPlaynCoreGlGLBuffer_Float:(id<PlaynCoreGlGLBuffer_Float>)data withInt:(int)count {
    //NSLog(@"Bind 2fv");
    IOSGLBuffer_FloatImpl* idata = (IOSGLBuffer_FloatImpl*) data;
    idata.position = 0;
    glUniform2fv(location, count, idata->data);
}

@end

@interface Uniform4fv : NSObject<PlaynCoreGlGLShader_Uniform4fv> {
    int location;
}

- (id) initWithInt:(int)location;

@end

@implementation Uniform4fv


- (id) initWithInt:(int)location_ {
    if (self = [super init]) {
        location = location_;
    }
    return self;
}

- (void) bindWithPlaynCoreGlGLBuffer_Float:(id<PlaynCoreGlGLBuffer_Float>)data withInt:(int)count {
    //NSLog(@"Bind 4fv");
    IOSGLBuffer_FloatImpl* idata = (IOSGLBuffer_FloatImpl*) data;
    idata.position = 0;
    glUniform4fv(location, count, idata->data);
}

@end

@interface UniformMatrix4fv : NSObject<PlaynCoreGlGLShader_UniformMatrix4fv> {
    int location;
}

- (id) initWithInt:(int)location;

@end

@implementation UniformMatrix4fv


- (id) initWithInt:(int)location_ {
    if (self = [super init]) {
        location = location_;
    }
    return self;
}

- (void) bindWithPlaynCoreGlGLBuffer_Float:(id<PlaynCoreGlGLBuffer_Float>)data withInt:(int)count {
    //NSLog(@"Bind Matrix 4fv");
    IOSGLBuffer_FloatImpl* idata = (IOSGLBuffer_FloatImpl*) data;
    idata.position = 0;
    glUniformMatrix4fv(location, count, GL_FALSE, idata->data);
}

@end

@interface GetAttribute : NSObject<PlaynCoreGlGLShader_Attrib> {
    int location, size, type;
}

- (id) initWithInt:(int)location withInt:(int)size withInt:(int)type;

@end

@implementation GetAttribute

- (id) initWithInt:(int)location_ withInt:(int)size_  withInt:(int)type_ {
    if (self = [super init]) {
        location = location_;
        size = size_;
        type = type_;
    }
    return self;
}

- (void) bindWithInt:(int)stride withInt:(int)offset {
    //NSLog(@"Get Attribute");
    glEnableVertexAttribArray(location);
    int* ptr = (int*) offset;
    glVertexAttribPointer(location, size, type, GL_FALSE, stride, ptr);
}

@end

@implementation IOSGLProgram

- (id) initWithGLContext:(IOSGLContext *)ctx withString:(NSString *)vertexSource withString:(NSString *)fragmentSource {
    if (self = [super init]) {
        int program_ = 0, vertexShader_ = 0, fragmentShader_ = 0;
        
        @try {
            program_ = glCreateProgram();
            if (program_ == 0) {
                @throw [NSString stringWithFormat:@"Failed to create program %d", glGetError()];
            }
            
            vertexShader_ = [self compileShaderWithType:GL_VERTEX_SHADER withString:vertexSource];
            glAttachShader(program_, vertexShader_);
            [ctx checkGLErrorWithNSString:@"Attached Vertex Shader"];
            
            fragmentShader_ = [self compileShaderWithType:GL_FRAGMENT_SHADER withString:fragmentSource];
            glAttachShader(program_, fragmentShader_);
            [ctx checkGLErrorWithNSString:@"Attached Fragment Shader"];
            
            glLinkProgram(program_);
            GLint linkStatus;
            glGetProgramiv(program_, GL_LINK_STATUS, &linkStatus);
            
            if (linkStatus != GL_TRUE) {
                int length;
                glGetProgramiv(program_, GL_INFO_LOG_LENGTH, &length);
                char* status = (char *) malloc(length * sizeof(char));
                glGetProgramInfoLog(program_, length, &length, status);
                NSString* nsstatus = [NSString stringWithCString:status encoding:NSUTF8StringEncoding];
                @throw [NSString stringWithFormat:@"Failed to link program: %@", nsstatus];
            }
            
            program = program_;
            vertexShader = vertexShader_;
            fragmentShader = fragmentShader_;
            
            program_ = vertexShader_ = fragmentShader_ = 0;
            
        } @finally {
            if (program_ != 0) glDeleteProgram(program_);
            if (vertexShader_ != 0) glDeleteShader(vertexShader_);
            if (fragmentShader_ != 0) glDeleteShader(fragmentShader_);
        }
    }
    return self;
}

- (Uniform*) getUniformWithNSString:(NSString*) name {
    int loc = glGetUniformLocation(program, [name UTF8String]);
    return (loc < 0) ? nil : [[Uniform alloc] initWithInt:loc];
}

- (id<PlaynCoreGlGLShader_Uniform1f>) getUniform1fWithNSString:(NSString *)name {
    return [self getUniformWithNSString:name];
}

- (id<PlaynCoreGlGLShader_Uniform2f>) getUniform2fWithNSString:(NSString *)name {
    return [self getUniformWithNSString:name];
}

- (id<PlaynCoreGlGLShader_Uniform3f>) getUniform3fWithNSString:(NSString *)name {
    return [self getUniformWithNSString:name];
}

- (id<PlaynCoreGlGLShader_Uniform4f>) getUniform4fWithNSString:(NSString *)name {
    return [self getUniformWithNSString:name];
}

- (id<PlaynCoreGlGLShader_Uniform1i>) getUniform1iWithNSString:(NSString *)name {
    return [self getUniformWithNSString:name];
}

- (id<PlaynCoreGlGLShader_Uniform2i>) getUniform2iWithNSString:(NSString *)name {
    return [self getUniformWithNSString:name];
}

- (id<PlaynCoreGlGLShader_Uniform2fv>) getUniform2fvWithNSString:(NSString *)name {
    int loc = glGetUniformLocation(program, [name UTF8String]);
    return (loc < 0) ? nil : [[Uniform2fv alloc] initWithInt:loc];
}

- (id<PlaynCoreGlGLShader_Uniform4fv>) getUniform4fvWithNSString:(NSString *)name {
    int loc = glGetUniformLocation(program, [name UTF8String]);
    return (loc < 0) ? nil : [[Uniform4fv alloc] initWithInt:loc];
}

- (id<PlaynCoreGlGLShader_UniformMatrix4fv>) getUniformMatrix4fvWithNSString:(NSString *)name {
    int loc = glGetUniformLocation(program, [name UTF8String]);
    return (loc < 0) ? nil : [[UniformMatrix4fv alloc] initWithInt:loc];
}

- (id<PlaynCoreGlGLShader_Attrib>)getAttribWithNSString:(NSString *)name withInt:(int)size withInt:(int)type {
    int loc = glGetAttribLocation(program, [name UTF8String]);
    return (loc < 0) ? nil : [[GetAttribute alloc] initWithInt:loc withInt:size withInt:type];
}

- (void) bind {
    glUseProgram(program);
}

- (void) destroy {
    glDeleteShader(vertexShader);
    glDeleteShader(fragmentShader);
    glDeleteProgram(program);
}

- (int) compileShaderWithType:(GLenum)type withString:(NSString*)shaderSource {
    int shader = glCreateShader(type);
    if (shader == 0) {
        @throw @"Failed to create shader";
    }
    const char* source = [shaderSource UTF8String];
    glShaderSource(shader, 1, &source, nil);
    glCompileShader(shader);
    int compiled;
    glGetShaderiv(shader, GL_COMPILE_STATUS, &compiled);
    if (compiled == GL_FALSE) {
        int length;
        glGetShaderiv(shader, GL_INFO_LOG_LENGTH, &length);
        char* status = (char *) malloc(length * sizeof(char));
        glGetShaderInfoLog(shader, length, &length, status);
        glDeleteShader(shader);
        NSString* nsstatus = [NSString stringWithCString:status encoding:NSUTF8StringEncoding];
        @throw [NSString stringWithFormat:@"Failed to compile shader (%d): %@", type, nsstatus];
    }
    return shader;
}

@end

