//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/layout/AbsoluteLayout.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !TripleplayUiLayoutAbsoluteLayout_RESTRICT
#define TripleplayUiLayoutAbsoluteLayout_INCLUDE_ALL 1
#endif
#undef TripleplayUiLayoutAbsoluteLayout_RESTRICT

#if !defined (_TripleplayUiLayoutAbsoluteLayout_) && (TripleplayUiLayoutAbsoluteLayout_INCLUDE_ALL || TripleplayUiLayoutAbsoluteLayout_INCLUDE)
#define _TripleplayUiLayoutAbsoluteLayout_

@class PythagorasFDimension;
@class TripleplayUiElement;
@class TripleplayUiElements;
@class TripleplayUiLayoutAbsoluteLayout_Constraint;
@class TripleplayUiStyle_HAlignEnum;
@class TripleplayUiStyle_VAlignEnum;
@protocol PythagorasFIDimension;
@protocol PythagorasFIPoint;

#define TripleplayUiLayout_RESTRICT 1
#define TripleplayUiLayout_INCLUDE 1
#include "tripleplay/ui/Layout.h"

@interface TripleplayUiLayoutAbsoluteLayout : TripleplayUiLayout {
}

+ (PythagorasFDimension *)ZERO;
+ (id)atWithId:(TripleplayUiElement *)elem
     withFloat:(float)x
     withFloat:(float)y;
+ (id)atWithId:(TripleplayUiElement *)elem
withPythagorasFIPoint:(id<PythagorasFIPoint>)position;
+ (id)atWithId:(TripleplayUiElement *)elem
     withFloat:(float)x
     withFloat:(float)y
     withFloat:(float)width
     withFloat:(float)height;
+ (id)atWithId:(TripleplayUiElement *)elem
withPythagorasFIPoint:(id<PythagorasFIPoint>)position
withPythagorasFIDimension:(id<PythagorasFIDimension>)size;
+ (id)atWithId:(TripleplayUiElement *)elem
     withFloat:(float)x
     withFloat:(float)y
withTripleplayUiStyle_HAlignEnum:(TripleplayUiStyle_HAlignEnum *)halign
withTripleplayUiStyle_VAlignEnum:(TripleplayUiStyle_VAlignEnum *)valign;
+ (id)atWithId:(TripleplayUiElement *)elem
withPythagorasFIPoint:(id<PythagorasFIPoint>)position
withTripleplayUiStyle_HAlignEnum:(TripleplayUiStyle_HAlignEnum *)halign
withTripleplayUiStyle_VAlignEnum:(TripleplayUiStyle_VAlignEnum *)valign;
+ (id)atWithId:(TripleplayUiElement *)elem
     withFloat:(float)x
     withFloat:(float)y
     withFloat:(float)width
     withFloat:(float)height
withTripleplayUiStyle_HAlignEnum:(TripleplayUiStyle_HAlignEnum *)halign
withTripleplayUiStyle_VAlignEnum:(TripleplayUiStyle_VAlignEnum *)valign;
+ (id)atWithId:(TripleplayUiElement *)elem
withPythagorasFIPoint:(id<PythagorasFIPoint>)position
withPythagorasFIDimension:(id<PythagorasFIDimension>)size
withTripleplayUiStyle_HAlignEnum:(TripleplayUiStyle_HAlignEnum *)halign
withTripleplayUiStyle_VAlignEnum:(TripleplayUiStyle_VAlignEnum *)valign;
+ (id)centerAtWithId:(TripleplayUiElement *)elem
           withFloat:(float)x
           withFloat:(float)y;
+ (id)centerAtWithId:(TripleplayUiElement *)elem
withPythagorasFIPoint:(id<PythagorasFIPoint>)position;
- (PythagorasFDimension *)computeSizeWithTripleplayUiElements:(TripleplayUiElements *)elems
                                                    withFloat:(float)hintX
                                                    withFloat:(float)hintY;
- (void)layoutWithTripleplayUiElements:(TripleplayUiElements *)elems
                             withFloat:(float)left
                             withFloat:(float)top
                             withFloat:(float)width
                             withFloat:(float)height;
+ (TripleplayUiLayoutAbsoluteLayout_Constraint *)constraintWithTripleplayUiElement:(TripleplayUiElement *)elem;
- (id)init;
@end
#endif

#if !defined (_TripleplayUiLayoutAbsoluteLayout_Constraint_) && (TripleplayUiLayoutAbsoluteLayout_INCLUDE_ALL || TripleplayUiLayoutAbsoluteLayout_Constraint_INCLUDE)
#define _TripleplayUiLayoutAbsoluteLayout_Constraint_

@class TripleplayUiElement;
@class TripleplayUiLayoutAbsoluteLayout;
@class TripleplayUiStyle_HAlignEnum;
@class TripleplayUiStyle_VAlignEnum;
@protocol PythagorasFIDimension;
@protocol PythagorasFIPoint;

#define TripleplayUiLayout_RESTRICT 1
#define TripleplayUiLayout_Constraint_INCLUDE 1
#include "tripleplay/ui/Layout.h"

@interface TripleplayUiLayoutAbsoluteLayout_Constraint : TripleplayUiLayout_Constraint {
 @public
  id<PythagorasFIPoint> position_;
  id<PythagorasFIDimension> size_;
  TripleplayUiStyle_HAlignEnum *halign_;
  TripleplayUiStyle_VAlignEnum *valign_;
}

@property (nonatomic, strong) id<PythagorasFIPoint> position;
@property (nonatomic, strong) id<PythagorasFIDimension> size;
@property (nonatomic, strong) TripleplayUiStyle_HAlignEnum *halign;
@property (nonatomic, strong) TripleplayUiStyle_VAlignEnum *valign;

- (id)initWithPythagorasFIPoint:(id<PythagorasFIPoint>)position
      withPythagorasFIDimension:(id<PythagorasFIDimension>)size
withTripleplayUiStyle_HAlignEnum:(TripleplayUiStyle_HAlignEnum *)halign
withTripleplayUiStyle_VAlignEnum:(TripleplayUiStyle_VAlignEnum *)valign;
- (id<PythagorasFIDimension>)psizeWithTripleplayUiLayoutAbsoluteLayout:(TripleplayUiLayoutAbsoluteLayout *)layout
                                               withTripleplayUiElement:(TripleplayUiElement *)elem;
- (id<PythagorasFIPoint>)posWithPythagorasFIDimension:(id<PythagorasFIDimension>)psize;
@end
#endif
