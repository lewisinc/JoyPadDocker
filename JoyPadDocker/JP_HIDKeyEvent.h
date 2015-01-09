//
//  JP_HIDEvent.h
//  JoyPadDocker
//
//  Created by David Lewis on 12/17/14.
//  Copyright (c) 2014 David Lewis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JP_HIDEventManager.h"
@protocol JP_HIDEventDelegate <NSObject>
- (void)beginEvent;
- (void)stopEvent;
- (JP_HIDEventState)eventState;
- (void)tick;
@end

@interface JP_HIDKeyEvent : NSObject <JP_HIDEventDelegate>
- (id)initWithKey:(CGKeyCode)keyCode andDelegate:(id) delegate;
@property (readonly) CGEventSourceRef *eventSource;
@property (readonly) CGKeyCode staticEventKey;
@property (readwrite) JP_HIDEventState currentEventState;


@end
