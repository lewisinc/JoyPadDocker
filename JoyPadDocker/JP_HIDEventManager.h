//
//  JP_HIDEventManager.h
//  JoyPadDocker
//
//  Created by David Lewis on 12/17/14.
//  Copyright (c) 2014 David Lewis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JP_HIDEvent.h"

@interface JP_HIDEventManager : NSObject
// To house the following example: @"0x7C" >> @"ArrowRight"
@property (strong, nonatomic) NSDictionary *keyCodeRepresentations;
@property (strong, nonatomic) NSArray *currentEvents;
@property (strong, nonatomic) NSTimer *eventTimer;
- (CGKeyCode)keycodeFromString:(NSString *)string;

@end
