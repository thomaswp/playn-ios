//
//  GLContext.m
//  tuxblocks
//
//  Created by Thomas on 7/3/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <GLKit/GLKit.h>
#import "IOSGLContext.h"
#import "IOSGLProgram.h"
#import "IOSGLBuffer.h"
#import "playn/core/InternalTransform.h"
#import "playn/core/StockInternalTransform.h"
#import "playn/core/Platform.h"
#import "playn/core/Log.h"
#import "playn/core/Tint.h"
#import "playn/core/gl/GroupLayerGL.h"
#import "playn/core/gl/GLBuffer.h"
#import "playn/core/gl/IndexedTrisShader.h"
#import "playn/core/gl/Scale.h"
#import "playn/core/gl/GLProgram.h"
#import "playn/core/gl/GLBuffer.h"
#import "pythagoras/i/Rectangle.h"
#import "pythagoras/f/FloatMath.h"

@implementation IOSGLContext

BOOL checkErrors = YES;

- (id) initWithPlaynCorePlatform:(id<PlaynCorePlatform>)platform
                       withFloat:(float)scaleFactor withInt:(int)screenWidth withInt:(int)screenHeight {
    if (self = [super initWithPlaynCorePlatform: platform
                                      withFloat: scaleFactor]) {
        minFilter = GL_LINEAR;
        magFilter = GL_LINEAR;
        defaultFramebuffer = -1;
        rootTransform = [[PlaynCoreStockInternalTransform alloc] init];
        [rootTransform uniformScaleWithFloat:scaleFactor];
        [self setSizeWithInt:screenWidth withInt:screenHeight];
    }
    return self;
}

- (void) viewDidInitWithInt:(int)defaultFramebuffer_ {
    defaultFramebuffer = defaultFramebuffer_;
    glDisable(GL_CULL_FACE);
    glEnable(GL_BLEND);
    glBlendFunc(GL_ONE, GL_ONE_MINUS_SRC_ALPHA);
    glClearColor(0, 0, 0, 1);
    quadShader = [self createQuadShader];
    trisShader = [[PlaynCoreGlIndexedTrisShader alloc] initWithPlaynCoreGlGLContext:self];
    [self checkGLErrorWithNSString:@"error"];
}

- (BOOL) setOrientation:(UIDeviceOrientation) orientation {
    orient = orientation;
    [rootTransform setTransformWithFloat:scale__.factor withFloat:0 withFloat:0 withFloat:scale__.factor withFloat:0 withFloat:0];
    switch (orientation) {
        default:
        case UIDeviceOrientationPortrait:
            return NO;
        case UIDeviceOrientationPortraitUpsideDown:
            [rootTransform translateWithFloat:viewWidth_ withFloat:viewHeight_];
            [rootTransform scale__WithFloat:-1 withFloat:-1];
            return NO;
        case UIDeviceOrientationLandscapeLeft:
            [rootTransform rotateWithFloat:PythagorasFMathUtil_HALF_PI];
            [rootTransform translateWithFloat:0 withFloat:-viewWidth_];
            return YES;
        case UIDeviceOrientationLandscapeRight:
            [rootTransform rotateWithFloat:-PythagorasFMathUtil_HALF_PI];
            [rootTransform translateWithFloat:-viewHeight_ withFloat:0];
            return YES;
    }
}

- (void) setTextureFilterWithPlaynCoreGlGLContext_FilterEnum:(PlaynCoreGlGLContext_FilterEnum *)minFilter_ withPlaynCoreGlGLContext_FilterEnum:(PlaynCoreGlGLContext_FilterEnum *)magFilter_ {
    minFilter = [IOSGLContext toGLWithFilter:minFilter_];
    magFilter = [IOSGLContext toGLWithFilter:magFilter_];
    
}

+ (GLenum) toGLWithFilter:(PlaynCoreGlGLContext_FilterEnum*) filter {
    if (filter.ordinal == PlaynCoreGlGLContext_Filter_NEAREST) return GL_NEAREST;
    return GL_LINEAR;
}

- (int) getIntegerWithInt:(int)param {
    GLint params;
    glGetIntegerv((GLenum) param, &params);
    [self checkGLErrorWithNSString:@"error"];
    return (int) params;
}

- (float) getFloatWithInt:(int)param {
    GLfloat params;
    glGetFloatv((GLenum) param, &params);
    [self checkGLErrorWithNSString:@"error"];
    return (float) params;
}

