//
//  JP_HIDEventManager.h
//  JoyPadDocker
//
//  Created by David Lewis on 12/17/14.
//  Copyright (c) 2014 David Lewis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JP_HIDEvent.h"

@interface JP_EventManager : NSObject<JP_HIDEventsDelegate>
// To house the following example: @"0x7C" >> @"ArrowRight"
@property (strong, nonatomic) NSArray *currentEvents;
@property (strong, nonatomic) NSTimer *eventTimer;
- (JP_HIDEventState)createEvent:(CGKeyCode)keyCode;
- (JP_HIDEventState)destroyEvent:(CGKeyCode)keyCode;
- (void)updateState:(NSData *)newStateData;
- (void)updateConfig:(NSData *)newConfigData;
@end