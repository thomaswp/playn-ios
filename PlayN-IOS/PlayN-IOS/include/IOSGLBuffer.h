//
//  GLBuffer.h
//  tuxblocks
//
//  Created by Thomas on 7/5/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "playn/core/gl/GLBuffer.h"

@interface IOSGLBuffer : NSObject<PlaynCoreGlGLBuffer> {
    int bufferId;
    @public int position;
}

- (void*) pointer;
- (int) bytesPerElement;
- (void) setPosition:(int) value;

@end

@interface IOSGLBuffer_FloatImpl : IOSGLBuffer<PlaynCoreGlGLBuffer_Float> {
    @public float* data;
    int capacity;
}

- (id) initWithCapacity:(int)capacity;

@end

@interface IOSGLBuffer_ShortImpl : IOSGLBuffer<PlaynCoreGlGLBuffer_Short> {
    @public short* data;
    int capacity;
}

- (id) initWithCapacity:(int)capacity;

@end