//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/TextFormat.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PlaynCoreTextFormat_RESTRICT
#define PlaynCoreTextFormat_INCLUDE_ALL 1
#endif
#undef PlaynCoreTextFormat_RESTRICT
#if PlaynCoreTextFormat_AlignmentEnum_$3_INCLUDE
#define PlaynCoreTextFormat_AlignmentEnum_INCLUDE 1
#endif
#if PlaynCoreTextFormat_AlignmentEnum_$2_INCLUDE
#define PlaynCoreTextFormat_AlignmentEnum_INCLUDE 1
#endif
#if PlaynCoreTextFormat_AlignmentEnum_$1_INCLUDE
#define PlaynCoreTextFormat_AlignmentEnum_INCLUDE 1
#endif

#if !defined (_PlaynCoreTextFormat_) && (PlaynCoreTextFormat_INCLUDE_ALL || PlaynCoreTextFormat_INCLUDE)
#define _PlaynCoreTextFormat_

@class PlaynCoreTextFormat_AlignmentEnum;
@protocol PlaynCoreFont;

@interface PlaynCoreTextFormat : NSObject {
 @public
  id<PlaynCoreFont> font_;
  float wrapWidth_;
  PlaynCoreTextFormat_AlignmentEnum *align_;
}

@property (nonatomic, strong) id<PlaynCoreFont> font;
@property (nonatomic, assign) float wrapWidth;
@property (nonatomic, strong) PlaynCoreTextFormat_AlignmentEnum *align;

- (id)init;
- (id)initWithPlaynCoreFont:(id<PlaynCoreFont>)font
                  withFloat:(float)wrapWidth
withPlaynCoreTextFormat_AlignmentEnum:(PlaynCoreTextFormat_AlignmentEnum *)align;
- (BOOL)shouldWrap;
- (PlaynCoreTextFormat *)withFontWithPlaynCoreFont:(id<PlaynCoreFont>)font;
- (PlaynCoreTextFormat *)withWrappingWithFloat:(float)wrapWidth
         withPlaynCoreTextFormat_AlignmentEnum:(PlaynCoreTextFormat_AlignmentEnum *)align;
- (PlaynCoreTextFormat *)withWrapWidthWithFloat:(float)wrapWidth;
- (PlaynCoreTextFormat *)withAlignmentWithPlaynCoreTextFormat_AlignmentEnum:(PlaynCoreTextFormat_AlignmentEnum *)align;
- (NSString *)description;
- (BOOL)isEqual:(id)other;
- (NSUInteger)hash;
@end
#endif

#if !defined (_PlaynCoreTextFormat_AlignmentEnum_) && (PlaynCoreTextFormat_INCLUDE_ALL || PlaynCoreTextFormat_AlignmentEnum_INCLUDE)
#define _PlaynCoreTextFormat_AlignmentEnum_

#define JavaLangEnum_RESTRICT 1
#define JavaLangEnum_INCLUDE 1
#include "java/lang/Enum.h"

typedef enum {
  PlaynCoreTextFormat_Alignment_LEFT = 0,
  PlaynCoreTextFormat_Alignment_CENTER = 1,
  PlaynCoreTextFormat_Alignment_RIGHT = 2,
} PlaynCoreTextFormat_Alignment;

@interface PlaynCoreTextFormat_AlignmentEnum : JavaLangEnum < NSCopying > {
}
+ (PlaynCoreTextFormat_AlignmentEnum *)LEFT;
+ (PlaynCoreTextFormat_AlignmentEnum *)CENTER;
+ (PlaynCoreTextFormat_AlignmentEnum *)RIGHT;
+ (IOSObjectArray *)values;
+ (PlaynCoreTextFormat_AlignmentEnum *)valueOfWithNSString:(NSString *)name;
- (id)copyWithZone:(NSZone *)zone;
- (float)getXWithFloat:(float)textWidth
             withFloat:(float)lineWidth;
- (id)initWithNSString:(NSString *)name withInt:(int)ordinal;
@end
#endif

#if !defined (_PlaynCoreTextFormat_AlignmentEnum_$1_) && (PlaynCoreTextFormat_INCLUDE_ALL || PlaynCoreTextFormat_AlignmentEnum_$1_INCLUDE)
#define _PlaynCoreTextFormat_AlignmentEnum_$1_

@interface PlaynCoreTextFormat_AlignmentEnum_$1 : PlaynCoreTextFormat_AlignmentEnum {
}

- (float)getXWithFloat:(float)textWidth
             withFloat:(float)lineWidth;
- (id)initWithNSString:(NSString *)name withInt:(int)ordinal;
@end
#endif

#if !defined (_PlaynCoreTextFormat_AlignmentEnum_$2_) && (PlaynCoreTextFormat_INCLUDE_ALL || PlaynCoreTextFormat_AlignmentEnum_$2_INCLUDE)
#define _PlaynCoreTextFormat_AlignmentEnum_$2_

@interface PlaynCoreTextFormat_AlignmentEnum_$2 : PlaynCoreTextFormat_AlignmentEnum {
}

- (float)getXWithFloat:(float)textWidth
             withFloat:(float)lineWidth;
- (id)initWithNSString:(NSString *)name withInt:(int)ordinal;
@end
#endif

#if !defined (_PlaynCoreTextFormat_AlignmentEnum_$3_) && (PlaynCoreTextFormat_INCLUDE_ALL || PlaynCoreTextFormat_AlignmentEnum_$3_INCLUDE)
#define _PlaynCoreTextFormat_AlignmentEnum_$3_

@interface PlaynCoreTextFormat_AlignmentEnum_$3 : PlaynCoreTextFormat_AlignmentEnum {
}

- (float)getXWithFloat:(float)textWidth
             withFloat:(float)lineWidth;
- (id)initWithNSString:(NSString *)name withInt:(int)ordinal;
@end
#endif
