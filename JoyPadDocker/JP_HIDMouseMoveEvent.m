//
//  JP_HIDMouseEvent.m
//  JoyPadDocker
//
//  Created by David Lewis on 12/23/14.
//  Copyright (c) 2014 David Lewis. All rights reserved.
//

#import "JP_HIDMouseMoveEvent.h"

@interface JP_HIDMouseMoveEvent ()
@property (weak) id<JP_HIDEventDelegate> delegate;
@end

@implementation JP_HIDMouseMoveEvent {
    
}
@synthesize staticEventKey;

- (id)initWithKey:(CGKeyCode)keyCode andDelegate:(id)delegate {
    self = [super init];
    if (self) {
        staticEventKey = keyCode;
        if ([delegate conformsToProtocol:@protocol(JP_HIDEventDelegate) ])
        {
            self.delegate = delegate;
        } else NSLog(@"%@ does not conform to JP_HIDKeyEventDelegate PROTOCOL!", [delegate identifier]);
    }
    NSLog(@"JP_HIDKeyEvent: %u",[self state]);
    return self;
}

#pragma mark - JP_HIDEventDelegate Protocol
- (void)beginEvent {
    
}

- (void)stopEvent {
    
}

- (JP_HIDEventState)state {
    
    return 0;
}

- (void)tick {
    
}
@end
