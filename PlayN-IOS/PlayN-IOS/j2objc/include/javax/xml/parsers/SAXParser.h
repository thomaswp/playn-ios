//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/javax/xml/parsers/SAXParser.java
//
//  Created by tball on 6/22/13.
//

@class JavaIoFile;
@class JavaIoInputStream;
@class JavaxXmlValidationSchema;
@class OrgXmlSaxHandlerBase;
@class OrgXmlSaxHelpersDefaultHandler;
@class OrgXmlSaxInputSource;
@protocol OrgXmlSaxParser;
@protocol OrgXmlSaxXMLReader;

#import "JreEmulation.h"

#define JavaxXmlParsersSAXParser_DEBUG FALSE

@interface JavaxXmlParsersSAXParser : NSObject {
}

- (id)init;
- (void)reset;
- (void)parseWithJavaIoInputStream:(JavaIoInputStream *)is
          withOrgXmlSaxHandlerBase:(OrgXmlSaxHandlerBase *)hb;
- (void)parseWithJavaIoInputStream:(JavaIoInputStream *)is
          withOrgXmlSaxHandlerBase:(OrgXmlSaxHandlerBase *)hb
                      withNSString:(NSString *)systemId;
- (void)parseWithJavaIoInputStream:(JavaIoInputStream *)is
withOrgXmlSaxHelpersDefaultHandler:(OrgXmlSaxHelpersDefaultHandler *)dh;
- (void)parseWithJavaIoInputStream:(JavaIoInputStream *)is
withOrgXmlSaxHelpersDefaultHandler:(OrgXmlSaxHelpersDefaultHandler *)dh
                      withNSString:(NSString *)systemId;
- (void)parseWithNSString:(NSString *)uri
 withOrgXmlSaxHandlerBase:(OrgXmlSaxHandlerBase *)hb;
- (void)parseWithNSString:(NSString *)uri
withOrgXmlSaxHelpersDefaultHandler:(OrgXmlSaxHelpersDefaultHandler *)dh;
- (void)parseWithJavaIoFile:(JavaIoFile *)f
   withOrgXmlSaxHandlerBase:(OrgXmlSaxHandlerBase *)hb;
- (void)parseWithJavaIoFile:(JavaIoFile *)f
withOrgXmlSaxHelpersDefaultHandler:(OrgXmlSaxHelpersDefaultHandler *)dh;
- (void)parseWithOrgXmlSaxInputSource:(OrgXmlSaxInputSource *)is
             withOrgXmlSaxHandlerBase:(OrgXmlSaxHandlerBase *)hb;
- (void)parseWithOrgXmlSaxInputSource:(OrgXmlSaxInputSource *)is
   withOrgXmlSaxHelpersDefaultHandler:(OrgXmlSaxHelpersDefaultHandler *)dh;
- (id<OrgXmlSaxParser>)getParser;
- (id<OrgXmlSaxXMLReader>)getXMLReader;
- (BOOL)isNamespaceAware;
- (BOOL)isValidating;
- (void)setPropertyWithNSString:(NSString *)name
                         withId:(id)value;
- (id)getPropertyWithNSString:(NSString *)name;
- (JavaxXmlValidationSchema *)getSchema;
- (BOOL)isXIncludeAware;
@end
