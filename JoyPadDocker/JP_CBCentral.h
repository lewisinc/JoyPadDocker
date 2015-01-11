//
//  JP_CBCentrel.h
//  JoyPadDocker
//
//  Created by David Lewis on 1/10/15.
//  Copyright (c) 2015 David Lewis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreBluetooth/CoreBluetooth.h>

#define TRANSFER_SERVICE_UUID \
        @"B8C9D2F5-AB53-4D4A-8F41-C764EA5577C9"
#define GAMEPAD_STATE_CHARACTERISTIC_UUID \
        @"4B0CDC50-C3F6-4D64-8001-2C361BEF1D99"
#define GAMEPAD_CONFIGURATION_CHARACTERISTIC_UUID \
        @"3E128AE1-4BD6-4F7D-A49E-B3E789E6C4AC"
#define SHOULD_DISCONNECT_CHARACTERISTIC_UUID \
        @"26B30EA8-1652-4EFF-9449-ECE0A6A8E241"

@interface JP_CBCentral : NSObject \
        <CBCentralManagerDelegate, CBPeripheralDelegate>

@property (strong, nonatomic) CBCentralManager      *centralManager;
@property (strong, nonatomic) CBPeripheral          *discoveredPeripheral;
@property (strong, nonatomic) NP_C         *data;
@property (strong, nonatomic) NSDictionary          *keyCodes;

- (void)beginScanning;
- (void)stopScanning;

@end
