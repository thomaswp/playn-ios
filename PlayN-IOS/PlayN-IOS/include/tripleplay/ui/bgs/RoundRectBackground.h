//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/bgs/RoundRectBackground.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !TripleplayUiBgsRoundRectBackground_RESTRICT
#define TripleplayUiBgsRoundRectBackground_INCLUDE_ALL 1
#endif
#undef TripleplayUiBgsRoundRectBackground_RESTRICT

#if !defined (_TripleplayUiBgsRoundRectBackground_) && (TripleplayUiBgsRoundRectBackground_INCLUDE_ALL || TripleplayUiBgsRoundRectBackground_INCLUDE)
#define _TripleplayUiBgsRoundRectBackground_

@class TripleplayUiBackground_Instance;
@protocol PythagorasFIDimension;

#define TripleplayUiBackground_RESTRICT 1
#define TripleplayUiBackground_INCLUDE 1
#include "tripleplay/ui/Background.h"

@interface TripleplayUiBgsRoundRectBackground : TripleplayUiBackground {
 @public
  int _bgColor_, _borderColor_;
  float _radius_, _borderWidth_, _borderRadius_;
}

@property (nonatomic, assign) int _bgColor;
@property (nonatomic, assign) int _borderColor;
@property (nonatomic, assign) float _radius;
@property (nonatomic, assign) float _borderWidth;
@property (nonatomic, assign) float _borderRadius;

- (id)initWithInt:(int)bgColor
        withFloat:(float)radius;
- (id)initWithInt:(int)bgColor
        withFloat:(float)radius
          withInt:(int)borderColor
        withFloat:(float)borderWidth;
- (id)initWithInt:(int)bgColor
        withFloat:(float)radius
          withInt:(int)borderColor
        withFloat:(float)borderWidth
        withFloat:(float)borderRadius;
- (TripleplayUiBackground_Instance *)instantiateWithPythagorasFIDimension:(id<PythagorasFIDimension>)size;
@end
#endif
