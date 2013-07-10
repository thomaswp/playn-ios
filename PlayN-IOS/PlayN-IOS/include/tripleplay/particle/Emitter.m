//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/particle/Emitter.java
//
//  Created by Thomas on 7/10/13.
//

#import "java/util/ArrayList.h"
#import "java/util/List.h"
#import "playn/core/Graphics.h"
#import "playn/core/Image.h"
#import "playn/core/ImmediateLayer.h"
#import "playn/core/PlayN.h"
#import "playn/core/Surface.h"
#import "react/Connection.h"
#import "react/Signal.h"
#import "tripleplay/particle/Emitter.h"
#import "tripleplay/particle/Generator.h"
#import "tripleplay/particle/Initializer.h"
#import "tripleplay/particle/ParticleBuffer.h"
#import "tripleplay/particle/ParticleShader.h"
#import "tripleplay/particle/Particles.h"

@implementation TripleplayParticleEmitter

@synthesize layer = layer_;
@synthesize generator = generator_;
@synthesize initters = initters_;
@synthesize effectors = effectors_;
@synthesize onExhausted = onExhausted_;
@synthesize onEmpty = onEmpty_;
@synthesize _parts = _parts_;
@synthesize _buffer = _buffer_;
@synthesize _conn = _conn_;

- (void)addParticlesWithInt:(int)count {
  for (int ii = 0, ll = [((id<JavaUtilList>) NIL_CHK(initters_)) size]; ii < ll; ii++) [((TripleplayParticleInitializer *) [((id<JavaUtilList>) NIL_CHK(initters_)) getWithInt:ii]) willInitWithInt:count];
  [((TripleplayParticleParticleBuffer *) NIL_CHK(_buffer_)) addWithInt:count withFloat:[((TripleplayParticleParticles *) NIL_CHK(_parts_)) now] withJavaUtilList:initters_];
}

- (void)destroy {
  [((id<PlaynCoreImmediateLayer>) NIL_CHK(layer_)) destroy];
  [((id<ReactConnection>) NIL_CHK(_conn_)) disconnect];
}

- (void)destroyOnEmpty {
  (void) [((ReactSignal *) NIL_CHK(onEmpty_)) connectWithReactSlot:[[TripleplayParticleEmitter_$1 alloc] initWithTripleplayParticleEmitter:self]];
}

- (id)initWithTripleplayParticleParticles:(TripleplayParticleParticles *)parts
                                  withInt:(int)maxParticles
                       withPlaynCoreImage:(id<PlaynCoreImage>)image {
  if ((self = [super init])) {
    initters_ = [[JavaUtilArrayList alloc] init];
    effectors_ = [[JavaUtilArrayList alloc] init];
    onExhausted_ = ((ReactSignal *) [ReactSignal create]);
    onEmpty_ = ((ReactSignal *) [ReactSignal create]);
    self.layer = [((id<PlaynCoreGraphics>) [PlaynCorePlayN graphics]) createImmediateLayerWithPlaynCoreImmediateLayer_Renderer:[[TripleplayParticleEmitter_$2 alloc] initWithTripleplayParticleEmitter:self withPlaynCoreImage:image withInt:maxParticles]];
    _parts_ = parts;
    _buffer_ = [[TripleplayParticleParticleBuffer alloc] initWithInt:maxParticles];
  }
  return self;
}

- (void)updateWithFloat:(float)now
              withFloat:(float)dt {
  if (generator_ != nil && [((TripleplayParticleGenerator *) NIL_CHK(generator_)) generateWithTripleplayParticleEmitter:self withFloat:now withFloat:dt]) {
    generator_ = nil;
    [((ReactSignal *) NIL_CHK(onExhausted_)) emitWithId:self];
  }
  if ([((TripleplayParticleParticleBuffer *) NIL_CHK(_buffer_)) applyWithJavaUtilList:effectors_ withFloat:now withFloat:dt] == 0 && generator_ == nil) {
    [((ReactSignal *) NIL_CHK(onEmpty_)) emitWithId:self];
  }
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayParticleEmitter *typedCopy = (TripleplayParticleEmitter *) copy;
  typedCopy.layer = layer_;
  typedCopy.generator = generator_;
  typedCopy.initters = initters_;
  typedCopy.effectors = effectors_;
  typedCopy.onExhausted = onExhausted_;
  typedCopy.onEmpty = onEmpty_;
  typedCopy._parts = _parts_;
  typedCopy._buffer = _buffer_;
  typedCopy._conn = _conn_;
}

@end
@implementation TripleplayParticleEmitter_$1

@synthesize this$0 = this$0_;

- (void)onEmit {
  [this$0_ destroy];
}

- (id)initWithTripleplayParticleEmitter:(TripleplayParticleEmitter *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayParticleEmitter_$1 *typedCopy = (TripleplayParticleEmitter_$1 *) copy;
  typedCopy.this$0 = this$0_;
}

@end
@implementation TripleplayParticleEmitter_$2

@synthesize this$0 = this$0_;
@synthesize val$image = val$image_;
@synthesize val$maxParticles = val$maxParticles_;

- (void)renderWithPlaynCoreSurface:(id<PlaynCoreSurface>)surface {
  int tex = [((id<PlaynCoreImage>) NIL_CHK(val$image_)) ensureTexture];
  [((TripleplayParticleParticleBuffer *) NIL_CHK(this$0_._buffer)) renderWithTripleplayParticleParticleShader:[((TripleplayParticleParticleShader *) NIL_CHK(this$0_._parts._shader)) prepareWithInt:tex withInt:val$maxParticles_] withFloat:[((id<PlaynCoreImage>) NIL_CHK(val$image_)) width] withFloat:[((id<PlaynCoreImage>) NIL_CHK(val$image_)) height]];
}

- (id)initWithTripleplayParticleEmitter:(TripleplayParticleEmitter *)outer$
                     withPlaynCoreImage:(id<PlaynCoreImage>)capture$0
                                withInt:(int)capture$1 {
  if ((self = [super init])) {
    this$0_ = outer$;
    val$image_ = capture$0;
    val$maxParticles_ = capture$1;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayParticleEmitter_$2 *typedCopy = (TripleplayParticleEmitter_$2 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.val$image = val$image_;
  typedCopy.val$maxParticles = val$maxParticles_;
}

@end
