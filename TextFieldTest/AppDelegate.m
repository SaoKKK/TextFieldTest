//
//  AppDelegate.m
//  TextFieldTest
//
//  Created by 河野 さおり on 2016/03/07.
//  Copyright © 2016年 河野 さおり. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate{
    IBOutlet NSTextField *_txtField;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)pshPartOfText:(id)sender {
   NSMutableAttributedString *text = [[_txtField attributedStringValue] mutableCopy];
   NSDictionary *attr = @{NSFontAttributeName:[NSFont systemFontOfSize:11 weight:NSFontWeightBold]};
   NSRange range = [text.string rangeOfString:@"the font"];
   [text setAttributes:attr range:range];
   [_txtField setAttributedStringValue:text];
}

@end
