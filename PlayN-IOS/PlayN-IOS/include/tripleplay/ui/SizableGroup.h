//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/SizableGroup.java
//
//  Created by Thomas on 7/10/13.
//

@class TripleplayUiElement_LayoutData;
@class TripleplayUiLayout;
@class TripleplayUtilDimensionValue;
@protocol PythagorasFIDimension;

#import "JreEmulation.h"
#import "tripleplay/ui/Group.h"

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
