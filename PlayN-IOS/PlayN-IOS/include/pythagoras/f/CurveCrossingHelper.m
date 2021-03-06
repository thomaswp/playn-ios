//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/CurveCrossingHelper.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSClass.h"
#include "IOSFloatArray.h"
#include "IOSIntArray.h"
#include "IOSObjectArray.h"
#include "java/lang/Math.h"
#include "java/util/ArrayList.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "pythagoras/f/CurveCrossingHelper.h"
#include "pythagoras/f/GeometryUtil.h"
#include "pythagoras/f/IntersectPoint.h"
#include "pythagoras/f/PathIterator.h"

@implementation PythagorasFCurveCrossingHelper

@synthesize coords = coords_;
@synthesize rules = rules_;
@synthesize sizes = sizes_;
@synthesize rulesSizes = rulesSizes_;
@synthesize offsets = offsets_;
@synthesize isectPoints = isectPoints_;

- (id)initWithFloatArray2:(IOSObjectArray *)coords
             withIntArray:(IOSIntArray *)sizes
            withIntArray2:(IOSObjectArray *)rules
             withIntArray:(IOSIntArray *)rulesSizes
            withIntArray2:(IOSObjectArray *)offsets {
  if ((self = [super init])) {
    isectPoints_ = [[JavaUtilArrayList alloc] init];
    self.coords = coords;
    self.rules = rules;
    self.sizes = sizes;
    self.rulesSizes = rulesSizes;
    self.offsets = offsets;
  }
  return self;
}

