//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/util/PackedFrames.java
//
//  Created by Thomas on 7/10/13.
//

#import "IOSFloatArray.h"
#import "IOSObjectArray.h"
#import "java/lang/Float.h"
#import "playn/core/Image.h"
#import "playn/core/ImageLayer.h"
#import "playn/core/Json.h"
#import "playn/core/Layer.h"
#import "pythagoras/f/Point.h"
#import "pythagoras/f/Rectangle.h"
#import "tripleplay/util/PackedFrames.h"

@implementation TripleplayUtilPackedFrames

@synthesize _source = _source_;
@synthesize _width = _width_;
@synthesize _height = _height_;
@synthesize _frames = _frames_;

- (id)initWithPlaynCoreImage:(id<PlaynCoreImage>)source
    withPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)meta {
  return [self initTripleplayUtilPackedFramesWithPlaynCoreImage:source withFloat:[((id<PlaynCoreJson_Object>) NIL_CHK(meta)) getNumberWithNSString:@"width"] withFloat:[((id<PlaynCoreJson_Object>) NIL_CHK(meta)) getNumberWithNSString:@"height"] withTripleplayUtilPackedFrames_FrameArray:[TripleplayUtilPackedFrames parseFramesWithPlaynCoreJson_Object:meta]];
}

- (id)initWithPlaynCoreImage:(id<PlaynCoreImage>)source
      withJavaLangFloatArray:(IOSObjectArray *)meta {
  return [self initTripleplayUtilPackedFramesWithPlaynCoreImage:source withFloat:[((IOSFloatArray *) [((IOSObjectArray *) NIL_CHK(meta)) objectAtIndex:0]) floatAtIndex:0] withFloat:[((IOSFloatArray *) [((IOSObjectArray *) NIL_CHK(meta)) objectAtIndex:0]) floatAtIndex:1] withTripleplayUtilPackedFrames_FrameArray:[TripleplayUtilPackedFrames parseFramesWithJavaLangFloatArray:meta]];
}

- (id)initTripleplayUtilPackedFramesWithPlaynCoreImage:(id<PlaynCoreImage>)source
                                             withFloat:(float)width
                                             withFloat:(float)height
             withTripleplayUtilPackedFrames_FrameArray:(IOSObjectArray *)frames {
  if ((self = [super init])) {
    _source_ = source;
    _width_ = width;
    _height_ = height;
    _frames_ = frames;
  }
  return self;
}

- (id)initWithPlaynCoreImage:(id<PlaynCoreImage>)source
                   withFloat:(float)width
                   withFloat:(float)height
withTripleplayUtilPackedFrames_FrameArray:(IOSObjectArray *)frames {
  return [self initTripleplayUtilPackedFramesWithPlaynCoreImage:source withFloat:width withFloat:height withTripleplayUtilPackedFrames_FrameArray:frames];
}

- (float)width {
  return _width_;
}

- (float)height {
  return _height_;
}

- (int)count {
  return (int) [((IOSObjectArray *) NIL_CHK(_frames_)) count];
}

- (id<PlaynCoreImage>)frameWithInt:(int)index {
  PythagorasFRectangle *b = ((TripleplayUtilPackedFrames_Frame *) ((TripleplayUtilPackedFrames_Frame *) [((IOSObjectArray *) NIL_CHK(_frames_)) objectAtIndex:index])).bounds;
  return [((id<PlaynCoreImage>) NIL_CHK(_source_)) subImageWithFloat:((PythagorasFRectangle *) NIL_CHK(b)).x_ withFloat:((PythagorasFRectangle *) NIL_CHK(b)).y_ withFloat:((PythagorasFRectangle *) NIL_CHK(b)).width_ withFloat:((PythagorasFRectangle *) NIL_CHK(b)).height_];
}

- (PythagorasFPoint *)offsetWithInt:(int)index {
  return ((TripleplayUtilPackedFrames_Frame *) ((TripleplayUtilPackedFrames_Frame *) [((IOSObjectArray *) NIL_CHK(_frames_)) objectAtIndex:index])).offset;
}

- (void)applyWithInt:(int)index
withPlaynCoreImageLayer:(id<PlaynCoreImageLayer>)layer {
  TripleplayUtilPackedFrames_Frame *f = ((TripleplayUtilPackedFrames_Frame *) [((IOSObjectArray *) NIL_CHK(_frames_)) objectAtIndex:index]);
  (void) [((id<PlaynCoreImageLayer>) NIL_CHK(layer)) setTranslationWithFloat:((PythagorasFPoint *) NIL_CHK(f.offset)).x_ withFloat:((PythagorasFPoint *) NIL_CHK(f.offset)).y_];
  id<PlaynCoreImage> cur = [((id<PlaynCoreImageLayer>) NIL_CHK(layer)) image];
  if ([(id) cur conformsToProtocol: @protocol(PlaynCoreImage_Region)]) {
    id<PlaynCoreImage_Region> curr = (id<PlaynCoreImage_Region>) cur;
    if ([((id<PlaynCoreImage_Region>) NIL_CHK(curr)) parent] == _source_) {
      [((id<PlaynCoreImage_Region>) NIL_CHK(curr)) setBoundsWithFloat:((PythagorasFRectangle *) NIL_CHK(f.bounds)).x_ withFloat:((PythagorasFRectangle *) NIL_CHK(f.bounds)).y_ withFloat:((PythagorasFRectangle *) NIL_CHK(f.bounds)).width_ withFloat:((PythagorasFRectangle *) NIL_CHK(f.bounds)).height_];
      return;
    }
  }
  (void) [((id<PlaynCoreImageLayer>) NIL_CHK(layer)) setImageWithPlaynCoreImage:[self frameWithInt:index]];
}

