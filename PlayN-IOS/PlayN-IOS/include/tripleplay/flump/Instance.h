//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/flump/Instance.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !TripleplayFlumpInstance_RESTRICT
#define TripleplayFlumpInstance_INCLUDE_ALL 1
#endif
#undef TripleplayFlumpInstance_RESTRICT

#if !defined (_TripleplayFlumpInstance_) && (TripleplayFlumpInstance_INCLUDE_ALL || TripleplayFlumpInstance_INCLUDE)
#define _TripleplayFlumpInstance_

@protocol PlaynCoreLayer;

#define TripleplayUtilPaintable_RESTRICT 1
#define TripleplayUtilPaintable_INCLUDE 1
#include "tripleplay/util/Paintable.h"

@protocol TripleplayFlumpInstance < TripleplayUtilPaintable, NSObject, JavaObject >
- (id<PlaynCoreLayer>)layer;
- (void)paintWithFloat:(float)dt;
@end
#endif
