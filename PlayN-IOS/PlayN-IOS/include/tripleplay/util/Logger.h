//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/util/Logger.java
//
//  Created by Thomas on 7/10/13.
//

@class IOSObjectArray;
@class JavaLangStringBuilder;
@class JavaLangThrowable;
@class TripleplayUtilLogger_LevelEnum;
@class TripleplayUtilLogger_Levels;
@protocol JavaUtilMap;
@protocol TripleplayUtilLogger_Impl;

#import "JreEmulation.h"
#import "java/lang/Enum.h"

@interface TripleplayUtilLogger : NSObject {
 @public
  NSString *_ident_;
}

@property (nonatomic, copy) NSString *_ident;

+ (TripleplayUtilLogger_Levels *)levels;
+ (void)setLevels:(TripleplayUtilLogger_Levels *)levels;
+ (id<TripleplayUtilLogger_Impl>)DEFAULT;
+ (id<TripleplayUtilLogger_Impl>)_impl;
+ (void)set_impl:(id<TripleplayUtilLogger_Impl>)_impl;
+ (void)setImplWithTripleplayUtilLogger_Impl:(id<TripleplayUtilLogger_Impl>)impl;
+ (NSString *)formatWithNSObjectArray:(IOSObjectArray *)args;
+ (JavaLangStringBuilder *)formatWithJavaLangStringBuilder:(JavaLangStringBuilder *)into
                                         withNSObjectArray:(IOSObjectArray *)args;
- (id)initWithNSString:(NSString *)ident;
- (BOOL)shouldLogWithTripleplayUtilLogger_LevelEnum:(TripleplayUtilLogger_LevelEnum *)level;
- (void)debugWithNSString:(NSString *)message
        withNSObjectArray:(IOSObjectArray *)args;
- (void)infoWithNSString:(NSString *)message
       withNSObjectArray:(IOSObjectArray *)args;
- (void)warningWithNSString:(NSString *)message
          withNSObjectArray:(IOSObjectArray *)args;
- (void)errorWithNSString:(NSString *)message
        withNSObjectArray:(IOSObjectArray *)args;
- (void)logWithTripleplayUtilLogger_LevelEnum:(TripleplayUtilLogger_LevelEnum *)level
                                 withNSString:(NSString *)ident
                                 withNSString:(NSString *)message
                            withNSObjectArray:(IOSObjectArray *)args;
@end

typedef enum {
  TripleplayUtilLogger_Level_DEBUG = 0,
  TripleplayUtilLogger_Level_INFO = 1,
  TripleplayUtilLogger_Level_WARNING = 2,
  TripleplayUtilLogger_Level_ERROR = 3,
  TripleplayUtilLogger_Level_OFF = 4,
} TripleplayUtilLogger_Level;

@interface TripleplayUtilLogger_LevelEnum : JavaLangEnum < NSCopying > {
}
+ (TripleplayUtilLogger_LevelEnum *)DEBUG_;
+ (TripleplayUtilLogger_LevelEnum *)INFO;
+ (TripleplayUtilLogger_LevelEnum *)WARNING;
+ (TripleplayUtilLogger_LevelEnum *)ERROR;
+ (TripleplayUtilLogger_LevelEnum *)OFF;
+ (IOSObjectArray *)values;
+ (TripleplayUtilLogger_LevelEnum *)valueOfWithNSString:(NSString *)name;
- (id)copyWithZone:(NSZone *)zone;
- (id)initWithNSString:(NSString *)name withInt:(int)ordinal;
@end

@interface TripleplayUtilLogger_Levels : NSObject {
 @public
  TripleplayUtilLogger_LevelEnum *_defaultLevel_;
  id<JavaUtilMap> _levels_;
}

@property (nonatomic, strong) TripleplayUtilLogger_LevelEnum *_defaultLevel;
@property (nonatomic, strong) id<JavaUtilMap> _levels;

- (TripleplayUtilLogger_Levels *)setDefaultWithTripleplayUtilLogger_LevelEnum:(TripleplayUtilLogger_LevelEnum *)level;
- (TripleplayUtilLogger_Levels *)setWithNSString:(NSString *)ident
              withTripleplayUtilLogger_LevelEnum:(TripleplayUtilLogger_LevelEnum *)level;
- (TripleplayUtilLogger_Levels *)setWithTripleplayUtilLogger:(TripleplayUtilLogger *)logger
                          withTripleplayUtilLogger_LevelEnum:(TripleplayUtilLogger_LevelEnum *)level;
- (TripleplayUtilLogger_LevelEnum *)defaultLevel;
- (TripleplayUtilLogger_LevelEnum *)levelWithNSString:(NSString *)ident;
- (BOOL)shouldLogWithTripleplayUtilLogger_LevelEnum:(TripleplayUtilLogger_LevelEnum *)level
                                       withNSString:(NSString *)ident;
- (id)init;
@end

@protocol TripleplayUtilLogger_Impl < NSObject >
- (void)logWithTripleplayUtilLogger_LevelEnum:(TripleplayUtilLogger_LevelEnum *)level
                                 withNSString:(NSString *)ident
                                 withNSString:(NSString *)message
                        withJavaLangThrowable:(JavaLangThrowable *)t;
@end

@interface TripleplayUtilLogger_PlayNImpl : NSObject < TripleplayUtilLogger_Impl > {
}

- (void)logWithTripleplayUtilLogger_LevelEnum:(TripleplayUtilLogger_LevelEnum *)level
                                 withNSString:(NSString *)ident
                                 withNSString:(NSString *)message
                        withJavaLangThrowable:(JavaLangThrowable *)t;
- (id)init;
@end

@interface TripleplayUtilLogger_$1 : NSObject < TripleplayUtilLogger_Impl > {
}

- (void)logWithTripleplayUtilLogger_LevelEnum:(TripleplayUtilLogger_LevelEnum *)level
                                 withNSString:(NSString *)ident
                                 withNSString:(NSString *)message
                        withJavaLangThrowable:(JavaLangThrowable *)t;
- (id)init;
@end