- (IOSObjectArray *)findCrossing {
  IOSFloatArray *edge1 = [IOSFloatArray arrayWithLength:8];
  IOSFloatArray *edge2 = [IOSFloatArray arrayWithLength:8];
  IOSFloatArray *points = [IOSFloatArray arrayWithLength:6];
  IOSFloatArray *params = [IOSFloatArray arrayWithLength:6];
  IOSFloatArray *mp1 = [IOSFloatArray arrayWithLength:2];
  IOSFloatArray *cp1 = [IOSFloatArray arrayWithLength:2];
  IOSFloatArray *mp2 = [IOSFloatArray arrayWithLength:2];
  IOSFloatArray *cp2 = [IOSFloatArray arrayWithLength:2];
  int rule1, rule2, endIndex1, endIndex2;
  int ipCount = 0;
  for (int i = 0; i < [((IOSIntArray *) nil_chk(rulesSizes_)) intAtIndex:0]; i++) {
    rule1 = [((IOSIntArray *) nil_chk([((IOSObjectArray *) nil_chk(rules_)) objectAtIndex:0])) intAtIndex:i];
    endIndex1 = [self currentEdgeWithInt:0 withInt:i withFloatArray:edge1 withFloatArray:mp1 withFloatArray:cp1];
    for (int j = 0; j < [((IOSIntArray *) nil_chk(rulesSizes_)) intAtIndex:1]; j++) {
      ipCount = 0;
      rule2 = [((IOSIntArray *) nil_chk([((IOSObjectArray *) nil_chk(rules_)) objectAtIndex:1])) intAtIndex:j];
      endIndex2 = [self currentEdgeWithInt:1 withInt:j withFloatArray:edge2 withFloatArray:mp2 withFloatArray:cp2];
      if (((rule1 == PythagorasFPathIterator_SEG_LINETO) || (rule1 == PythagorasFPathIterator_SEG_CLOSE)) && ((rule2 == PythagorasFPathIterator_SEG_LINETO) || (rule2 == PythagorasFPathIterator_SEG_CLOSE))) {
        ipCount = [PythagorasFGeometryUtil intersectLinesWithParamsWithFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:2] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:3] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:2] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:3] withFloatArray:params];
        if (ipCount != 0) {
          (*[((IOSFloatArray *) nil_chk(points)) floatRefAtIndex:0]) = [PythagorasFGeometryUtil lineWithFloat:[((IOSFloatArray *) nil_chk(params)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:2]];
          (*[((IOSFloatArray *) nil_chk(points)) floatRefAtIndex:1]) = [PythagorasFGeometryUtil lineWithFloat:[((IOSFloatArray *) nil_chk(params)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:3]];
        }
      }
      else if (((rule1 == PythagorasFPathIterator_SEG_LINETO) || (rule1 == PythagorasFPathIterator_SEG_CLOSE)) && (rule2 == PythagorasFPathIterator_SEG_QUADTO)) {
        ipCount = [PythagorasFGeometryUtil intersectLineAndQuadWithFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:2] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:3] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:2] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:3] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:4] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:5] withFloatArray:params];
        for (int k = 0; k < ipCount; k++) {
          (*[((IOSFloatArray *) nil_chk(points)) floatRefAtIndex:2 * k]) = [PythagorasFGeometryUtil lineWithFloat:[((IOSFloatArray *) nil_chk(params)) floatAtIndex:2 * k] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:2]];
          (*[((IOSFloatArray *) nil_chk(points)) floatRefAtIndex:2 * k + 1]) = [PythagorasFGeometryUtil lineWithFloat:[((IOSFloatArray *) nil_chk(params)) floatAtIndex:2 * k] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:3]];
        }
      }
      else if (rule1 == PythagorasFPathIterator_SEG_QUADTO && (rule2 == PythagorasFPathIterator_SEG_LINETO || rule2 == PythagorasFPathIterator_SEG_CLOSE)) {
        ipCount = [PythagorasFGeometryUtil intersectLineAndQuadWithFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:2] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:3] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:2] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:3] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:4] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:5] withFloatArray:params];
        for (int k = 0; k < ipCount; k++) {
          (*[((IOSFloatArray *) nil_chk(points)) floatRefAtIndex:2 * k]) = [PythagorasFGeometryUtil lineWithFloat:[((IOSFloatArray *) nil_chk(params)) floatAtIndex:2 * k + 1] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:2]];
          (*[((IOSFloatArray *) nil_chk(points)) floatRefAtIndex:2 * k + 1]) = [PythagorasFGeometryUtil lineWithFloat:[((IOSFloatArray *) nil_chk(params)) floatAtIndex:2 * k + 1] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:3]];
        }
      }
      else if ((rule1 == PythagorasFPathIterator_SEG_CUBICTO) && ((rule2 == PythagorasFPathIterator_SEG_LINETO) || (rule2 == PythagorasFPathIterator_SEG_CLOSE))) {
        ipCount = [PythagorasFGeometryUtil intersectLineAndCubicWithFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:2] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:3] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:4] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:5] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:6] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:7] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:2] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:3] withFloatArray:params];
        for (int k = 0; k < ipCount; k++) {
          (*[((IOSFloatArray *) nil_chk(points)) floatRefAtIndex:2 * k]) = [PythagorasFGeometryUtil lineWithFloat:[((IOSFloatArray *) nil_chk(params)) floatAtIndex:2 * k + 1] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:2]];
          (*[((IOSFloatArray *) nil_chk(points)) floatRefAtIndex:2 * k + 1]) = [PythagorasFGeometryUtil lineWithFloat:[((IOSFloatArray *) nil_chk(params)) floatAtIndex:2 * k + 1] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:3]];
        }
      }
      else if (((rule1 == PythagorasFPathIterator_SEG_LINETO) || (rule1 == PythagorasFPathIterator_SEG_CLOSE)) && (rule2 == PythagorasFPathIterator_SEG_CUBICTO)) {
        ipCount = [PythagorasFGeometryUtil intersectLineAndCubicWithFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:2] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:3] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:2] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:3] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:4] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:5] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:6] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:7] withFloatArray:params];
        for (int k = 0; k < ipCount; k++) {
          (*[((IOSFloatArray *) nil_chk(points)) floatRefAtIndex:2 * k]) = [PythagorasFGeometryUtil lineWithFloat:[((IOSFloatArray *) nil_chk(params)) floatAtIndex:2 * k] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:2]];
          (*[((IOSFloatArray *) nil_chk(points)) floatRefAtIndex:2 * k + 1]) = [PythagorasFGeometryUtil lineWithFloat:[((IOSFloatArray *) nil_chk(params)) floatAtIndex:2 * k] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:3]];
        }
      }
      else if ((rule1 == PythagorasFPathIterator_SEG_QUADTO) && (rule2 == PythagorasFPathIterator_SEG_QUADTO)) {
        ipCount = [PythagorasFGeometryUtil intersectQuadsWithFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:2] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:3] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:4] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:5] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:2] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:3] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:4] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:5] withFloatArray:params];
        for (int k = 0; k < ipCount; k++) {
          (*[((IOSFloatArray *) nil_chk(points)) floatRefAtIndex:2 * k]) = [PythagorasFGeometryUtil quadWithFloat:[((IOSFloatArray *) nil_chk(params)) floatAtIndex:2 * k] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:2] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:4]];
          (*[((IOSFloatArray *) nil_chk(points)) floatRefAtIndex:2 * k + 1]) = [PythagorasFGeometryUtil quadWithFloat:[((IOSFloatArray *) nil_chk(params)) floatAtIndex:2 * k] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:3] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:5]];
        }
      }
      else if ((rule1 == PythagorasFPathIterator_SEG_QUADTO) && (rule2 == PythagorasFPathIterator_SEG_CUBICTO)) {
        ipCount = [PythagorasFGeometryUtil intersectQuadAndCubicWithFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:2] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:3] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:4] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:5] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:2] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:3] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:4] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:5] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:6] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:7] withFloatArray:params];
        for (int k = 0; k < ipCount; k++) {
          (*[((IOSFloatArray *) nil_chk(points)) floatRefAtIndex:2 * k]) = [PythagorasFGeometryUtil quadWithFloat:[((IOSFloatArray *) nil_chk(params)) floatAtIndex:2 * k] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:2] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:4]];
          (*[((IOSFloatArray *) nil_chk(points)) floatRefAtIndex:2 * k + 1]) = [PythagorasFGeometryUtil quadWithFloat:[((IOSFloatArray *) nil_chk(params)) floatAtIndex:2 * k] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:3] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:5]];
        }
      }
      else if ((rule1 == PythagorasFPathIterator_SEG_CUBICTO) && (rule2 == PythagorasFPathIterator_SEG_QUADTO)) {
        ipCount = [PythagorasFGeometryUtil intersectQuadAndCubicWithFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:2] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:3] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:4] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:5] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:2] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:3] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:4] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:5] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:6] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:7] withFloatArray:params];
        for (int k = 0; k < ipCount; k++) {
          (*[((IOSFloatArray *) nil_chk(points)) floatRefAtIndex:2 * k]) = [PythagorasFGeometryUtil quadWithFloat:[((IOSFloatArray *) nil_chk(params)) floatAtIndex:2 * k + 1] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:2] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:4]];
          (*[((IOSFloatArray *) nil_chk(points)) floatRefAtIndex:2 * k + 1]) = [PythagorasFGeometryUtil quadWithFloat:[((IOSFloatArray *) nil_chk(params)) floatAtIndex:2 * k + 1] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:3] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:5]];
        }
      }
      else if ((rule1 == PythagorasFPathIterator_SEG_CUBICTO) && (rule2 == PythagorasFPathIterator_SEG_CUBICTO)) {
        ipCount = [PythagorasFGeometryUtil intersectCubicsWithFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:2] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:3] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:4] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:5] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:6] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:7] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:2] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:3] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:4] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:5] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:6] withFloat:[((IOSFloatArray *) nil_chk(edge2)) floatAtIndex:7] withFloatArray:params];
        for (int k = 0; k < ipCount; k++) {
          (*[((IOSFloatArray *) nil_chk(points)) floatRefAtIndex:2 * k]) = [PythagorasFGeometryUtil cubicWithFloat:[((IOSFloatArray *) nil_chk(params)) floatAtIndex:2 * k] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:2] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:4] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:6]];
          (*[((IOSFloatArray *) nil_chk(points)) floatRefAtIndex:2 * k + 1]) = [PythagorasFGeometryUtil cubicWithFloat:[((IOSFloatArray *) nil_chk(params)) floatAtIndex:2 * k] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:3] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:5] withFloat:[((IOSFloatArray *) nil_chk(edge1)) floatAtIndex:7]];
        }
      }
      endIndex1 = i;
      endIndex2 = j;
      int begIndex1 = i - 1;
      int begIndex2 = j - 1;
      for (int k = 0; k < ipCount; k++) {
        PythagorasFIntersectPoint *ip = nil;
        if (![self containsPointWithFloat:[((IOSFloatArray *) nil_chk(points)) floatAtIndex:2 * k] withFloat:[((IOSFloatArray *) nil_chk(points)) floatAtIndex:2 * k + 1]]) {
          for (id<JavaUtilIterator> iter = [((id<JavaUtilList>) nil_chk(isectPoints_)) iterator]; [((id<JavaUtilIterator>) nil_chk(iter)) hasNext]; ) {
            ip = [((id<JavaUtilIterator>) nil_chk(iter)) next];
            if ((begIndex1 == [((PythagorasFIntersectPoint *) nil_chk(ip)) begIndexWithBOOL:YES]) && (endIndex1 == [((PythagorasFIntersectPoint *) nil_chk(ip)) endIndexWithBOOL:YES])) {
              if ([((PythagorasFIntersectPoint *) nil_chk(ip)) paramWithBOOL:YES] > [((IOSFloatArray *) nil_chk(params)) floatAtIndex:2 * k]) {
                endIndex1 = -([((id<JavaUtilList>) nil_chk(isectPoints_)) indexOfWithId:ip] + 1);
                [((PythagorasFIntersectPoint *) nil_chk(ip)) setBegIndex1WithInt:-([((id<JavaUtilList>) nil_chk(isectPoints_)) size] + 1)];
              }
              else {
                begIndex1 = -([((id<JavaUtilList>) nil_chk(isectPoints_)) indexOfWithId:ip] + 1);
                [((PythagorasFIntersectPoint *) nil_chk(ip)) setEndIndex1WithInt:-([((id<JavaUtilList>) nil_chk(isectPoints_)) size] + 1)];
              }
            }
            if ((begIndex2 == [((PythagorasFIntersectPoint *) nil_chk(ip)) begIndexWithBOOL:NO]) && (endIndex2 == [((PythagorasFIntersectPoint *) nil_chk(ip)) endIndexWithBOOL:NO])) {
              if ([((PythagorasFIntersectPoint *) nil_chk(ip)) paramWithBOOL:NO] > [((IOSFloatArray *) nil_chk(params)) floatAtIndex:2 * k + 1]) {
                endIndex2 = -([((id<JavaUtilList>) nil_chk(isectPoints_)) indexOfWithId:ip] + 1);
                [((PythagorasFIntersectPoint *) nil_chk(ip)) setBegIndex2WithInt:-([((id<JavaUtilList>) nil_chk(isectPoints_)) size] + 1)];
              }
              else {
                begIndex2 = -([((id<JavaUtilList>) nil_chk(isectPoints_)) indexOfWithId:ip] + 1);
                [((PythagorasFIntersectPoint *) nil_chk(ip)) setEndIndex2WithInt:-([((id<JavaUtilList>) nil_chk(isectPoints_)) size] + 1)];
              }
            }
          }
          if (rule1 == PythagorasFPathIterator_SEG_CLOSE) {
            rule1 = PythagorasFPathIterator_SEG_LINETO;
          }
          if (rule2 == PythagorasFPathIterator_SEG_CLOSE) {
            rule2 = PythagorasFPathIterator_SEG_LINETO;
          }
          [((id<JavaUtilList>) nil_chk(isectPoints_)) addWithId:[[PythagorasFIntersectPoint alloc] initWithInt:begIndex1 withInt:endIndex1 withInt:rule1 withInt:i withInt:begIndex2 withInt:endIndex2 withInt:rule2 withInt:j withFloat:[((IOSFloatArray *) nil_chk(points)) floatAtIndex:2 * k] withFloat:[((IOSFloatArray *) nil_chk(points)) floatAtIndex:2 * k + 1] withFloat:[((IOSFloatArray *) nil_chk(params)) floatAtIndex:2 * k] withFloat:[((IOSFloatArray *) nil_chk(params)) floatAtIndex:2 * k + 1]]];
        }
      }
    }
  }
  return [((id<JavaUtilList>) nil_chk(isectPoints_)) toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[((id<JavaUtilList>) nil_chk(isectPoints_)) size] type:[IOSClass classWithClass:[PythagorasFIntersectPoint class]]]];
}

