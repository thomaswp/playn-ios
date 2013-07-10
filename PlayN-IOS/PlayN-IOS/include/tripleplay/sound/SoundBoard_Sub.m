//
//  SoundBoard_Sub.m
//  PlayN-IOS
//
//  Created by Thomas on 7/10/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "SoundBoard_Sub.h"
#import "pythagoras/f/MathUtil.h"
#import "java/lang/Float.h"

@implementation TripleplaySoundSoundBoard_$1

- (JavaLangFloat *)updateAndNotifyIfWithJavaLangFloat:(JavaLangFloat *)value {
    JavaLangFloat* v = [[JavaLangFloat alloc] initWithFloat:[PythagorasFMathUtil clampWithFloat:[((JavaLangFloat *) NIL_CHK(value)) floatValue] withFloat:0 withFloat:1]];
    return (JavaLangFloat *) [super updateAndNotifyIfWithId:v];
}

- (id)initWithJavaLangFloat:(JavaLangFloat *)arg$0 {
    return [super initWithId:arg$0];
}

@end
