//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/Shim.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !TripleplayUiShim_RESTRICT
#define TripleplayUiShim_INCLUDE_ALL 1
#endif
#undef TripleplayUiShim_RESTRICT

#if !defined (_TripleplayUiShim_) && (TripleplayUiShim_INCLUDE_ALL || TripleplayUiShim_INCLUDE)
#define _TripleplayUiShim_

@class IOSClass;
@protocol PythagorasFIDimension;

#define TripleplayUiSizableWidget_RESTRICT 1
#define TripleplayUiSizableWidget_INCLUDE 1
#include "tripleplay/ui/SizableWidget.h"

@interface TripleplayUiShim : TripleplayUiSizableWidget {
}

- (id)initWithFloat:(float)width
          withFloat:(float)height;
- (id)initWithPythagorasFIDimension:(id<PythagorasFIDimension>)size;
- (IOSClass *)getStyleClass;
@end
#endif
