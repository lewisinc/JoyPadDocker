//
//  JP_HIDEventManager.m
//  JoyPadDocker
//
//  Created by David Lewis on 12/17/14.
//  Copyright (c) 2014 David Lewis. All rights reserved.
//

#import "JP_HIDEventManager.h"

@implementation JP_HIDEventManager
@synthesize keyCodeRepresentations;
@synthesize currentEvents;
@synthesize eventTimer;
- (id)init {
    self = [super init];
    if (self) {
        [self loadKeyCodeDictionary];
    }
    
    return self;
}

- (void)loadKeyCodeDictionary {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"KeyCodeRepresentations (hex)" ofType:@"plist"];
    NSDictionary *keyCodeDictionary = [NSDictionary dictionaryWithContentsOfFile:path];
    keyCodeRepresentations = keyCodeDictionary;
    NSLog(@"%@",keyCodeRepresentations);
}

// Refer to (NSDictionary *)keyCodeRepresentations
// for valid keys.
- (CGKeyCode)keycodeFromString:(NSString *)key {
    uint returnCode;
    
    if (key != nil) {
        NSString *hexCode = [keyCodeRepresentations objectForKey:key];
        
        if (hexCode != nil) {
            [[NSScanner scannerWithString:hexCode] scanHexInt:&returnCode];
            return returnCode;
        } else
            goto fail;
    }

    fail:
        NSLog(@"JP_HIDEventManager:: object DNE for key: %@", key);
        return -1;
}
@end
