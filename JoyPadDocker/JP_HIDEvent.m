//
//  JP_HIDEvent.m
//  JoyPadDocker
//
//  Created by David Lewis on 12/24/14.
//  Copyright (c) 2014 David Lewis. All rights reserved.
//

#import "JP_HIDEvent.h"

@implementation JP_HIDEvent {
    
}
@synthesize staticEventKey;

- (id)initWithKey:(CGKeyCode)keyCode andDelegate:(id)delegate {
    self = [super init];
    if (self && delegate) {
        staticEventKey = keyCode;
        if ([delegate conformsToProtocol:@protocol(JP_HIDEventsDelegate) ])
        {
            self.delegate = delegate;
        } else NSLog(@"%@ does not conform to JP_HIDKeyEventDelegate PROTOCOL!", [delegate identifier]);
    }
    NSLog(@"JP_HIDKeyEvent: %u",[self state]);
    return self;
}

- (void)depressKey:(CGKeyCode)key {
    
}

#pragma mark - JP_HIDEventDelegate Implementation
- (void)beginEvent {
    
}

- (void)stopEvent {
    
}

- (JP_HIDEventState)eventState {
    
    return 0;
}

- (void)tick {
    
}
@end
