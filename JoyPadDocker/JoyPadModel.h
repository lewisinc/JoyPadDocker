//
//  JoyPadModel.h
//  JoyPadDocker
//
//  Created by David Lewis on 1/13/15.
//  Copyright (c) 2015 David Lewis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JP_HIDEvent.h"
@interface JoyPadModel : NSObject
@property (weak, readonly) JP_HIDEvent *connectedEvent;

- (CGKeyCode)keyCode;
@end
