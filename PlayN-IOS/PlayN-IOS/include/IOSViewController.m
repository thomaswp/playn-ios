//
//  ViewController.m
//  tuxblocks
//
//  Created by Thomas on 7/1/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "IOSViewController.h"
#import "IOSPlatform.h"
#import "IOSPointer.h"
#import "PlayN.h"

@interface IOSViewController ()

@property (strong, nonatomic) EAGLContext *context;

- (void)setupGL;
- (void)tearDownGL;

@end

@implementation IOSViewController

- (id) initWithPlatform:(IOSPlatform *)platform_ {
    if (self = [super init]) {
        platform = platform_;
    }
    return self;
}

- (BOOL) shouldAutorotate {
    return NO;
}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return toInterfaceOrientation == UIDeviceOrientationPortrait;
}

- (void)dealloc
{
    [self tearDownGL];
    
    if ([EAGLContext currentContext] == self.context) {
        [EAGLContext setCurrentContext:nil];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    [[NSNotificationCenter defaultCenter]
             addObserver:self selector:@selector(orientationChanged:)
             name:UIDeviceOrientationDidChangeNotification
             object:[UIDevice currentDevice]];
    
    self.context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES2];

    if (!self.context) {
        NSLog(@"Failed to create ES context");
    }
    
    GLKView *view = (GLKView *)self.view;
    view.context = self.context;
    view.drawableDepthFormat = GLKViewDrawableDepthFormat24;
    
    [self setupGL];
}

- (void) orientationChanged:(NSNotification *)note {
    [platform onOrientationChangeWithOrient:[[UIDevice currentDevice] orientation]];
}

- (void)setupGL
{
    [EAGLContext setCurrentContext:self.context];
    
    [platform viewDidInitWithInt:0];
    self.preferredFramesPerSecond = [platform preferredFPS];
    
}


- (void)update
{
    [platform update];
}

- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect
{
    [platform paint];
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    IOSPointer* pointer = (IOSPointer*) [platform pointer];
    [pointer onTouchesBeganWithTouches:touches withEvent:event];
}

- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    IOSPointer* pointer = (IOSPointer*) [platform pointer];
    [pointer onTouchesMovedWithTouches:touches withEvent:event];
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    IOSPointer* pointer = (IOSPointer*) [platform pointer];
    [pointer onTouchesEndedWithTouches:touches withEvent:event];
}

- (void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    IOSPointer* pointer = (IOSPointer*) [platform pointer];
    [pointer onTouchesCancelledWithTouches:touches withEvent:event];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    if ([self isViewLoaded] && ([[self view] window] == nil)) {
        self.view = nil;
        
        [self tearDownGL];
        
        if ([EAGLContext currentContext] == self.context) {
            [EAGLContext setCurrentContext:nil];
        }
        self.context = nil;
    }
    
    // Dispose of any resources that can be recreated.
}

- (void)tearDownGL
{
    [EAGLContext setCurrentContext:self.context];
    
}

@end
