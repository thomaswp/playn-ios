//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/anim/Flipbook.java
//
//  Created by Thomas on 7/10/13.
//

@class IOSFloatArray;
@class IOSIntArray;
@protocol TripleplayUtilFrames;

#import "JreEmulation.h"

@interface TripleplayAnimFlipbook : NSObject {
 @public
  id<TripleplayUtilFrames> frames_;
  IOSIntArray *frameIndexes_;
  IOSFloatArray *frameEnds_;
}

@property (nonatomic, strong) id<TripleplayUtilFrames> frames;
@property (nonatomic, strong) IOSIntArray *frameIndexes;
@property (nonatomic, strong) IOSFloatArray *frameEnds;

- (id)initWithTripleplayUtilFrames:(id<TripleplayUtilFrames>)frames
                         withFloat:(float)secsPerFrame;
- (id)initWithTripleplayUtilFrames:(id<TripleplayUtilFrames>)frames
            withJavaLangFloatArray:(IOSFloatArray *)frameEnds;
- (id)initWithTripleplayUtilFrames:(id<TripleplayUtilFrames>)frames
          withJavaLangIntegerArray:(IOSIntArray *)frameIndexes
            withJavaLangFloatArray:(IOSFloatArray *)frameEnds;
+ (IOSFloatArray *)uniformTimesWithTripleplayUtilFrames:(id<TripleplayUtilFrames>)frames
                                              withFloat:(float)secsPerFrame;
+ (IOSIntArray *)uniformOrderWithTripleplayUtilFrames:(id<TripleplayUtilFrames>)frames;
@end