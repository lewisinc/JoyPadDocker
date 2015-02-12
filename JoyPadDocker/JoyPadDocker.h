//
//  JP_JoyPadDocker.h
//  JoyPadDocker
//
//  Created by David Lewis on 1/13/15.
//  Copyright (c) 2015 David Lewis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JP_CBCentral.h"
#import "JP_EventDictionary.h"
#import "JP_HIDEvent.h"
#import "JP_EventManager.h"

@interface JoyPadDocker : NSObject
@property (strong) JP_CBCentral         *central;
@property (strong) JP_EventDictionary   *dictionary;
@property (strong) JP_EventManager      *eventManager;
@end
