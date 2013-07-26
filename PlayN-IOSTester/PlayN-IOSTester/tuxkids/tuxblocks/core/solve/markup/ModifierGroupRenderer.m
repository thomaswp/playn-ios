//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/markup/ModifierGroupRenderer.java
//
//  Created by Thomas on 7/26/13.
//

#include "IOSBooleanArray.h"
#include "IOSIntArray.h"
#include "tuxkids/tuxblocks/core/solve/markup/ModifierGroupRenderer.h"

@implementation TuxkidsTuxblocksCoreSolveMarkupModifierGroupRenderer

@synthesize operands = operands_;
@synthesize highlights = highlights_;

- (BOOL)fullyHighlighted {
  for (int i = 0; i < (int) [((IOSBooleanArray *) nil_chk(highlights_)) count]; i++) if (![((IOSBooleanArray *) nil_chk(highlights_)) booleanAtIndex:i]) return NO;
  return YES;
}

- (TuxkidsTuxblocksCoreSolveMarkupModifierGroupRenderer *)setHighlightWithInt:(int)index
                                                                     withBOOL:(BOOL)highlight {
  (*[((IOSBooleanArray *) nil_chk(highlights_)) booleanRefAtIndex:index]) = highlight;
  return self;
}

- (id)initWithIntArray:(IOSIntArray *)operands {
  return [self initTuxkidsTuxblocksCoreSolveMarkupModifierGroupRendererWithIntArray:operands withBooleanArray:[IOSBooleanArray arrayWithLength:(int) [((IOSIntArray *) nil_chk(operands)) count]]];
}

- (id)initTuxkidsTuxblocksCoreSolveMarkupModifierGroupRendererWithIntArray:(IOSIntArray *)operands
                                                          withBooleanArray:(IOSBooleanArray *)highlights {
  if ((self = [super init])) {
    self.operands = operands;
    self.highlights = highlights;
  }
  return self;
}

- (id)initWithIntArray:(IOSIntArray *)operands
      withBooleanArray:(IOSBooleanArray *)highlights {
  return [self initTuxkidsTuxblocksCoreSolveMarkupModifierGroupRendererWithIntArray:operands withBooleanArray:highlights];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreSolveMarkupModifierGroupRenderer *typedCopy = (TuxkidsTuxblocksCoreSolveMarkupModifierGroupRenderer *) copy;
  typedCopy.operands = operands_;
  typedCopy.highlights = highlights_;
}

@end
