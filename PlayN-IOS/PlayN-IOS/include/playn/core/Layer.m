//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/Layer.java
//
//  Created by Thomas on 7/10/13.
//

#import "IOSClass.h"
#import "java/lang/IllegalArgumentException.h"
#import "playn/core/Connection.h"
#import "playn/core/Events.h"
#import "playn/core/GroupLayer.h"
#import "playn/core/Layer.h"
#import "playn/core/Mouse.h"
#import "playn/core/Pointer.h"
#import "playn/core/Touch.h"
#import "playn/core/gl/GLShader.h"
#import "pythagoras/f/IPoint.h"
#import "pythagoras/f/Point.h"
#import "pythagoras/f/Transform.h"

@implementation PlaynCoreLayer_Util

+ (PythagorasFPoint *)layerToScreenWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer
                                withPythagorasFIPoint:(id<PythagorasFIPoint>)point
                                 withPythagorasFPoint:(PythagorasFPoint *)into {
  return [PlaynCoreLayer_Util layerToParentWithPlaynCoreLayer:layer withPlaynCoreLayer:nil withPythagorasFIPoint:point withPythagorasFPoint:into];
}

+ (PythagorasFPoint *)layerToScreenWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer
                                            withFloat:(float)x
                                            withFloat:(float)y {
  PythagorasFPoint *into = [[PythagorasFPoint alloc] initWithFloat:x withFloat:y];
  return [PlaynCoreLayer_Util layerToScreenWithPlaynCoreLayer:layer withPythagorasFIPoint:into withPythagorasFPoint:into];
}

+ (PythagorasFPoint *)layerToParentWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer
                                   withPlaynCoreLayer:(id<PlaynCoreLayer>)parent
                                withPythagorasFIPoint:(id<PythagorasFIPoint>)point
                                 withPythagorasFPoint:(PythagorasFPoint *)into {
  (void) [((PythagorasFPoint *) NIL_CHK(into)) setWithPythagorasFIPoint:point];
  while (layer != parent) {
    if (layer == nil) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Failed to find parent, perhaps you passed parent, layer instead of layer, parent?"];
    }
    ((PythagorasFPoint *) NIL_CHK(into)).x_ -= [((id<PlaynCoreLayer>) NIL_CHK(layer)) originX];
    ((PythagorasFPoint *) NIL_CHK(into)).y_ -= [((id<PlaynCoreLayer>) NIL_CHK(layer)) originY];
    (void) [((id<PythagorasFTransform>) [((id<PlaynCoreLayer>) NIL_CHK(layer)) transform]) transformWithPythagorasFIPoint:into withPythagorasFPoint:into];
    layer = [((id<PlaynCoreLayer>) NIL_CHK(layer)) parent];
  }
  return into;
}

+ (PythagorasFPoint *)layerToParentWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer
                                   withPlaynCoreLayer:(id<PlaynCoreLayer>)parent
                                            withFloat:(float)x
                                            withFloat:(float)y {
  PythagorasFPoint *into = [[PythagorasFPoint alloc] initWithFloat:x withFloat:y];
  return [PlaynCoreLayer_Util layerToParentWithPlaynCoreLayer:layer withPlaynCoreLayer:parent withPythagorasFIPoint:into withPythagorasFPoint:into];
}

+ (PythagorasFPoint *)screenToLayerWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer
                                withPythagorasFIPoint:(id<PythagorasFIPoint>)point
                                 withPythagorasFPoint:(PythagorasFPoint *)into {
  id<PlaynCoreLayer> parent = [((id<PlaynCoreLayer>) NIL_CHK(layer)) parent];
  id<PythagorasFIPoint> cur = (parent == nil) ? ((id) point) : [PlaynCoreLayer_Util screenToLayerWithPlaynCoreLayer:parent withPythagorasFIPoint:point withPythagorasFPoint:into];
  return [PlaynCoreLayer_Util parentToLayerWithPlaynCoreLayer:layer withPythagorasFIPoint:cur withPythagorasFPoint:into];
}

