//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: react/MappedValue.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !ReactMappedValue_RESTRICT
#define ReactMappedValue_INCLUDE_ALL 1
#endif
#undef ReactMappedValue_RESTRICT

#if !defined (_ReactMappedValue_) && (ReactMappedValue_INCLUDE_ALL || ReactMappedValue_INCLUDE)
#define _ReactMappedValue_

@protocol ReactConnection;

#define ReactAbstractValue_RESTRICT 1
#define ReactAbstractValue_INCLUDE 1
#include "react/AbstractValue.h"

@interface ReactMappedValue : ReactAbstractValue {
 @public
  id<ReactConnection> _conn_;
}

@property (nonatomic, strong) id<ReactConnection> _conn;

- (id<ReactConnection>)connect;
- (void)connectionAdded;
- (void)connectionRemoved;
- (id)init;
@end
#endif
