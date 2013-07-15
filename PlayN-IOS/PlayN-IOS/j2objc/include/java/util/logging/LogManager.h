//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: Classes/java/util/logging/LogManager.java
//
//  Created by tball on 6/22/13.
//

@class JavaUtilHashMap;

#import "JreEmulation.h"
#import "java/util/logging/Logger.h"

@interface JavaUtilLoggingLogManager : NSObject {
 @public
  JavaUtilHashMap *loggerList_;
  JavaUtilLoggingLogger *rootLogger_;
}

@property (nonatomic, retain) JavaUtilHashMap *loggerList;
@property (nonatomic, retain) JavaUtilLoggingLogger *rootLogger;

+ (JavaUtilLoggingLogManager *)singleton;
+ (void)setSingleton:(JavaUtilLoggingLogManager *)singleton;
+ (JavaUtilLoggingLogManager *)getLogManager;
- (id)init;
- (BOOL)addLoggerWithJavaUtilLoggingLogger:(JavaUtilLoggingLogger *)logger;
- (JavaUtilLoggingLogger *)getLoggerWithNSString:(NSString *)name;
- (void)addLoggerWithoutDuplicationCheckingWithJavaUtilLoggingLogger:(JavaUtilLoggingLogger *)logger;
- (JavaUtilLoggingLogger *)getOrAddLoggerWithNSString:(NSString *)name;
@end

@interface JavaUtilLoggingLogManager_RootLogger : JavaUtilLoggingLogger {
}

- (id)initWithJavaUtilLoggingLogManager:(JavaUtilLoggingLogManager *)outer$;
@end
