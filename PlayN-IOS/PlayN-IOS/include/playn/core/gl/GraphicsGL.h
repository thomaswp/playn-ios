//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/gl/GraphicsGL.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PlaynCoreGlGraphicsGL_RESTRICT
#define PlaynCoreGlGraphicsGL_INCLUDE_ALL 1
#endif
#undef PlaynCoreGlGraphicsGL_RESTRICT

#if !defined (_PlaynCoreGlGraphicsGL_) && (PlaynCoreGlGraphicsGL_INCLUDE_ALL || PlaynCoreGlGraphicsGL_INCLUDE)
#define _PlaynCoreGlGraphicsGL_

@class IOSFloatArray;
@class IOSIntArray;
@class PlaynCoreFont_StyleEnum;
@class PlaynCoreGlGLContext;
@class PlaynCoreGlSurfaceGL;
@class PlaynCoreTextFormat;
@protocol PlaynCoreCanvasImage;
@protocol PlaynCoreFont;
@protocol PlaynCoreGlGL20;
@protocol PlaynCoreGradient;
@protocol PlaynCoreGroupLayer;
@protocol PlaynCoreGroupLayer_Clipped;
@protocol PlaynCoreImage;
@protocol PlaynCoreImageLayer;
@protocol PlaynCoreImmediateLayer;
@protocol PlaynCoreImmediateLayer_Clipped;
@protocol PlaynCoreImmediateLayer_Renderer;
@protocol PlaynCoreSurfaceImage;
@protocol PlaynCoreSurfaceLayer;
@protocol PlaynCoreTextLayout;

#define PlaynCoreGraphics_RESTRICT 1
#define PlaynCoreGraphics_INCLUDE 1
#include "playn/core/Graphics.h"

@interface PlaynCoreGlGraphicsGL : NSObject < PlaynCoreGraphics > {
}

- (int)width;
- (int)height;
- (float)scaleFactor;
- (id<PlaynCoreGroupLayer>)createGroupLayer;
- (id<PlaynCoreGroupLayer_Clipped>)createGroupLayerWithFloat:(float)width
                                                   withFloat:(float)height;
- (id<PlaynCoreImageLayer>)createImageLayer;
- (id<PlaynCoreImageLayer>)createImageLayerWithPlaynCoreImage:(id<PlaynCoreImage>)image;
- (id<PlaynCoreSurfaceLayer>)createSurfaceLayerWithFloat:(float)width
                                               withFloat:(float)height;
- (id<PlaynCoreImmediateLayer_Clipped>)createImmediateLayerWithInt:(int)width
                                                           withInt:(int)height
                              withPlaynCoreImmediateLayer_Renderer:(id<PlaynCoreImmediateLayer_Renderer>)renderer;
- (id<PlaynCoreImmediateLayer>)createImmediateLayerWithPlaynCoreImmediateLayer_Renderer:(id<PlaynCoreImmediateLayer_Renderer>)renderer;
- (id<PlaynCoreSurfaceImage>)createSurfaceWithFloat:(float)width
                                          withFloat:(float)height;
- (PlaynCoreGlSurfaceGL *)createSurfaceGLWithFloat:(float)width
                                         withFloat:(float)height;
- (id<PlaynCoreFont>)createFontWithNSString:(NSString *)param0
                withPlaynCoreFont_StyleEnum:(PlaynCoreFont_StyleEnum *)param1
                                  withFloat:(float)param2;
- (id<PlaynCoreCanvasImage>)createImageWithFloat:(float)param0
                                       withFloat:(float)param1;
- (id<PlaynCoreGradient>)createLinearGradientWithFloat:(float)param0
                                             withFloat:(float)param1
                                             withFloat:(float)param2
                                             withFloat:(float)param3
                                          withIntArray:(IOSIntArray *)param4
                                        withFloatArray:(IOSFloatArray *)param5;
- (id<PlaynCoreGradient>)createRadialGradientWithFloat:(float)param0
                                             withFloat:(float)param1
                                             withFloat:(float)param2
                                          withIntArray:(IOSIntArray *)param3
                                        withFloatArray:(IOSFloatArray *)param4;
- (PlaynCoreGlGLContext *)ctx;
- (id<PlaynCoreGlGL20>)gl20;
- (id<PlaynCoreTextLayout>)layoutTextWithNSString:(NSString *)param0
                          withPlaynCoreTextFormat:(PlaynCoreTextFormat *)param1;
- (id<PlaynCoreGroupLayer>)rootLayer;
- (int)screenHeight;
- (int)screenWidth;
- (id)init;
@end
#endif
