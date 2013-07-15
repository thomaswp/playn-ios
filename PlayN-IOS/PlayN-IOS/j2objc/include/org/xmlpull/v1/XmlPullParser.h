//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/xml/src/main/java/org/xmlpull/v1/XmlPullParser.java
//
//  Created by tball on 6/22/13.
//

@class IOSCharArray;
@class IOSIntArray;
@class IOSObjectArray;
@class JavaIoInputStream;
@class JavaIoReader;

#import "JreEmulation.h"

#define OrgXmlpullV1XmlPullParser_CDSECT 5
#define OrgXmlpullV1XmlPullParser_COMMENT 9
#define OrgXmlpullV1XmlPullParser_DOCDECL 10
#define OrgXmlpullV1XmlPullParser_END_DOCUMENT 1
#define OrgXmlpullV1XmlPullParser_END_TAG 3
#define OrgXmlpullV1XmlPullParser_ENTITY_REF 6
#define OrgXmlpullV1XmlPullParser_IGNORABLE_WHITESPACE 7
#define OrgXmlpullV1XmlPullParser_PROCESSING_INSTRUCTION 8
#define OrgXmlpullV1XmlPullParser_START_DOCUMENT 0
#define OrgXmlpullV1XmlPullParser_START_TAG 2
#define OrgXmlpullV1XmlPullParser_TEXT 4

@protocol OrgXmlpullV1XmlPullParser < NSObject >
- (void)setFeatureWithNSString:(NSString *)name
                      withBOOL:(BOOL)state;
- (BOOL)getFeatureWithNSString:(NSString *)name;
- (void)setPropertyWithNSString:(NSString *)name
                         withId:(id)value;
- (id)getPropertyWithNSString:(NSString *)name;
- (void)setInputWithJavaIoReader:(JavaIoReader *)inArg;
- (void)setInputWithJavaIoInputStream:(JavaIoInputStream *)inputStream
                         withNSString:(NSString *)inputEncoding;
- (NSString *)getInputEncoding;
- (void)defineEntityReplacementTextWithNSString:(NSString *)entityName
                                   withNSString:(NSString *)replacementText;
- (int)getNamespaceCountWithInt:(int)depth;
- (NSString *)getNamespacePrefixWithInt:(int)pos;
- (NSString *)getNamespaceUriWithInt:(int)pos;
- (NSString *)getNamespaceWithNSString:(NSString *)prefix;
- (int)getDepth;
- (NSString *)getPositionDescription;
- (int)getLineNumber;
- (int)getColumnNumber;
- (BOOL)isWhitespace;
- (NSString *)getText;
- (IOSCharArray *)getTextCharactersWithJavaLangIntegerArray:(IOSIntArray *)holderForStartAndLength;
- (NSString *)getNamespace;
- (NSString *)getName;
- (NSString *)getPrefix;
- (BOOL)isEmptyElementTag;
- (int)getAttributeCount;
- (NSString *)getAttributeNamespaceWithInt:(int)index;
- (NSString *)getAttributeNameWithInt:(int)index;
- (NSString *)getAttributePrefixWithInt:(int)index;
- (NSString *)getAttributeTypeWithInt:(int)index;
- (BOOL)isAttributeDefaultWithInt:(int)index;
- (NSString *)getAttributeValueWithInt:(int)index;
- (NSString *)getAttributeValueWithNSString:(NSString *)namespace_
                               withNSString:(NSString *)name;
- (int)getEventType;
- (int)next;
- (int)nextToken;
- (void)requireWithInt:(int)type
          withNSString:(NSString *)namespace_
          withNSString:(NSString *)name;
- (NSString *)nextText;
- (int)nextTag;
@end

@interface OrgXmlpullV1XmlPullParser : NSObject {
}
+ (NSString *)NO_NAMESPACE;
+ (int)START_DOCUMENT;
+ (int)END_DOCUMENT;
+ (int)START_TAG;
+ (int)END_TAG;
+ (int)TEXT;
+ (int)CDSECT;
+ (int)ENTITY_REF;
+ (int)IGNORABLE_WHITESPACE;
+ (int)PROCESSING_INSTRUCTION;
+ (int)COMMENT;
+ (int)DOCDECL;
+ (IOSObjectArray *)TYPES;
+ (NSString *)FEATURE_PROCESS_NAMESPACES;
+ (NSString *)FEATURE_REPORT_NAMESPACE_ATTRIBUTES;
+ (NSString *)FEATURE_PROCESS_DOCDECL;
+ (NSString *)FEATURE_VALIDATION;
@end
