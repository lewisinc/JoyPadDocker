//
//  JP_HIDMouseEvent.h
//  JoyPadDocker
//
//  Created by David Lewis on 12/23/14.
//  Copyright (c) 2014 David Lewis. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef uint16_t CGKeyCode;

typedef struct {
    float deltaX, deltaY;
} JoystickDelta;

typedef enum {
    JP_HIDEventActive = 0,
    JP_HIDEventInactive,
    JP_HIDEventShouldStop,
    JP_HIDEventShouldStart
} JP_HIDEventState;

@protocol JP_HIDEventDelegate <NSObject>
- (void)beginEvent;
- (void)stopEvent;
- (JP_HIDEventState)state;
- (void)tick;
@end

@interface JP_HIDMouseMoveEvent : NSObject <JP_HIDEventDelegate>
- (id)initWithKey:(CGKeyCode)keyCode andDelegate:(id) delegate;
@property (nonatomic) CGEventSourceRef *eventSource;
@property (readonly, nonatomic) CGKeyCode staticEventKey;
@property (nonatomic) JP_HIDEventState currentEventState;


@end