- (int)currentEdgeWithInt:(int)areaIndex
                  withInt:(int)index
           withFloatArray:(IOSFloatArray *)c
           withFloatArray:(IOSFloatArray *)mp
           withFloatArray:(IOSFloatArray *)cp {
  int endIndex = 0;
  switch ([((IOSIntArray *) nil_chk([((IOSObjectArray *) nil_chk(rules_)) objectAtIndex:areaIndex])) intAtIndex:index]) {
    case PythagorasFPathIterator_SEG_MOVETO:
    (*[((IOSFloatArray *) nil_chk(cp)) floatRefAtIndex:0]) = (*[((IOSFloatArray *) nil_chk(mp)) floatRefAtIndex:0]) = [((IOSFloatArray *) nil_chk([((IOSObjectArray *) nil_chk(coords_)) objectAtIndex:areaIndex])) floatAtIndex:[((IOSIntArray *) nil_chk([((IOSObjectArray *) nil_chk(offsets_)) objectAtIndex:areaIndex])) intAtIndex:index]];
    (*[((IOSFloatArray *) nil_chk(cp)) floatRefAtIndex:1]) = (*[((IOSFloatArray *) nil_chk(mp)) floatRefAtIndex:1]) = [((IOSFloatArray *) nil_chk([((IOSObjectArray *) nil_chk(coords_)) objectAtIndex:areaIndex])) floatAtIndex:[((IOSIntArray *) nil_chk([((IOSObjectArray *) nil_chk(offsets_)) objectAtIndex:areaIndex])) intAtIndex:index] + 1];
    break;
    case PythagorasFPathIterator_SEG_LINETO:
    (*[((IOSFloatArray *) nil_chk(c)) floatRefAtIndex:0]) = [((IOSFloatArray *) nil_chk(cp)) floatAtIndex:0];
    (*[((IOSFloatArray *) nil_chk(c)) floatRefAtIndex:1]) = [((IOSFloatArray *) nil_chk(cp)) floatAtIndex:1];
    (*[((IOSFloatArray *) nil_chk(cp)) floatRefAtIndex:0]) = (*[((IOSFloatArray *) nil_chk(c)) floatRefAtIndex:2]) = [((IOSFloatArray *) nil_chk([((IOSObjectArray *) nil_chk(coords_)) objectAtIndex:areaIndex])) floatAtIndex:[((IOSIntArray *) nil_chk([((IOSObjectArray *) nil_chk(offsets_)) objectAtIndex:areaIndex])) intAtIndex:index]];
    (*[((IOSFloatArray *) nil_chk(cp)) floatRefAtIndex:1]) = (*[((IOSFloatArray *) nil_chk(c)) floatRefAtIndex:3]) = [((IOSFloatArray *) nil_chk([((IOSObjectArray *) nil_chk(coords_)) objectAtIndex:areaIndex])) floatAtIndex:[((IOSIntArray *) nil_chk([((IOSObjectArray *) nil_chk(offsets_)) objectAtIndex:areaIndex])) intAtIndex:index] + 1];
    endIndex = 0;
    break;
    case PythagorasFPathIterator_SEG_QUADTO:
    (*[((IOSFloatArray *) nil_chk(c)) floatRefAtIndex:0]) = [((IOSFloatArray *) nil_chk(cp)) floatAtIndex:0];
    (*[((IOSFloatArray *) nil_chk(c)) floatRefAtIndex:1]) = [((IOSFloatArray *) nil_chk(cp)) floatAtIndex:1];
    (*[((IOSFloatArray *) nil_chk(c)) floatRefAtIndex:2]) = [((IOSFloatArray *) nil_chk([((IOSObjectArray *) nil_chk(coords_)) objectAtIndex:areaIndex])) floatAtIndex:[((IOSIntArray *) nil_chk([((IOSObjectArray *) nil_chk(offsets_)) objectAtIndex:areaIndex])) intAtIndex:index]];
    (*[((IOSFloatArray *) nil_chk(c)) floatRefAtIndex:3]) = [((IOSFloatArray *) nil_chk([((IOSObjectArray *) nil_chk(coords_)) objectAtIndex:areaIndex])) floatAtIndex:[((IOSIntArray *) nil_chk([((IOSObjectArray *) nil_chk(offsets_)) objectAtIndex:areaIndex])) intAtIndex:index] + 1];
    (*[((IOSFloatArray *) nil_chk(cp)) floatRefAtIndex:0]) = (*[((IOSFloatArray *) nil_chk(c)) floatRefAtIndex:4]) = [((IOSFloatArray *) nil_chk([((IOSObjectArray *) nil_chk(coords_)) objectAtIndex:areaIndex])) floatAtIndex:[((IOSIntArray *) nil_chk([((IOSObjectArray *) nil_chk(offsets_)) objectAtIndex:areaIndex])) intAtIndex:index] + 2];
    (*[((IOSFloatArray *) nil_chk(cp)) floatRefAtIndex:1]) = (*[((IOSFloatArray *) nil_chk(c)) floatRefAtIndex:5]) = [((IOSFloatArray *) nil_chk([((IOSObjectArray *) nil_chk(coords_)) objectAtIndex:areaIndex])) floatAtIndex:[((IOSIntArray *) nil_chk([((IOSObjectArray *) nil_chk(offsets_)) objectAtIndex:areaIndex])) intAtIndex:index] + 3];
    endIndex = 2;
    break;
    case PythagorasFPathIterator_SEG_CUBICTO:
    (*[((IOSFloatArray *) nil_chk(c)) floatRefAtIndex:0]) = [((IOSFloatArray *) nil_chk(cp)) floatAtIndex:0];
    (*[((IOSFloatArray *) nil_chk(c)) floatRefAtIndex:1]) = [((IOSFloatArray *) nil_chk(cp)) floatAtIndex:1];
    (*[((IOSFloatArray *) nil_chk(c)) floatRefAtIndex:2]) = [((IOSFloatArray *) nil_chk([((IOSObjectArray *) nil_chk(coords_)) objectAtIndex:areaIndex])) floatAtIndex:[((IOSIntArray *) nil_chk([((IOSObjectArray *) nil_chk(offsets_)) objectAtIndex:areaIndex])) intAtIndex:index]];
    (*[((IOSFloatArray *) nil_chk(c)) floatRefAtIndex:3]) = [((IOSFloatArray *) nil_chk([((IOSObjectArray *) nil_chk(coords_)) objectAtIndex:areaIndex])) floatAtIndex:[((IOSIntArray *) nil_chk([((IOSObjectArray *) nil_chk(offsets_)) objectAtIndex:areaIndex])) intAtIndex:index] + 1];
    (*[((IOSFloatArray *) nil_chk(c)) floatRefAtIndex:4]) = [((IOSFloatArray *) nil_chk([((IOSObjectArray *) nil_chk(coords_)) objectAtIndex:areaIndex])) floatAtIndex:[((IOSIntArray *) nil_chk([((IOSObjectArray *) nil_chk(offsets_)) objectAtIndex:areaIndex])) intAtIndex:index] + 2];
    (*[((IOSFloatArray *) nil_chk(c)) floatRefAtIndex:5]) = [((IOSFloatArray *) nil_chk([((IOSObjectArray *) nil_chk(coords_)) objectAtIndex:areaIndex])) floatAtIndex:[((IOSIntArray *) nil_chk([((IOSObjectArray *) nil_chk(offsets_)) objectAtIndex:areaIndex])) intAtIndex:index] + 3];
    (*[((IOSFloatArray *) nil_chk(cp)) floatRefAtIndex:0]) = (*[((IOSFloatArray *) nil_chk(c)) floatRefAtIndex:6]) = [((IOSFloatArray *) nil_chk([((IOSObjectArray *) nil_chk(coords_)) objectAtIndex:areaIndex])) floatAtIndex:[((IOSIntArray *) nil_chk([((IOSObjectArray *) nil_chk(offsets_)) objectAtIndex:areaIndex])) intAtIndex:index] + 4];
    (*[((IOSFloatArray *) nil_chk(cp)) floatRefAtIndex:1]) = (*[((IOSFloatArray *) nil_chk(c)) floatRefAtIndex:7]) = [((IOSFloatArray *) nil_chk([((IOSObjectArray *) nil_chk(coords_)) objectAtIndex:areaIndex])) floatAtIndex:[((IOSIntArray *) nil_chk([((IOSObjectArray *) nil_chk(offsets_)) objectAtIndex:areaIndex])) intAtIndex:index] + 5];
    endIndex = 4;
    break;
    case PythagorasFPathIterator_SEG_CLOSE:
    (*[((IOSFloatArray *) nil_chk(c)) floatRefAtIndex:0]) = [((IOSFloatArray *) nil_chk(cp)) floatAtIndex:0];
    (*[((IOSFloatArray *) nil_chk(c)) floatRefAtIndex:1]) = [((IOSFloatArray *) nil_chk(cp)) floatAtIndex:1];
    (*[((IOSFloatArray *) nil_chk(cp)) floatRefAtIndex:0]) = (*[((IOSFloatArray *) nil_chk(c)) floatRefAtIndex:2]) = [((IOSFloatArray *) nil_chk(mp)) floatAtIndex:0];
    (*[((IOSFloatArray *) nil_chk(cp)) floatRefAtIndex:1]) = (*[((IOSFloatArray *) nil_chk(c)) floatRefAtIndex:3]) = [((IOSFloatArray *) nil_chk(mp)) floatAtIndex:1];
    if ([((IOSIntArray *) nil_chk([((IOSObjectArray *) nil_chk(offsets_)) objectAtIndex:areaIndex])) intAtIndex:index] >= [((IOSIntArray *) nil_chk(sizes_)) intAtIndex:areaIndex]) {
      endIndex = -[((IOSIntArray *) nil_chk(sizes_)) intAtIndex:areaIndex];
    }
    else {
      endIndex = 0;
    }
    break;
  }
  return [((IOSIntArray *) nil_chk([((IOSObjectArray *) nil_chk(offsets_)) objectAtIndex:areaIndex])) intAtIndex:index] + endIndex;
}

- (BOOL)containsPointWithFloat:(float)x
                     withFloat:(float)y {
  PythagorasFIntersectPoint *ipoint;
  for (id<JavaUtilIterator> i = [((id<JavaUtilList>) nil_chk(isectPoints_)) iterator]; [((id<JavaUtilIterator>) nil_chk(i)) hasNext]; ) {
    ipoint = [((id<JavaUtilIterator>) nil_chk(i)) next];
    if (([JavaLangMath absWithFloat:[((PythagorasFIntersectPoint *) nil_chk(ipoint)) x] - x] < [JavaLangMath powWithDouble:10 withDouble:-6]) && ([JavaLangMath absWithFloat:[((PythagorasFIntersectPoint *) nil_chk(ipoint)) y] - y] < [JavaLangMath powWithDouble:10 withDouble:-6])) {
      return YES;
    }
  }
  return NO;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasFCurveCrossingHelper *typedCopy = (PythagorasFCurveCrossingHelper *) copy;
  typedCopy.coords = coords_;
  typedCopy.rules = rules_;
  typedCopy.sizes = sizes_;
  typedCopy.rulesSizes = rulesSizes_;
  typedCopy.offsets = offsets_;
  typedCopy.isectPoints = isectPoints_;
}

@end
