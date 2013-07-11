//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/net/URISyntaxException.java
//
//  Created by tball on 6/22/13.
//

#import "JreEmulation.h"
#import "java/lang/Exception.h"

#define JavaNetURISyntaxException_serialVersionUID 2137979680897488891

@interface JavaNetURISyntaxException : JavaLangException {
 @public
  NSString *input_;
  int index_;
}

@property (nonatomic, copy) NSString *input;
@property (nonatomic, assign) int index;

- (id)initWithNSString:(NSString *)input
          withNSString:(NSString *)reason
               withInt:(int)index;
- (id)initWithNSString:(NSString *)input
          withNSString:(NSString *)reason;
- (int)getIndex;
- (NSString *)getReason;
- (NSString *)getInput;
- (NSString *)getMessage;
@end