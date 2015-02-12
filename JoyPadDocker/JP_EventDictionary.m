//
//  KeyCodeDictionary.m
//  JoyPadDocker
//
//  Created by David Lewis on 1/9/15.
//  Copyright (c) 2015 David Lewis. All rights reserved.
//

#import "JP_EventDictionary.h"

@implementation JP_EventDictionary {
    NSDictionary *dictionary;
}

- (id)init {
    self = [super init];
    
    if (self) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"KeyCodeRepresentations (hex)" ofType:@"plist"];
        dictionary = [NSDictionary dictionaryWithContentsOfFile:path];
    }
    
    return self;
}
- (CGKeyCode)keyFromString:(NSString *)keyName {
    uint returnCode;
    
    if (keyName != nil) {
        NSString *hexCode = [dictionary objectForKey:keyName];
        
        if (hexCode != nil) {
            [[NSScanner scannerWithString:hexCode] scanHexInt:&returnCode];
            return returnCode;
        } else {
            NSLog(@"JP_HIDEventManager:: object DNE for key: %@", keyName);
            return -1;
        }
    }
    else {
        NSLog(@"keyName parameter is nil.");
        return -1;
    }
}

- (NSString *)stringFromKeyCode:(CGKeyCode)keyCode {
    if (keyCode >= 0 && keyCode < 0x7F) {
        NSLog(@"%d",keyCode);
        NSString *returnString = [NSString stringWithString:[dictionary objectForKey:[NSNumber numberWithUnsignedShort:keyCode]]];
        NSLog(@"%@",returnString);
        return returnString;
    } else {
        return nil;
    }
}

- (NSDictionary *)dictionary {
    return dictionary;
}


@end
