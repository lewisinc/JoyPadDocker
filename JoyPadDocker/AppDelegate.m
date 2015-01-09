//
//  AppDelegate.m
//  JoyPadDocker
//
//  Created by David Lewis on 12/17/14.
//  Copyright (c) 2014 David Lewis. All rights reserved.
//

#import "AppDelegate.h"
@class JP_HIDEventManager;

@interface AppDelegate ()
@property JP_HIDEventManager* eventManager;
@end

@implementation AppDelegate
@synthesize eventManager;
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
     eventManager = [[JP_HIDEventManager alloc] init];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
