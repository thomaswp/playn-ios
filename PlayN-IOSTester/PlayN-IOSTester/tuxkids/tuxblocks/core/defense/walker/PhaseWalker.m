//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/defense/walker/PhaseWalker.java
//
//  Created by Thomas on 7/26/13.
//

#include "java/lang/Math.h"
#include "pythagoras/i/Point.h"
#include "tuxkids/tuxblocks/core/defense/Grid.h"
#include "tuxkids/tuxblocks/core/defense/walker/PhaseWalker.h"
#include "tuxkids/tuxblocks/core/defense/walker/Walker.h"
#include "tuxkids/tuxblocks/core/layers/ImageLayerTintable.h"

@implementation TuxkidsTuxblocksCoreDefenseWalkerPhaseWalker

- (id)initWithInt:(int)maxHp
          withInt:(int)walkCellTime {
  return [super initWithInt:maxHp withInt:walkCellTime];
}

- (void)updateMovementWithFloat:(float)perc {
  alpha_ = [JavaLangMath minWithFloat:2 - perc * 2 withFloat:1];
  [((TuxkidsTuxblocksCoreLayersImageLayerTintable *) nil_chk(layer__)) setTranslationWithFloat:((PythagorasIPoint *) nil_chk(lastCoordinates_)).y_ * [((TuxkidsTuxblocksCoreDefenseGrid *) nil_chk(grid_)) cellSize] withFloat:((PythagorasIPoint *) nil_chk(lastCoordinates_)).x_ * [((TuxkidsTuxblocksCoreDefenseGrid *) nil_chk(grid_)) cellSize]];
}

- (TuxkidsTuxblocksCoreDefenseWalkerWalker *)copy__ OBJC_METHOD_FAMILY_NONE {
  return [[TuxkidsTuxblocksCoreDefenseWalkerPhaseWalker alloc] initWithInt:maxHp_ withInt:walkCellTime__];
}

@end
