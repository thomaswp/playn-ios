//
//  ViewController.m
//  PlayN-IOSSample
//
//  Created by Thomas on 7/10/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "ViewController.h"
#import "playn/sample/hello/core/HelloGame.h"
#import "playn/core/PlayN.h"


@implementation ViewController

- (void) viewDidLoad {
    [@"Hello" replace:@"moo" withSequence:@"go"];
    [super viewDidLoad];
    PlaynSampleHelloCoreHelloGame* game = [[PlaynSampleHelloCoreHelloGame alloc] init];
    [PlaynCorePlayN runWithPlaynCoreGame:game];
}

@end
