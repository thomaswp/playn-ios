//
//  ViewController.m
//  PlayN-IOSSample
//
//  Created by Thomas on 7/10/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "ViewController.h"
#import "playn/core/PlayN.h"
#import "playn/sample/hello/core/HelloGame.h"
#import "playn/sample/cute/core/CuteGame.h"
#import "playn/showcase/core/Showcase.h"
//#import "tuxkids/tuxblocks/core/TuxBlocksGame.h"


@implementation ViewController

- (void) viewDidLoad {
    [@"Hello" replace:@"moo" withSequence:@"go"];
    [super viewDidLoad];
//    PlaynSampleHelloCoreHelloGame* game = [[PlaynSampleHelloCoreHelloGame alloc] init];
//    TuxkidsTuxblocksCoreTuxBlocksGame* game = [[TuxkidsTuxblocksCoreTuxBlocksGame alloc] init];
    PlaynSampleCuteCoreCuteGame* game = [[PlaynSampleCuteCoreCuteGame alloc] init];
//    PlaynShowcaseCoreShowcase* game = [[PlaynShowcaseCoreShowcase alloc] initWithPlaynShowcaseCoreShowcase_DeviceService:nil];
    [PlaynCorePlayN runWithPlaynCoreGame:game];
}

@end
