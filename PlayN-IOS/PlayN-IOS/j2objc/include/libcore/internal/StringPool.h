//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/libcore/internal/StringPool.java
//
//  Created by tball on 6/22/13.
//

@class IOSCharArray;
@class IOSObjectArray;

#import "JreEmulation.h"

@interface LibcoreInternalStringPool : NSObject {
 @public
  IOSObjectArray *pool_;
}

@property (nonatomic, retain) IOSObjectArray *pool;

+ (BOOL)contentEqualsWithNSString:(NSString *)s
       withJavaLangCharacterArray:(IOSCharArray *)chars
                          withInt:(int)start
                          withInt:(int)length;
- (NSString *)getWithJavaLangCharacterArray:(IOSCharArray *)array
                                    withInt:(int)start
                                    withInt:(int)length;
- (id)init;
@end