+ (IOSObjectArray *)parseFramesWithPlaynCoreJson_Object:(id<PlaynCoreJson_Object>)meta {
  id<PlaynCoreJson_Array> jframes = [((id<PlaynCoreJson_Object>) NIL_CHK(meta)) getArrayWithNSString:@"frames"];
  IOSObjectArray *frames = [[IOSObjectArray alloc] initWithLength:[((id<PlaynCoreJson_Array>) NIL_CHK(jframes)) length] type:[IOSClass classWithClass:[TripleplayUtilPackedFrames_Frame class]]];
  for (int ii = 0; ii < (int) [((IOSObjectArray *) NIL_CHK(frames)) count]; ii++) {
    id<PlaynCoreJson_Object> frame = [((id<PlaynCoreJson_Array>) NIL_CHK(jframes)) getObjectWithInt:ii];
    id<PlaynCoreJson_TypedArray> off = ((id<PlaynCoreJson_TypedArray>) [((id<PlaynCoreJson_Object>) NIL_CHK(frame)) getArrayWithNSString:@"off" withIOSClass:[IOSClass classWithClass:[JavaLangFloat class]]]);
    id<PlaynCoreJson_TypedArray> src = ((id<PlaynCoreJson_TypedArray>) [((id<PlaynCoreJson_Object>) NIL_CHK(frame)) getArrayWithNSString:@"src" withIOSClass:[IOSClass classWithClass:[JavaLangFloat class]]]);
    [((IOSObjectArray *) NIL_CHK(frames)) replaceObjectAtIndex:[((id<PlaynCoreJson_Object>) NIL_CHK(frame)) getIntWithNSString:@"idx"] withObject:[[TripleplayUtilPackedFrames_Frame alloc] initWithPythagorasFPoint:[[PythagorasFPoint alloc] initWithFloat:[((JavaLangFloat *) [((id<PlaynCoreJson_TypedArray>) NIL_CHK(off)) getWithInt:0]) floatValue] withFloat:[((JavaLangFloat *) [((id<PlaynCoreJson_TypedArray>) NIL_CHK(off)) getWithInt:1]) floatValue]] withPythagorasFRectangle:[[PythagorasFRectangle alloc] initWithFloat:[((JavaLangFloat *) [((id<PlaynCoreJson_TypedArray>) NIL_CHK(src)) getWithInt:0]) floatValue] withFloat:[((JavaLangFloat *) [((id<PlaynCoreJson_TypedArray>) NIL_CHK(src)) getWithInt:1]) floatValue] withFloat:[((JavaLangFloat *) [((id<PlaynCoreJson_TypedArray>) NIL_CHK(src)) getWithInt:2]) floatValue] withFloat:[((JavaLangFloat *) [((id<PlaynCoreJson_TypedArray>) NIL_CHK(src)) getWithInt:3]) floatValue]]]];
  }
  return frames;
}

+ (IOSObjectArray *)parseFramesWithJavaLangFloatArray:(IOSObjectArray *)meta {
  IOSObjectArray *frames = [[IOSObjectArray alloc] initWithLength:((int) [((IOSObjectArray *) NIL_CHK(meta)) count] - 1) / 2 type:[IOSClass classWithClass:[TripleplayUtilPackedFrames_Frame class]]];
  for (int ii = 0, mm = 1; ii < (int) [((IOSObjectArray *) NIL_CHK(frames)) count]; ii++) {
    [((IOSObjectArray *) NIL_CHK(frames)) replaceObjectAtIndex:ii withObject:[[TripleplayUtilPackedFrames_Frame alloc] initWithPythagorasFPoint:[[PythagorasFPoint alloc] initWithFloat:[((IOSFloatArray *) [((IOSObjectArray *) NIL_CHK(meta)) objectAtIndex:mm]) floatAtIndex:0] withFloat:[((IOSFloatArray *) [((IOSObjectArray *) NIL_CHK(meta)) objectAtIndex:mm++]) floatAtIndex:1]] withPythagorasFRectangle:[[PythagorasFRectangle alloc] initWithFloat:[((IOSFloatArray *) [((IOSObjectArray *) NIL_CHK(meta)) objectAtIndex:mm]) floatAtIndex:0] withFloat:[((IOSFloatArray *) [((IOSObjectArray *) NIL_CHK(meta)) objectAtIndex:mm]) floatAtIndex:1] withFloat:[((IOSFloatArray *) [((IOSObjectArray *) NIL_CHK(meta)) objectAtIndex:mm]) floatAtIndex:2] withFloat:[((IOSFloatArray *) [((IOSObjectArray *) NIL_CHK(meta)) objectAtIndex:mm++]) floatAtIndex:3]]]];
  }
  return frames;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUtilPackedFrames *typedCopy = (TripleplayUtilPackedFrames *) copy;
  typedCopy._source = _source_;
  typedCopy._width = _width_;
  typedCopy._height = _height_;
  typedCopy._frames = _frames_;
}

@end
@implementation TripleplayUtilPackedFrames_Frame

@synthesize offset = offset_;
@synthesize bounds = bounds_;

- (id)initWithPythagorasFPoint:(PythagorasFPoint *)offset
      withPythagorasFRectangle:(PythagorasFRectangle *)bounds {
  if ((self = [super init])) {
    self.offset = offset;
    self.bounds = bounds;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUtilPackedFrames_Frame *typedCopy = (TripleplayUtilPackedFrames_Frame *) copy;
  typedCopy.offset = offset_;
  typedCopy.bounds = bounds_;
}

@end
