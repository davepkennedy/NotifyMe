//
//  AppDelegate.m
//  NotifyMe
//
//  Created by Dave Kennedy on 21/05/2015.
//  Copyright (c) 2015 Dave Kennedy. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    [[NSUserNotificationCenter defaultUserNotificationCenter] setDelegate:self];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)sendNotification:(id)sender
{
    NSUserNotification *notification = [[NSUserNotification alloc] init];
    notification.title = [self.title stringValue];
    notification.informativeText = [self.message stringValue];
    notification.soundName = NSUserNotificationDefaultSoundName;
    
    [[NSUserNotificationCenter defaultUserNotificationCenter] deliverNotification:notification];

}

- (BOOL) userNotificationCenter:(NSUserNotificationCenter *)center
      shouldPresentNotification:(NSUserNotification *)notification
{
    return YES;
}

@end
