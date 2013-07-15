//
//  IOSKeyboard.m
//  PlayN-IOS
//
//  Created by Thomas on 7/12/13.
//  Copyright (c) 2013 Thomas. All rights reserved.
//

#import "IOSKeyboard.h"
#import "playn/core/PlayN.h"
#import "playn/core/Log.h"
#import "playn/core/util/Callback.h"

@implementation IOSKeyboard

- (void) setListenerWithPlaynCoreKeyboard_Listener:(id<PlaynCoreKeyboard_Listener>)listener {
    [[PlaynCorePlayN log] warnWithNSString:@"iOS cannot generate keyboard events. Use Keyboard.getText() instead"];
}

- (BOOL) hasHardwareKeyboard {
    return false;
}

- (void) getTextWithPlaynCoreKeyboard_TextTypeEnum:(PlaynCoreKeyboard_TextTypeEnum *)textType withNSString:(NSString *)label withNSString:(NSString *)initialValue withPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback_ {
    UIAlertView* view = [[UIAlertView alloc] init];
    if (label != nil) {
        [view setTitle:label];
    }
    [view addButtonWithTitle:@"Cancel"];
    [view addButtonWithTitle:@"OK"];
    [view setAlertViewStyle:UIAlertViewStylePlainTextInput];
    
    field = [view textFieldAtIndex:0];
    [field setReturnKeyType:UIReturnKeyDone];
    if (initialValue != nil) {
        [field setText:initialValue];
    }

    if (textType == [PlaynCoreKeyboard_TextTypeEnum NUMBER]) {
        [field setKeyboardType:UIKeyboardTypeNumberPad];
    } else if (textType == [PlaynCoreKeyboard_TextTypeEnum EMAIL]) {
        [field setKeyboardType:UIKeyboardTypeEmailAddress];
    } else if (textType == [PlaynCoreKeyboard_TextTypeEnum URL]) {
        [field setKeyboardType:UIKeyboardTypeURL];
    } else {
        [field setKeyboardType:UIKeyboardTypeDefault];
    }

    [field setAutocorrectionType:UITextAutocorrectionTypeYes];
    [field setAutocapitalizationType:UITextAutocapitalizationTypeSentences];
    [field setSecureTextEntry:NO];
    
    callback = callback_;
    [view setDelegate:self];
    
    [view show];
}

- (void) alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    [callback onSuccessWithId:buttonIndex == 0 ? nil : [field text]];
    callback = nil;
    field = nil;
}

- (void) alertViewCancel:(UIAlertView *)alertView {
    [callback onSuccessWithId:nil];
    callback = nil;
    field = nil;
}

@end
