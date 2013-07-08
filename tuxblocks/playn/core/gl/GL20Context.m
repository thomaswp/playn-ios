//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/gl/GL20Context.java
//
//  Created by Thomas on 7/1/13.
//

#import "GL20.h"
#import "GL20Buffer.h"
#import "GL20Program.h"
#import "GLBuffer.h"
#import "GLContext.h"
#import "GLProgram.h"
#import "GLShader.h"
#import "GroupLayerGL.h"
#import "IOSClass.h"
#import "IOSIntArray.h"
#import "Image.h"
#import "IndexedTrisShader.h"
#import "InternalTransform.h"
#import "Log.h"
#import "Platform.h"
#import "PlayN.h"
#import "Rectangle.h"
#import "Tint.h"
#import "Transform.h"
#import "java/nio/ByteBuffer.h"
#import "GL20Context.h"

@implementation PlaynCoreGlGL20Context

- (id<PlaynCoreGlGL20>)gl {
  return gl_;
}
- (void)setGl:(id<PlaynCoreGlGL20>)gl {
  JreOperatorRetainedAssign(&gl_, self, gl);
}
@synthesize gl = gl_;
@synthesize checkErrors = checkErrors_;
- (id<PlaynCoreInternalTransform>)rootXform {
  return rootXform_;
}
- (void)setRootXform:(id<PlaynCoreInternalTransform>)rootXform {
  JreOperatorRetainedAssign(&rootXform_, self, rootXform);
}
@synthesize rootXform = rootXform_;
@synthesize minFilter = minFilter_;
@synthesize magFilter = magFilter_;
- (PlaynCoreGlGLShader *)quadShader_ {
  return quadShader__;
}
- (void)setQuadShader_:(PlaynCoreGlGLShader *)quadShader_ {
  JreOperatorRetainedAssign(&quadShader__, self, quadShader_);
}
@synthesize quadShader_ = quadShader__;
- (PlaynCoreGlGLShader *)trisShader_ {
  return trisShader__;
}
- (void)setTrisShader_:(PlaynCoreGlGLShader *)trisShader_ {
  JreOperatorRetainedAssign(&trisShader__, self, trisShader_);
}
@synthesize trisShader_ = trisShader__;

- (id)initWithPlaynCorePlatform:(id<PlaynCorePlatform>)platform
            withPlaynCoreGlGL20:(id<PlaynCoreGlGL20>)gl
                      withFloat:(float)scaleFactor
                       withBOOL:(BOOL)checkErrors {
  if ((self = [super initWithPlaynCorePlatform:platform withFloat:scaleFactor])) {
    minFilter_ = PlaynCoreGlGL20_GL_LINEAR;
    magFilter_ = PlaynCoreGlGL20_GL_LINEAR;
    self.gl = gl;
    self.checkErrors = checkErrors;
    JreOperatorRetainedAssign(&rootXform_, self, [self createTransform]);
    (void) [((id<PlaynCoreInternalTransform>) NIL_CHK(rootXform_)) uniformScaleWithFloat:scaleFactor];
  }
  return self;
}

- (void)init__ OBJC_METHOD_FAMILY_NONE {
  [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glDisableWithInt:PlaynCoreGlGL20_GL_CULL_FACE];
  [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glEnableWithInt:PlaynCoreGlGL20_GL_BLEND];
  [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glBlendFuncWithInt:PlaynCoreGlGL20_GL_ONE withInt:PlaynCoreGlGL20_GL_ONE_MINUS_SRC_ALPHA];
  [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glClearColorWithFloat:0 withFloat:0 withFloat:0 withFloat:1];
  if (quadShader__ != nil) {
    [quadShader__ clearProgram];
  }
  if (trisShader__ != nil) {
    [trisShader__ clearProgram];
  }
  JreOperatorRetainedAssign(&quadShader__, self, [self createQuadShader]);
  JreOperatorRetainedAssign(&trisShader__, self, [[[PlaynCoreGlIndexedTrisShader alloc] initWithPlaynCoreGlGLContext:self] autorelease]);
  [self checkGLErrorWithNSString:@"initGL"];
}