+ (PythagorasFPoint *)screenToLayerWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer
                                            withFloat:(float)x
                                            withFloat:(float)y {
  PythagorasFPoint *into = [[PythagorasFPoint alloc] initWithFloat:x withFloat:y];
  return [PlaynCoreLayer_Util screenToLayerWithPlaynCoreLayer:layer withPythagorasFIPoint:into withPythagorasFPoint:into];
}

+ (PythagorasFPoint *)parentToLayerWithPlaynCoreLayer:(id<PlaynCoreLayer>)layer
                                withPythagorasFIPoint:(id<PythagorasFIPoint>)point
                                 withPythagorasFPoint:(PythagorasFPoint *)into {
  (void) [((id<PythagorasFTransform>) [((id<PlaynCoreLayer>) NIL_CHK(layer)) transform]) inverseTransformWithPythagorasFIPoint:point withPythagorasFPoint:into];
  ((PythagorasFPoint *) NIL_CHK(into)).x_ += [((id<PlaynCoreLayer>) NIL_CHK(layer)) originX];
  ((PythagorasFPoint *) NIL_CHK(into)).y_ += [((id<PlaynCoreLayer>) NIL_CHK(layer)) originY];
  return into;
}

+ (PythagorasFPoint *)parentToLayerWithPlaynCoreLayer:(id<PlaynCoreLayer>)parent
                                   withPlaynCoreLayer:(id<PlaynCoreLayer>)layer
                                withPythagorasFIPoint:(id<PythagorasFIPoint>)point
                                 withPythagorasFPoint:(PythagorasFPoint *)into {
  id<PlaynCoreLayer> immediateParent = [((id<PlaynCoreLayer>) NIL_CHK(layer)) parent];
  if (immediateParent != parent) point = [PlaynCoreLayer_Util parentToLayerWithPlaynCoreLayer:parent withPlaynCoreLayer:immediateParent withPythagorasFIPoint:point withPythagorasFPoint:into];
  (void) [PlaynCoreLayer_Util parentToLayerWithPlaynCoreLayer:layer withPythagorasFIPoint:point withPythagorasFPoint:into];
  return into;
}

+ (BOOL)hitTestWithPlaynCoreLayer_HasSize:(id<PlaynCoreLayer_HasSize>)layer
                    withPythagorasFIPoint:(id<PythagorasFIPoint>)point {
  return [PlaynCoreLayer_Util hitTestWithPlaynCoreLayer_HasSize:layer withFloat:[((id<PythagorasFIPoint>) NIL_CHK(point)) x] withFloat:[((id<PythagorasFIPoint>) NIL_CHK(point)) y]];
}

+ (BOOL)hitTestWithPlaynCoreLayer_HasSize:(id<PlaynCoreLayer_HasSize>)layer
             withPlaynCoreEvents_Position:(id<PlaynCoreEvents_Position>)position {
  return [PlaynCoreLayer_Util hitTestWithPlaynCoreLayer_HasSize:layer withFloat:[((id<PlaynCoreEvents_Position>) NIL_CHK(position)) x] withFloat:[((id<PlaynCoreEvents_Position>) NIL_CHK(position)) y]];
}

+ (BOOL)hitTestWithPlaynCoreLayer_HasSize:(id<PlaynCoreLayer_HasSize>)layer
                                withFloat:(float)x
                                withFloat:(float)y {
  PythagorasFPoint *point = [PlaynCoreLayer_Util screenToLayerWithPlaynCoreLayer:layer withFloat:x withFloat:y];
  return ([((PythagorasFPoint *) NIL_CHK(point)) x] >= 0 && [((PythagorasFPoint *) NIL_CHK(point)) y] >= 0 && [((PythagorasFPoint *) NIL_CHK(point)) x] <= [((id<PlaynCoreLayer_HasSize>) NIL_CHK(layer)) width] && [((PythagorasFPoint *) NIL_CHK(point)) y] <= [((id<PlaynCoreLayer_HasSize>) NIL_CHK(layer)) height]);
}

- (id)init {
  return [super init];
}

@end