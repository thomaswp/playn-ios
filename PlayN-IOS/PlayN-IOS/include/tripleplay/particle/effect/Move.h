//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/particle/effect/Move.java
//
//  Created by Thomas on 7/10/13.
//

@class IOSFloatArray;

#import "JreEmulation.h"
#import "tripleplay/particle/Effector.h"

@interface TripleplayParticleEffectMove : TripleplayParticleEffector {
}

- (void)applyWithInt:(int)index
withJavaLangFloatArray:(IOSFloatArray *)data
             withInt:(int)start
           withFloat:(float)now
           withFloat:(float)dt;
- (id)init;
@end
