//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/GregorianCalendar.java
//
//  Created by tball on 6/22/13.
//

@class IOSByteArray;
@class IOSIntArray;
@class JavaUtilDate;
@class JavaUtilLocale;
@class JavaUtilTimeZone;

#import "JreEmulation.h"
#import "java/util/Calendar.h"

#define JavaUtilGregorianCalendar_AD 1
#define JavaUtilGregorianCalendar_BC 0
#define JavaUtilGregorianCalendar_defaultGregorianCutover -12219292800000
#define JavaUtilGregorianCalendar_serialVersionUID -8125100834729963327

@interface JavaUtilGregorianCalendar : JavaUtilCalendar {
 @public
  long long int gregorianCutover_;
  int changeYear_;
  int julianSkew_;
  int currentYearSkew_;
  int lastYearSkew_;
}

@property (nonatomic, assign) long long int gregorianCutover;
@property (nonatomic, assign) int changeYear;
@property (nonatomic, assign) int julianSkew;
@property (nonatomic, assign) int currentYearSkew;
@property (nonatomic, assign) int lastYearSkew;

+ (int)BC;
+ (int)AD;
+ (IOSByteArray *)DaysInMonth;
+ (void)setDaysInMonth:(IOSByteArray *)DaysInMonth;
+ (IOSIntArray *)DaysInYear;
+ (void)setDaysInYear:(IOSIntArray *)DaysInYear;
+ (IOSIntArray *)maximums;
+ (void)setMaximums:(IOSIntArray *)maximums;
+ (IOSIntArray *)minimums;
+ (void)setMinimums:(IOSIntArray *)minimums;
+ (IOSIntArray *)leastMaximums;
+ (void)setLeastMaximums:(IOSIntArray *)leastMaximums;
- (id)init;
- (id)initWithInt:(int)year
          withInt:(int)month
          withInt:(int)day;
- (id)initWithInt:(int)year
          withInt:(int)month
          withInt:(int)day
          withInt:(int)hour
          withInt:(int)minute;
- (id)initWithInt:(int)year
          withInt:(int)month
          withInt:(int)day
          withInt:(int)hour
          withInt:(int)minute
          withInt:(int)second;
- (id)initWithLongInt:(long long int)milliseconds;
- (id)initWithJavaUtilLocale:(JavaUtilLocale *)locale;
- (id)initWithJavaUtilTimeZone:(JavaUtilTimeZone *)timezone;
- (id)initWithJavaUtilTimeZone:(JavaUtilTimeZone *)timezone
            withJavaUtilLocale:(JavaUtilLocale *)locale;
- (id)initWithBOOL:(BOOL)ignored;
- (void)addWithInt:(int)field
           withInt:(int)value;
- (void)fullFieldsCalcWithLongInt:(long long int)timeVal
                          withInt:(int)zoneOffset;
- (void)computeFields;
- (void)computeTime;
- (int)computeYearAndDayWithLongInt:(long long int)dayCount
                        withLongInt:(long long int)localTime;
- (long long int)daysFromBaseYearWithLongInt:(long long int)year;
- (int)daysInMonth;
- (int)daysInMonthWithBOOL:(BOOL)leapYear
                   withInt:(int)month;
- (int)daysInYearWithInt:(int)year;
- (int)daysInYearWithBOOL:(BOOL)leapYear
                  withInt:(int)month;
- (BOOL)isEqual:(id)object;
- (int)getActualMaximumWithInt:(int)field;
- (int)getActualMinimumWithInt:(int)field;
- (int)getGreatestMinimumWithInt:(int)field;
- (JavaUtilDate *)getGregorianChange;
- (int)getLeastMaximumWithInt:(int)field;
- (int)getMaximumWithInt:(int)field;
- (int)getMinimumWithInt:(int)field;
- (int)getOffsetWithLongInt:(long long int)localTime;
- (NSUInteger)hash;
- (BOOL)isLeapYearWithInt:(int)year;
- (int)julianError;
- (int)modWithInt:(int)value
          withInt:(int)mod;
- (int)mod7WithLongInt:(long long int)num1;
- (void)rollWithInt:(int)field
            withInt:(int)value;
- (void)rollWithInt:(int)field
           withBOOL:(BOOL)increment;
- (void)setGregorianChangeWithJavaUtilDate:(JavaUtilDate *)date;
@end
