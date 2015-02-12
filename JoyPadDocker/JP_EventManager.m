//
//  JP_HIDEventManager.m
//  JoyPadDocker
//
//  Created by David Lewis on 12/17/14.
//  Copyright (c) 2014 David Lewis. All rights reserved.
//

#import "JP_EventManager.h"

@implementation JP_EventManager

@synthesize currentEvents;
@synthesize eventTimer;

- (id)init {
    self = [super init];
    if (self) {
        
    }
    
    return self;
}
- (JP_HIDEventState)state:(JP_HIDEvent *)event; {
    return [event state];
}
- (void)tick {
    for (JP_HIDEvent *event in currentEvents) {
        [event tock];
    }
}

- (JP_HIDEventState)beginEvent:(CGKeyCode)keyCode {
    return 0;
}

- (JP_HIDEventState)stopEvent:(CGKeyCode)keyCode {
    return 0;
}


@end