- (void)paintWithPlaynCoreGlGroupLayerGL:(PlaynCoreGlGroupLayerGL *)rootLayer {
  if ([((PlaynCoreGlGroupLayerGL *) NIL_CHK(rootLayer)) size] > 0) {
    [self checkGLErrorWithNSString:@"paint"];
    [self bindFramebuffer];
    [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glClearWithInt:PlaynCoreGlGL20_GL_COLOR_BUFFER_BIT | PlaynCoreGlGL20_GL_DEPTH_BUFFER_BIT];
    [((PlaynCoreGlGroupLayerGL *) NIL_CHK(rootLayer)) paintWithPlaynCoreInternalTransform:rootXform_ withInt:PlaynCoreTint_NOOP_TINT withPlaynCoreGlGLShader:nil];
    [self useShaderWithPlaynCoreGlGLShader:nil withBOOL:NO];
  }
  if (PlaynCoreGlGLContext_STATS_ENABLED) ((PlaynCoreGlGLContext_Stats *) NIL_CHK(stats__)).frames++;
}

- (id<PlaynCoreInternalTransform>)rootTransform {
  return rootXform_;
}

- (void)setTextureFilterWithPlaynCoreGlGLContext_FilterEnum:(PlaynCoreGlGLContext_FilterEnum *)minFilter
                        withPlaynCoreGlGLContext_FilterEnum:(PlaynCoreGlGLContext_FilterEnum *)magFilter {
  self.minFilter = [PlaynCoreGlGL20Context toGLWithPlaynCoreGlGLContext_FilterEnum:minFilter];
  self.magFilter = [PlaynCoreGlGL20Context toGLWithPlaynCoreGlGLContext_FilterEnum:magFilter];
}

- (int)getIntegerWithInt:(int)param {
  return [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glGetIntegerWithInt:param];
}

- (float)getFloatWithInt:(int)param {
  return [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glGetFloatWithInt:param];
}

- (BOOL)getBooleanWithInt:(int)param {
  return [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glGetBooleanWithInt:param];
}

- (void)texImage2DWithPlaynCoreImage:(id<PlaynCoreImage>)image
                             withInt:(int)target
                             withInt:(int)level
                             withInt:(int)internalformat
                             withInt:(int)format
                             withInt:(int)type {
  [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glTexImage2DWithInt:target withInt:level withInt:internalformat withInt:(int) [((id<PlaynCoreImage>) NIL_CHK(image)) width] withInt:(int) [((id<PlaynCoreImage>) NIL_CHK(image)) height] withInt:0 withInt:format withInt:type withJavaNioBuffer:[PlaynCoreGlGLContext getRgbaWithPlaynCoreImage:image]];
}

- (void)texSubImage2DWithPlaynCoreImage:(id<PlaynCoreImage>)image
                                withInt:(int)target
                                withInt:(int)level
                                withInt:(int)xOffset
                                withInt:(int)yOffset
                                withInt:(int)format
                                withInt:(int)type {
  [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glTexSubImage2DWithInt:target withInt:level withInt:xOffset withInt:yOffset withInt:(int) [((id<PlaynCoreImage>) NIL_CHK(image)) width] withInt:(int) [((id<PlaynCoreImage>) NIL_CHK(image)) height] withInt:format withInt:type withJavaNioBuffer:[PlaynCoreGlGLContext getRgbaWithPlaynCoreImage:image]];
}

- (id<PlaynCoreGlGLProgram>)createProgramWithNSString:(NSString *)vertShader
                                         withNSString:(NSString *)fragShader {
  if (PlaynCoreGlGLContext_STATS_ENABLED) ((PlaynCoreGlGLContext_Stats *) NIL_CHK(stats__)).shaderCreates++;
  return [[[PlaynCoreGlGL20Program alloc] initWithPlaynCoreGlGLContext:self withPlaynCoreGlGL20:gl_ withNSString:vertShader withNSString:fragShader] autorelease];
}

- (id<PlaynCoreGlGLBuffer_Float>)createFloatBufferWithInt:(int)capacity {
  return [[[PlaynCoreGlGL20Buffer_FloatImpl alloc] initWithPlaynCoreGlGL20:gl_ withInt:capacity] autorelease];
}

- (id<PlaynCoreGlGLBuffer_Short>)createShortBufferWithInt:(int)capacity {
  return [[[PlaynCoreGlGL20Buffer_ShortImpl alloc] initWithPlaynCoreGlGL20:gl_ withInt:capacity] autorelease];
}

- (void)deleteFramebufferWithInt:(int)fbuf {
  [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glDeleteFramebuffersWithInt:1 withJavaLangIntegerArray:[IOSIntArray arrayWithInts:(int[]){ fbuf } count:1] withInt:0];
}

