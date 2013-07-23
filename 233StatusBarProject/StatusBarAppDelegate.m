//
//  StatusBarAppDelegate.m
//  233StatusBarProject
//
//  Created by fuluchii on 13-7-22.
//  Copyright (c) 2013年 fuluchii. All rights reserved.
//

#import "StatusBarAppDelegate.h"

@implementation StatusBarAppDelegate

int minute;
int second;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    
    
    // Insert code here to initialize your application
}

- (void)awakeFromNib{
    statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [statusItem setMenu:statusMunu];
    [statusItem setImage:[NSImage imageNamed:@"233statusIcon"]];
    [statusItem setAlternateImage:[NSImage imageNamed:@"233statusIconAlt"]];
    [statusItem setHighlightMode:YES];
    period = [[NSNumber alloc] initWithInt:20];
    
    //delegate
    [statusMunu setDelegate:self];
}

- (void)menuWillOpen:(NSMenu*)menu{
    
}

- (void)decreaseTime{
    if (second == 0) {
        second = 59;
        minute--;
    }else{
        second --;
    }
    if(second == 0 && minute == 0){
        [self stopClock];
    }
    [self updateMenu];
}

- (IBAction)resetClock:(id)sender{
    minute = [period intValue];
    second = 1;
    [self updateMenu];
}

- (IBAction)startClock:(id)sender{
    minute = [period intValue];
    second = 1;
    NSRunLoop* nowLoop = [NSRunLoop currentRunLoop];
    NSTimer* timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(decreaseTime) userInfo:nil repeats:YES];
    [nowLoop addTimer:timer forMode:NSDefaultRunLoopMode];
    [sender setEnabled:FALSE];
    [self updateMenu];
}

- (void)stopClock{
    
}

- (void)updateMenu{
    [statusItem setTitle:[NSString stringWithFormat:@"%02d:%02d",minute,second]];
    [statusMunu update];
}

@end
