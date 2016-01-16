//
//  AppDelegate.h
//  NotifyMe
//
//  Created by Dave Kennedy on 21/05/2015.
//  Copyright (c) 2015 Dave Kennedy. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate, NSUserNotificationCenterDelegate>

@property IBOutlet NSTextField* title;
@property IBOutlet NSTextField* message;

- (IBAction)sendNotification:(id)sender;

@end

