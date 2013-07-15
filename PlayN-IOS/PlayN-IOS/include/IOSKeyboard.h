//
//  IOSKeyboard.h
//  PlayN-IOS
//
//  Created by Thomas on 7/12/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "playn/core/Keyboard.h"

@class PlaynCoreUtilCallback;

@interface IOSKeyboard : NSObject<PlaynCoreKeyboard, UIAlertViewDelegate> {
    id<PlaynCoreUtilCallback> callback;
    UITextField* field;
}

@end
