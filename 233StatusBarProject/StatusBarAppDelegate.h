//
//  StatusBarAppDelegate.h
//  233StatusBarProject
//
//  Created by fuluchii on 13-7-22.
//  Copyright (c) 2013年 fuluchii. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface StatusBarAppDelegate : NSObject <NSApplicationDelegate,NSMenuDelegate>{
    IBOutlet NSMenu *statusMunu;
    NSStatusItem *statusItem;
    
    NSNumber *period;
    
}

@end