- (BOOL) getBooleanWithInt:(int)param {
    GLboolean params;
    glGetBooleanv((GLenum) param, &params);
    [self checkGLErrorWithNSString:@"error"];
    return (BOOL) params;
}

- (id<PlaynCoreGlGLProgram>) createProgramWithNSString:(NSString *)vertShader withNSString:(NSString *)fragShader {
    return [[IOSGLProgram alloc] initWithGLContext:self withString:vertShader withString:fragShader];
}

- (id<PlaynCoreGlGLBuffer_Float>) createFloatBufferWithInt:(int)capacity {
    return [[IOSGLBuffer_FloatImpl alloc] initWithCapacity:capacity];
}

- (id<PlaynCoreGlGLBuffer_Short>) createShortBufferWithInt:(int)capacity {
    return [[IOSGLBuffer_ShortImpl alloc] initWithCapacity:capacity];
}

- (void) deleteFramebufferWithInt:(int)fbuf {
    const GLuint frameBuffers = (GLuint) fbuf;
    glDeleteFramebuffers(1, &frameBuffers);
    [self checkGLErrorWithNSString:@"error"];
}

- (int) createTextureWithBOOL:(BOOL)repeatX withBOOL:(BOOL)repeatY withBOOL:(BOOL)mipmaps {
    GLuint tex;
    glGenTextures(1, &tex);
    [self checkGLErrorWithNSString:@"error"];
    if (tex == 0) {
        NSLog(@"Attempted to generate texture before GL was initialized");
        return 0;
    }

    GLenum tt = GL_TEXTURE_2D;
    glBindTexture(tt, tex);
    glTexParameterf(tt, GL_TEXTURE_MIN_FILTER, [IOSGLContext mipmapifyWithInt:minFilter withBOOL:mipmaps]);
    glTexParameterf(tt, GL_TEXTURE_MAG_FILTER, magFilter);
    glTexParameterf(tt, GL_TEXTURE_WRAP_S, repeatX ? GL_REPEAT : GL_CLAMP_TO_EDGE);
    glTexParameterf(tt, GL_TEXTURE_WRAP_T, repeatY ? GL_REPEAT : GL_CLAMP_TO_EDGE);
    
    return tex;
}

+ (GLenum) mipmapifyWithInt:(GLenum)filter withBOOL:(BOOL)mipmaps {
    if (!mipmaps) return filter;
    
    if (filter == GL_NEAREST) return GL_NEAREST_MIPMAP_NEAREST;
    if (filter == GL_LINEAR) return GL_LINEAR_MIPMAP_LINEAR;
    return filter;
}

- (int) createTextureWithInt:(int)width withInt:(int)height withBOOL:(BOOL)repeatX withBOOL:(BOOL)repeatY withBOOL:(BOOL)mipmaps {
    
    GLuint tex = [self createTextureWithBOOL:repeatX withBOOL:repeatY withBOOL:mipmaps];
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, width, height, 0, GL_RGBA, GL_UNSIGNED_BYTE, nil);
    [self checkGLErrorWithNSString:@"error"];
    return tex;
}

- (void) generateMipmapWithInt:(int)tex {
    glBindTexture(GL_TEXTURE_2D, tex);
    glGenerateMipmap(GL_TEXTURE_2D);
    [self checkGLErrorWithNSString:@"error"];
}

- (void) activeTextureWithInt:(int)glTextureN {
    glActiveTexture((GLenum) glTextureN);
    [self checkGLErrorWithNSString:@"error"];
}

- (void) bindTextureWithInt:(int)tex {
    glBindTexture(GL_TEXTURE_2D, tex);
    [self checkGLErrorWithNSString:@"error"];
}

- (void) destroyTextureWithInt:(int)tex {
    GLuint texture = tex;
    glDeleteTextures(1, &texture);
    [self checkGLErrorWithNSString:@"error"];
}

