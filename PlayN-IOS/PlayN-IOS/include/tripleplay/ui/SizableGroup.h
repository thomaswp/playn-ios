//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/SizableGroup.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !TripleplayUiSizableGroup_RESTRICT
#define TripleplayUiSizableGroup_INCLUDE_ALL 1
#endif
#undef TripleplayUiSizableGroup_RESTRICT

#if !defined (_TripleplayUiSizableGroup_) && (TripleplayUiSizableGroup_INCLUDE_ALL || TripleplayUiSizableGroup_INCLUDE)
#define _TripleplayUiSizableGroup_

@class TripleplayUiElement_LayoutData;
@class TripleplayUiLayout;
@class TripleplayUtilDimensionValue;
@protocol PythagorasFIDimension;

#define TripleplayUiGroup_RESTRICT 1
#define TripleplayUiGroup_INCLUDE 1
#include "tripleplay/ui/Group.h"

@interface TripleplayUiSizableGroup : TripleplayUiGroup {
 @public
  TripleplayUtilDimensionValue *preferredSize_;
}

@property (nonatomic, strong) TripleplayUtilDimensionValue *preferredSize;

- (id)initWithTripleplayUiLayout:(TripleplayUiLayout *)layout;
- (id)initWithTripleplayUiLayout:(TripleplayUiLayout *)layout
       withPythagorasFIDimension:(id<PythagorasFIDimension>)size;
- (id)initWithTripleplayUiLayout:(TripleplayUiLayout *)layout
                       withFloat:(float)wid
                       withFloat:(float)hei;
- (TripleplayUiElement_LayoutData *)createLayoutDataWithFloat:(float)hintX
                                                    withFloat:(float)hintY;
@end
#endif
