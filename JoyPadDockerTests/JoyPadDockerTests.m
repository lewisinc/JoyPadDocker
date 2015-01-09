//
//  JoyPadDockerTests.m
//  JoyPadDockerTests
//
//  Created by David Lewis on 12/17/14.
//  Copyright (c) 2014 David Lewis. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "KeyCodeDictionary.h"

@interface JoyPadDockerTests : XCTestCase

@end

@implementation JoyPadDockerTests {
    KeyCodeDictionary *dictionary;
}

- (void)setUp {
    [super setUp];
    dictionary = [[KeyCodeDictionary alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    dictionary = nil;
    [super tearDown];
}

- (void)testStringFromKeyCode {
    // This is an example of a functional test case.
    CGKeyCode aKey = 0;
    NSString *keyName = [dictionary stringFromKeyCode:aKey];
    XCTAssert([keyName isEqualToString:@"a"]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