- (void) startClippedWithInt:(int)x withInt:(int)y withInt:(int)width withInt:(int)height {
    [self flush];
    PythagorasIRectangle* r;
    switch (orient) {
            default:
        case UIDeviceOrientationPortrait:
            r = [self pushScissorStateWithInt:x withInt:curFbufHeight_ - y - height withInt:width withInt:height];
            break;
        case UIDeviceOrientationPortraitUpsideDown:
            r = [self pushScissorStateWithInt:x - width withInt:curFbufHeight_ - y withInt:width withInt:height];
            break;
        case UIDeviceOrientationLandscapeLeft:
            r = [self pushScissorStateWithInt:x - width withInt:curFbufHeight_ - y - height withInt:width withInt:height];
            break;
        case UIDeviceOrientationLandscapeRight:
            r = [self pushScissorStateWithInt:x withInt:curFbufHeight_ - y withInt:width withInt:height];
            break;
    }
    
    glScissor(r.x, r.y, r.width, r.height);
    [self checkGLErrorWithNSString:@"GL.Scissor"];
    if ([self getScissorDepth] == 1) {
        glEnable(GL_SCISSOR_TEST);
    }
    [self checkGLErrorWithNSString:@"error"];
}

- (void) endClipped {
    [self flush];
    PythagorasIRectangle* r = [self popScissorState];
    if (r == nil) {
        glDisable(GL_SCISSOR_TEST);
    } else {
        glScissor(r.x, r.y, r.width, r.height);
        [self checkGLErrorWithNSString:@"GL.Scissor"];
    }
    [self checkGLErrorWithNSString:@"error"];
}

- (void) clearWithFloat:(float)r withFloat:(float)g withFloat:(float)b withFloat:(float)a {
    glClearColor(r, g, b, a);
    glClear(GL_COLOR_BUFFER_BIT);
    [self checkGLErrorWithNSString:@"error"];
}

- (void) checkGLErrorWithNSString:(NSString *)op {
    if (checkErrors) {
        GLenum error;
        while ((error = glGetError()) != GL_NO_ERROR) {
            [[platform_ log] errorWithNSString:[NSString stringWithFormat:@"%@: glError %d", op, error] ];
        }
    }
}

- (id<PlaynCoreInternalTransform>) rootTransform {
    return rootTransform;
}

- (int) defaultFrameBuffer {
    return defaultFramebuffer;
}

- (int) createFramebufferImplWithInt:(int)tex {
    GLuint fbuf;
    glGenFramebuffers(1, &fbuf);
    
    if (fbuf == 0) {
        NSLog(@"Attempted to generate framebuffer before GL was initialized");
        return 0;
    }
    
    glBindFramebuffer(GL_FRAMEBUFFER, fbuf);
    glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, tex, 0);
    [self checkGLErrorWithNSString:@"error"];
    return fbuf;
}

- (void) bindFramebufferImplWithInt:(int)fbuf withInt:(int)width withInt:(int)height {
    if (fbuf != -1) {
        glBindFramebuffer(GL_FRAMEBUFFER, fbuf);
    }
    glViewport(0, 0, width, height);
    [self checkGLErrorWithNSString:@"error"];
}

- (PlaynCoreGlGLShader*) quadShader {
    return quadShader;
}

- (PlaynCoreGlGLShader*) trisShader {
    return trisShader;
}

- (void) updateTextureWithInt:(int)tex withCGImage:(CGImageRef) image {
    int width = CGImageGetWidth(image);
    int height = CGImageGetHeight(image);
    if (width == 0 || height == 0) {
        [[platform_ log] warnWithNSString:@"Ignoring texture update for empty image"];
        return;
    }
    
    char* rgba = (char*)malloc(width*height*4);
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef bctx = CGBitmapContextCreate(rgba, width, height, 8, 4 * width, colorSpace, kCGImageAlphaPremultipliedLast);
    
    CGContextClearRect(bctx, CGRectMake(0, 0, width, height));
    CGContextDrawImage(bctx, CGRectMake(0, 0, width, height), image);
    
    [self updateTextureWithInt:tex withInt:width withInt:height withData:rgba];
    
    CGContextRelease(bctx);
    CGColorSpaceRelease(colorSpace);
}

- (void) updateTextureWithInt:(int)tex withInt:(int)width withInt:(int)height withData:(char*)data {
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, width, height, 0, GL_RGBA, GL_UNSIGNED_BYTE, data);
    [self checkGLErrorWithNSString:@"error"];
}

- (void) paintWithGroupLayer:(PlaynCoreGlGroupLayerGL *)rootLayer {
    if ([rootLayer size] > 0) {
        [self checkGLErrorWithNSString:@"paint"];
        [self bindFramebuffer];
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        [rootLayer paintWithPlaynCoreInternalTransform:rootTransform withInt:[PlaynCoreTint NOOP_TINT] withPlaynCoreGlGLShader:nil];
        [self useShaderWithPlaynCoreGlGLShader:nil withBOOL:NO];
    }
}

@end
