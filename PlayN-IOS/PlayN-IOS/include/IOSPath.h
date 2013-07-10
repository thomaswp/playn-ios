//
//  IOSPath.h
//  tuxblocks
//
//  Created by Thomas on 7/9/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "playn/core/Path.h"

@interface IOSPath : NSObject<PlaynCorePath> {
    @public CGMutablePathRef cgPath;
}

@end
