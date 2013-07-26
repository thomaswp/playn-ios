//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/layers/LayerWrapper.java
//
//  Created by Thomas on 7/26/13.
//

#include "playn/core/Connection.h"
#include "playn/core/GroupLayer.h"
#include "playn/core/Layer.h"
#include "playn/core/Pointer.h"
#include "tripleplay/util/Colors.h"
#include "tuxkids/tuxblocks/core/layers/LayerWrapper.h"

@implementation TuxkidsTuxblocksCoreLayersLayerWrapper

@synthesize layer = layer_;

- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer {
  if ((self = [super init])) {
    self.layer = layer;
  }
  return self;
}

- (id<PlaynCoreLayer>)layerAddable {
  return layer_;
}

- (void)setDepthWithFloat:(float)depth {
  (void) [((id<PlaynCoreLayer>) nil_chk(layer_)) setDepthWithFloat:depth];
}

- (void)setTranslationWithFloat:(float)x
                      withFloat:(float)y {
  (void) [((id<PlaynCoreLayer>) nil_chk(layer_)) setTranslationWithFloat:x withFloat:y];
}

- (void)setVisibleWithBOOL:(BOOL)visible {
  (void) [((id<PlaynCoreLayer>) nil_chk(layer_)) setVisibleWithBOOL:visible];
}

- (void)setTintWithInt:(int)tint {
  (void) [((id<PlaynCoreLayer>) nil_chk(layer_)) setTintWithInt:tint];
}

- (void)setTintWithInt:(int)baseColor
               withInt:(int)tintColor
             withFloat:(float)perc {
  [self setTintWithInt:[TripleplayUtilColors blendWithInt:baseColor withInt:tintColor withFloat:perc]];
}

- (void)addListenerWithPlaynCorePointer_Listener:(id<PlaynCorePointer_Listener>)pointerListener {
  (void) [((id<PlaynCoreLayer>) nil_chk(layer_)) addListenerWithPlaynCorePointer_Listener:pointerListener];
}

- (float)tx {
  return [((id<PlaynCoreLayer>) nil_chk(layer_)) tx];
}

- (float)ty {
  return [((id<PlaynCoreLayer>) nil_chk(layer_)) ty];
}

- (void)setInteractiveWithBOOL:(BOOL)interactive {
  [self setInteractiveWithBOOL:interactive];
}

- (id<PlaynCoreGroupLayer>)parent {
  return [((id<PlaynCoreLayer>) nil_chk(layer_)) parent];
}

- (float)depth {
  return [((id<PlaynCoreLayer>) nil_chk(layer_)) depth];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreLayersLayerWrapper *typedCopy = (TuxkidsTuxblocksCoreLayersLayerWrapper *) copy;
  typedCopy.layer = layer_;
}

@end
