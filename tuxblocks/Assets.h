//
//  AssetsIOS.h
//  tuxblocks
//
//  Created by Thomas on 7/2/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "playn/core/AbstractAssets.h"

@class Platform;

@interface Assets : PlaynCoreAbstractAssets {
    Platform* platform;
}

- (id) initWithPlatform:(Platform*)platform;

@end
