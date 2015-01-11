//
//  JoyPadDockerTests.m
//  JoyPadDockerTests
//
//  Created by David Lewis on 12/17/14.
//  Copyright (c) 2014 David Lewis. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "JP_EventDictionary.h"

@interface JoyPadDockerTests : XCTestCase

@end

@implementation JoyPadDockerTests {
    JP_EventDictionary *dictionary;
}

- (void)setUp {
    [super setUp];
    dictionary = [[JP_EventDictionary alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testStringFromKeyCode {
    // This is an example of a functional test case.
    CGKeyCode aKey = 0;
//    NSString *keyName = [NSString stringWithString:[[dictionary stringFromKeyCode:(CGKeyCode)aKey] ob]];
//    
//    XCTAssert([keyName isEqualToString:@"a"]);
    XCTAssert(YES, @"");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
