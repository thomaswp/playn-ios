//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/platform/NativeTextField.java
//
//  Created by Thomas on 7/10/13.
//

#import "java/lang/IllegalArgumentException.h"
#import "playn/core/Font.h"
#import "playn/core/Keyboard.h"
#import "pythagoras/f/IRectangle.h"
#import "react/Signal.h"
#import "react/Value.h"
#import "tripleplay/platform/NativeTextField.h"


static TripleplayPlatformNativeTextField_ModeEnum *TripleplayPlatformNativeTextField_ModeEnum_NORMAL;
static TripleplayPlatformNativeTextField_ModeEnum *TripleplayPlatformNativeTextField_ModeEnum_SECURE;
static TripleplayPlatformNativeTextField_ModeEnum *TripleplayPlatformNativeTextField_ModeEnum_MULTI_LINE;
IOSObjectArray *TripleplayPlatformNativeTextField_ModeEnum_values;

@implementation TripleplayPlatformNativeTextField_ModeEnum

+ (TripleplayPlatformNativeTextField_ModeEnum *)NORMAL {
  return TripleplayPlatformNativeTextField_ModeEnum_NORMAL;
}
+ (TripleplayPlatformNativeTextField_ModeEnum *)SECURE {
  return TripleplayPlatformNativeTextField_ModeEnum_SECURE;
}
+ (TripleplayPlatformNativeTextField_ModeEnum *)MULTI_LINE {
  return TripleplayPlatformNativeTextField_ModeEnum_MULTI_LINE;
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

- (id)initWithNSString:(NSString *)name withInt:(int)ordinal {
  return [super initWithNSString:name withInt:ordinal];
}

+ (void)initialize {
  if (self == [TripleplayPlatformNativeTextField_ModeEnum class]) {
    TripleplayPlatformNativeTextField_ModeEnum_NORMAL = [[TripleplayPlatformNativeTextField_ModeEnum alloc] initWithNSString:@"NORMAL" withInt:0];
    TripleplayPlatformNativeTextField_ModeEnum_SECURE = [[TripleplayPlatformNativeTextField_ModeEnum alloc] initWithNSString:@"SECURE" withInt:1];
    TripleplayPlatformNativeTextField_ModeEnum_MULTI_LINE = [[TripleplayPlatformNativeTextField_ModeEnum alloc] initWithNSString:@"MULTI_LINE" withInt:2];
    TripleplayPlatformNativeTextField_ModeEnum_values = [[IOSObjectArray alloc] initWithObjects:(id[]){ TripleplayPlatformNativeTextField_ModeEnum_NORMAL, TripleplayPlatformNativeTextField_ModeEnum_SECURE, TripleplayPlatformNativeTextField_ModeEnum_MULTI_LINE, nil } count:3 type:[IOSClass classWithClass:[TripleplayPlatformNativeTextField_ModeEnum class]]];
  }
}

+ (IOSObjectArray *)values {
  return [IOSObjectArray arrayWithArray:TripleplayPlatformNativeTextField_ModeEnum_values];
}

+ (TripleplayPlatformNativeTextField_ModeEnum *)valueOfWithNSString:(NSString *)name {
  for (int i = 0; i < [TripleplayPlatformNativeTextField_ModeEnum_values count]; i++) {
    TripleplayPlatformNativeTextField_ModeEnum *e = [TripleplayPlatformNativeTextField_ModeEnum_values objectAtIndex:i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

@end