- (int)createTextureWithBOOL:(BOOL)repeatX
                    withBOOL:(BOOL)repeatY
                    withBOOL:(BOOL)mipmaps {
  IOSIntArray *tex = [[[IOSIntArray alloc] initWithLength:1] autorelease];
  [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glGenTexturesWithInt:1 withJavaLangIntegerArray:tex withInt:0];
  [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glBindTextureWithInt:PlaynCoreGlGL20_GL_TEXTURE_2D withInt:[((IOSIntArray *) NIL_CHK(tex)) intAtIndex:0]];
  [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glTexParameteriWithInt:PlaynCoreGlGL20_GL_TEXTURE_2D withInt:PlaynCoreGlGL20_GL_TEXTURE_MAG_FILTER withInt:magFilter_];
  [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glTexParameteriWithInt:PlaynCoreGlGL20_GL_TEXTURE_2D withInt:PlaynCoreGlGL20_GL_TEXTURE_MIN_FILTER withInt:[PlaynCoreGlGL20Context mipmapifyWithInt:minFilter_ withBOOL:mipmaps]];
  [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glTexParameteriWithInt:PlaynCoreGlGL20_GL_TEXTURE_2D withInt:PlaynCoreGlGL20_GL_TEXTURE_WRAP_S withInt:repeatX ? PlaynCoreGlGL20_GL_REPEAT : PlaynCoreGlGL20_GL_CLAMP_TO_EDGE];
  [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glTexParameteriWithInt:PlaynCoreGlGL20_GL_TEXTURE_2D withInt:PlaynCoreGlGL20_GL_TEXTURE_WRAP_T withInt:repeatY ? PlaynCoreGlGL20_GL_REPEAT : PlaynCoreGlGL20_GL_CLAMP_TO_EDGE];
  if (PlaynCoreGlGLContext_STATS_ENABLED) ((PlaynCoreGlGLContext_Stats *) NIL_CHK(stats__)).texCreates++;
  return [((IOSIntArray *) NIL_CHK(tex)) intAtIndex:0];
}

- (int)createTextureWithInt:(int)width
                    withInt:(int)height
                   withBOOL:(BOOL)repeatX
                   withBOOL:(BOOL)repeatY
                   withBOOL:(BOOL)mm {
  int tex = [self createTextureWithBOOL:repeatX withBOOL:repeatY withBOOL:mm];
  [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glTexImage2DWithInt:PlaynCoreGlGL20_GL_TEXTURE_2D withInt:0 withInt:PlaynCoreGlGL20_GL_RGBA withInt:width withInt:height withInt:0 withInt:PlaynCoreGlGL20_GL_RGBA withInt:PlaynCoreGlGL20_GL_UNSIGNED_BYTE withJavaNioBuffer:(JavaNioByteBuffer *) nil];
  return tex;
}

- (void)generateMipmapWithInt:(int)tex {
  [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glBindTextureWithInt:PlaynCoreGlGL20_GL_TEXTURE_2D withInt:tex];
  [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glGenerateMipmapWithInt:PlaynCoreGlGL20_GL_TEXTURE_2D];
}

- (void)activeTextureWithInt:(int)glTextureN {
  [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glActiveTextureWithInt:glTextureN];
}

- (void)bindTextureWithInt:(int)tex {
  [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glBindTextureWithInt:PlaynCoreGlGL20_GL_TEXTURE_2D withInt:tex];
  if (PlaynCoreGlGLContext_STATS_ENABLED) ((PlaynCoreGlGLContext_Stats *) NIL_CHK(stats__)).texBinds++;
}

- (void)destroyTextureWithInt:(int)tex {
  [self flush];
  [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glDeleteTexturesWithInt:1 withJavaLangIntegerArray:[IOSIntArray arrayWithInts:(int[]){ tex } count:1] withInt:0];
}

- (void)startClippedWithInt:(int)x
                    withInt:(int)y
                    withInt:(int)width
                    withInt:(int)height {
  [self flush];
  PythagorasIRectangle *r = [self pushScissorStateWithInt:x withInt:curFbufHeight_ - y - height withInt:width withInt:height];
    
//  [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glScissorWithInt:((PythagorasIRectangle *) NIL_CHK(r)).x_ withInt:((PythagorasIRectangle *) NIL_CHK(r)).y_ withInt:((PythagorasIRectangle *) NIL_CHK(r)).width_ withInt:((PythagorasIRectangle *) NIL_CHK(r)).height_];
  if ([self getScissorDepth] == 1) [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glEnableWithInt:PlaynCoreGlGL20_GL_SCISSOR_TEST];
}

- (void)endClipped {
  [self flush];
  PythagorasIRectangle *r = [self popScissorState];
//  if (r == nil) [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glDisableWithInt:PlaynCoreGlGL20_GL_SCISSOR_TEST];
//  else [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glScissorWithInt:r.x_ withInt:r.y_ withInt:r.width_ withInt:r.height_];
}

