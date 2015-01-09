//
//  JP_HIDEvent.h
//  JoyPadDocker
//
//  Created by David Lewis on 12/24/14.
//  Copyright (c) 2014 David Lewis. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef uint16_t CGKeyCode;

typedef enum {
    JP_HIDEventActive = 0,
    JP_HIDEventInactive,
    JP_HIDEventShouldStop,
    JP_HIDEventShouldStart
} JP_HIDEventState;

@protocol JP_HIDEventsDelegate <NSObject>
- (void)beginEvent;
- (void)stopEvent;
- (JP_HIDEventState)state;
- (void)tick;
@end

@interface JP_HIDEvent : NSObject <JP_HIDEventsDelegate>

@property (nonatomic) CGEventSourceRef *eventSource;
@property (readonly, nonatomic) CGKeyCode staticEventKey;
@property (weak) id<JP_HIDEventsDelegate> delegate;

- (id)initWithKey:(CGKeyCode)keyCode andDelegate:(id) delegate;

@end