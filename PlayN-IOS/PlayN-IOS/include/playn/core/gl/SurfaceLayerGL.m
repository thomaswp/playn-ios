//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/gl/SurfaceLayerGL.java
//
//  Created by Thomas on 7/25/13.
//

#include "playn/core/AbstractLayer.h"
#include "playn/core/InternalTransform.h"
#include "playn/core/Surface.h"
#include "playn/core/Tint.h"
#include "playn/core/gl/GLContext.h"
#include "playn/core/gl/GLShader.h"
#include "playn/core/gl/LayerGL.h"
#include "playn/core/gl/SurfaceGL.h"
#include "playn/core/gl/SurfaceLayerGL.h"

@implementation PlaynCoreGlSurfaceLayerGL

@synthesize surface_ = surface__;

- (id)initWithPlaynCoreGlGLContext:(PlaynCoreGlGLContext *)ctx
          withPlaynCoreGlSurfaceGL:(PlaynCoreGlSurfaceGL *)surface {
  if ((self = [super initWithPlaynCoreGlGLContext:ctx])) {
    self.surface_ = surface;
  }
  return self;
}

- (void)destroy {
  [super destroy];
  [((PlaynCoreGlSurfaceGL *) nil_chk(surface__)) destroy];
}

- (id<PlaynCoreSurface>)surface {
  return surface__;
}

- (void)paintWithPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)parentTransform
                                    withInt:(int)curTint
                    withPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)curShader {
  if (![self visible]) return;
  if (tint__ != PlaynCoreTint_NOOP_TINT) curTint = [PlaynCoreTint combineWithInt:curTint withInt:tint__];
  [((PlaynCoreGlSurfaceGL *) nil_chk(surface__)) drawWithPlaynCoreGlGLShader:(shader_ == nil) ? curShader : shader_ withPlaynCoreInternalTransform:[self localTransformWithPlaynCoreInternalTransform:parentTransform] withInt:curTint];
}

- (float)width {
  return [((PlaynCoreGlSurfaceGL *) nil_chk(surface__)) width];
}

- (float)height {
  return [((PlaynCoreGlSurfaceGL *) nil_chk(surface__)) height];
}

- (float)scaledWidth {
  return [self scaleX] * [self width];
}

- (float)scaledHeight {
  return [self scaleY] * [self height];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreGlSurfaceLayerGL *typedCopy = (PlaynCoreGlSurfaceLayerGL *) copy;
  typedCopy.surface_ = surface__;
}

@end