- (void)clearWithFloat:(float)r
             withFloat:(float)g
             withFloat:(float)b
             withFloat:(float)a {
  [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glClearColorWithFloat:r withFloat:g withFloat:b withFloat:a];
  [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glClearWithInt:PlaynCoreGlGL20_GL_COLOR_BUFFER_BIT];
}

- (void)checkGLErrorWithNSString:(NSString *)op {
  if (checkErrors_) {
    int error;
    while ((error = [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glGetError]) != PlaynCoreGlGL20_GL_NO_ERROR) {
      [((id<PlaynCoreLog>) [PlaynCorePlayN log]) errorWithNSString:[NSString stringWithFormat:@"%@ -- %@: glError %d", [[self getClass] getName], op, error]];
    }
  }
}

- (int)defaultFrameBuffer {
  return 0;
}

- (int)createFramebufferImplWithInt:(int)tex {
  IOSIntArray *fbuf = [[[IOSIntArray alloc] initWithLength:1] autorelease];
  [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glGenFramebuffersWithInt:1 withJavaLangIntegerArray:fbuf withInt:0];
  [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glBindFramebufferWithInt:PlaynCoreGlGL20_GL_FRAMEBUFFER withInt:[((IOSIntArray *) NIL_CHK(fbuf)) intAtIndex:0]];
  [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glFramebufferTexture2DWithInt:PlaynCoreGlGL20_GL_FRAMEBUFFER withInt:PlaynCoreGlGL20_GL_COLOR_ATTACHMENT0 withInt:PlaynCoreGlGL20_GL_TEXTURE_2D withInt:tex withInt:0];
  if (PlaynCoreGlGLContext_STATS_ENABLED) ((PlaynCoreGlGLContext_Stats *) NIL_CHK(stats__)).frameBufferCreates++;
  return [((IOSIntArray *) NIL_CHK(fbuf)) intAtIndex:0];
}

- (void)bindFramebufferImplWithInt:(int)fbuf
                           withInt:(int)width
                           withInt:(int)height {
  [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glBindFramebufferWithInt:PlaynCoreGlGL20_GL_FRAMEBUFFER withInt:fbuf];
  [((id<PlaynCoreGlGL20>) NIL_CHK(gl_)) glViewportWithInt:0 withInt:0 withInt:width withInt:height];
  if (PlaynCoreGlGLContext_STATS_ENABLED) ((PlaynCoreGlGLContext_Stats *) NIL_CHK(stats__)).frameBufferBinds++;
}

- (PlaynCoreGlGLShader *)quadShader {
  return quadShader__;
}

- (PlaynCoreGlGLShader *)trisShader {
  return trisShader__;
}

+ (int)toGLWithPlaynCoreGlGLContext_FilterEnum:(PlaynCoreGlGLContext_FilterEnum *)filter {
  switch ([filter ordinal]) {
    default:
    case PlaynCoreGlGLContext_Filter_LINEAR:
    return PlaynCoreGlGL20_GL_LINEAR;
    case PlaynCoreGlGLContext_Filter_NEAREST:
    return PlaynCoreGlGL20_GL_NEAREST;
  }
}

+ (int)mipmapifyWithInt:(int)filter
               withBOOL:(BOOL)mipmaps {
  if (!mipmaps) return filter;
  switch (filter) {
    case PlaynCoreGlGL20_GL_NEAREST:
    return PlaynCoreGlGL20_GL_NEAREST_MIPMAP_NEAREST;
    case PlaynCoreGlGL20_GL_LINEAR:
    return PlaynCoreGlGL20_GL_LINEAR_MIPMAP_NEAREST;
    default:
    return filter;
  }
}

- (void)dealloc {
  JreOperatorRetainedAssign(&trisShader__, self, nil);
  JreOperatorRetainedAssign(&quadShader__, self, nil);
  JreOperatorRetainedAssign(&rootXform_, self, nil);
  JreOperatorRetainedAssign(&gl_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreGlGL20Context *typedCopy = (PlaynCoreGlGL20Context *) copy;
  typedCopy.gl = gl_;
  typedCopy.checkErrors = checkErrors_;
  typedCopy.rootXform = rootXform_;
  typedCopy.minFilter = minFilter_;
  typedCopy.magFilter = magFilter_;
  typedCopy.quadShader_ = quadShader__;
  typedCopy.trisShader_ = trisShader__;
}

@end