//
//  GLBuffer.m
//  tuxblocks
//
//  Created by Thomas on 7/5/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IOSGLBuffer.h"
#import "IOSFloatArray.h"
#import "playn/core/InternalTransform.h"
#import "java/lang/Float.h"

@implementation IOSGLBuffer_FloatImpl

- (id) initWithCapacity:(int)capacity_ {
    if (self = [super init]) {
        [self expandWithInt:capacity_];
    }
    return self;
}

- (id<PlaynCoreGlGLBuffer_Float>) addWithFloat:(float)value {
    data[position++] = value;
    return self;
}

- (id<PlaynCoreGlGLBuffer_Float>) addWithPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)xform {
    return [self addWithFloat:[xform m00] withFloat:[xform m01] withFloat:[xform m10] withFloat:[xform m11] withFloat:[xform tx] withFloat:[xform ty]];
}

- (id<PlaynCoreGlGLBuffer_Float>) addWithFloat:(float)x withFloat:(float)y {
    data[position++] = x;
    data[position++] = y;
    return self;
}

- (id<PlaynCoreGlGLBuffer_Float>) addWithFloat:(float)m00 withFloat:(float)m01 withFloat:(float)m10 withFloat:(float)m11 withFloat:(float)tx withFloat:(float)ty {
    data[position++] = m00;
    data[position++] = m01;
    data[position++] = m10;
    data[position++] = m11;
    data[position++] = tx;
    data[position++] = ty;
    return self;
}

- (id<PlaynCoreGlGLBuffer_Float>) addWithFloatArray:(IOSFloatArray *)data_ withInt:(int)offset withInt:(int)length_ {
    for (int i = 0; i < length_; i++) {
        data[position++] = [data_ floatAtIndex:i + offset];
    }
    return self;
}

- (int) capacity {
    return capacity;
}

- (void) expandWithInt:(int)capacity_ {
    if (data) {
        free(data);
    }
    data = (float*) malloc(capacity_ * sizeof(float));
    capacity = capacity_;
}

- (void) skipWithInt:(int)count {
    position += count;
}

- (void) destroy {
    [super destroy];
    if (data) {
        free(data);
    }
}

- (id<PlaynCoreGlGLBuffer_Float>) addWithInt:(int)value {
    return [self addWithFloat:[JavaLangFloat intBitsToFloatWithInt:value]];
}

- (void*) pointer {
    return data;
}

- (int) bytesPerElement {
    return sizeof(float);
}

@end

@implementation IOSGLBuffer_ShortImpl

- (id) initWithCapacity:(int)capacity_ {
    if (self = [super init]) {
        [self expandWithInt:capacity_];
    }
    return self;
}

- (id<PlaynCoreGlGLBuffer_Short>) addWithInt:(int)value {
    data[position++] = (short) value;
    return self;
}

- (id<PlaynCoreGlGLBuffer_Short>) addWithInt:(int)x withInt:(int)y {
    data[position++] = (short) x;
    data[position++] = (short) y;
    return self;
}

- (void) drawElementsWithInt:(int)mode withInt:(int)count {
    glDrawElements(mode, count, GL_UNSIGNED_SHORT, (int *) 0);
}

- (int) capacity {
    return capacity;
}

- (void) expandWithInt:(int)capacity_ {
    if (data) {
        free(data);
    }
    data = (short*) malloc(capacity_ * sizeof(short));
    capacity = capacity_;
}

- (void) skipWithInt:(int)count {
    position += count;
}

- (void) destroy {
    [super destroy];
    if (data) free(data);
}

- (void*) pointer {
    return data;
}

- (int) bytesPerElement {
    return sizeof(short);
}

@end

@implementation IOSGLBuffer

- (int) position {
    return position;
}

- (int) byteSize {
    return position * [self bytesPerElement];
}

- (void) bindWithInt:(int)target {
    glBindBuffer(target, bufferId);
}

- (int) sendWithInt:(int)target withInt:(int)usage {
    glBufferData(target, [self byteSize], [self pointer], usage);
    int oposition = position;
    position = 0;
    return oposition;
}

- (void) destroy {
    const GLuint buffer = bufferId;
    glDeleteBuffers(1, &buffer);
}

- (id) init {
    if (self = [super init]) {
        GLuint buffers;
        glGenBuffers(1, &buffers);
        bufferId = buffers;
    }
    return self;
}

- (void) setPosition:(int)value {
    position = value;
}

- (void*) pointer {
    //Abstract method
    [self doesNotRecognizeSelector:_cmd];
    return nil;
}

- (int) bytesPerElement {
    //Abstract method
    [self doesNotRecognizeSelector:_cmd];
    return 0;
}

- (int) capacity {
    //Abstract method
    [self doesNotRecognizeSelector:_cmd];
    return 0;
}

- (void) expandWithInt:(int)capacity_ {
    //Abstract method
    [self doesNotRecognizeSelector:_cmd];
}

- (void) skipWithInt:(int)count {
    //Abstract method
    [self doesNotRecognizeSelector:_cmd];
}

@end
