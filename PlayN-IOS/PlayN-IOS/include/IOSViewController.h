//
//  ViewController.h
//  tuxblocks
//
//  Created by Thomas on 7/1/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GLKit/GLKit.h>
@class IOSPlatform;

@interface IOSViewController : GLKViewController {
    IOSPlatform* platform;
}

- (id) initWithPlatform:(IOSPlatform*) platform;

@end
