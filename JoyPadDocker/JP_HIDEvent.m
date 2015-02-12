//
//  JP_HIDEvent.m
//  JoyPadDocker
//
//  Created by David Lewis on 12/24/14.
//  Copyright (c) 2014 David Lewis. All rights reserved.
//

#import "JP_HIDEvent.h"
@protocol JP_HIDEventsDelegate;
@implementation JP_HIDEvent {
    JP_HIDEventState currentState;
}
@synthesize staticEventKey;

- (id)initWithKey:(CGKeyCode)keyCode andDelegate:(id)delegate {
    self = [super init];
    if (self && delegate) {
        staticEventKey = keyCode;
        if ( [delegate
             conformsToProtocol:@protocol(JP_HIDEventsDelegate)] )
        {
            currentState = JP_HIDEventInactive;
            self.delegate = delegate;
        }
        else NSLog(@"%@ does not conform to JP_HIDKeyEventsDelegate PROTOCOL!", [delegate identifier]);
    }
    NSLog(@"JP_HIDKeyEvent: %u",[self state]);
    return self;
}

- (void)depressKey:(CGKeyCode)key {
    currentState = JP_HIDEventShouldStart;
    // Code to perform action on `key`.
    
    currentState = JP_HIDEventActive;
}

- (void)releaseKey:(CGKeyCode)key {
    currentState = JP_HIDEventShouldStop;
    // Code to perform action on `key`.
    
    currentState = JP_HIDEventInactive;
}

#pragma mark - JP_HIDEventDelegate Implementation
- (JP_HIDEventState)beginEvent {
    if (staticEventKey != (CGKeyCode)0xFF)
        [self depressKey:[self staticEventKey]];
    return currentState;
}

- (JP_HIDEventState)stopEvent {
    if (staticEventKey != (CGKeyCode)0xFF)
        [self releaseKey:[self staticEventKey]];
    return currentState;
}

- (JP_HIDEventState)state {
    return currentState;
}

@end
