//
//
//  • ^- JoyPadDocker
//  |
//  | Created by David Lewis on 12/24/14.
//  | Copyright (c) 2014 David Lewis. All rights reserved.
//  |
//  |  JP_HIDEvent.h
#import <Foundation/Foundation.h>
#import <EventKit/EventKit.h>

typedef uint16_t CGKeyCode;
typedef enum jp_hid_events {
    JP_HIDEventActive = 0,
    JP_HIDEventInactive,
    JP_HIDEventShouldStop,
    JP_HIDEventShouldStart
} JP_HIDEventState;

@protocol JP_HIDEventsDelegate <NSObject>
@required
- (JP_HIDEventState)beginEvent;
- (JP_HIDEventState)stopEvent;
- (JP_HIDEventState)state:(JP_HIDEvent);
@optional
- (void)updateJoystickDeltasX:(float)deltaX andY:(float)deltaY;
- (void)tickMouseMovement;
@end

@interface JP_HIDEvent : NSObject
@property (atomic) CGEventSourceRef *eventSource;
@property (readonly, nonatomic) CGKeyCode staticEventKey;
@property (weak) id<JP_HIDEventsDelegate> delegate;

- (id)initWithKey:(CGKeyCode)keyCode andDelegate:(id) delegate;
- (JP_HIDEventState)beginEvent;
- (JP_HIDEventState)stopEvent;
- (JP_HIDEventState)state;
- (void)tock;
@end