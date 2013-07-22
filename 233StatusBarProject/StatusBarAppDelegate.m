//
//  StatusBarAppDelegate.m
//  233StatusBarProject
//
//  Created by fuluchii on 13-7-22.
//  Copyright (c) 2013年 fuluchii. All rights reserved.
//

#import "StatusBarAppDelegate.h"

@implementation StatusBarAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    
    // Insert code here to initialize your application
}

- (void)awakeFromNib{
    statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [statusItem setMenu:statusMunu];
    [statusItem setTitle:@"233Clock"];
    [statusItem setHighlightMode:YES];
    
}

@end
