//
//  testont1Tests.m
//  testont1Tests
//
//  Created by 常琼 on 16/7/2.
//  Copyright © 2016年 shouhuobao. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface testont1Tests : XCTestCase

@end

@implementation testont1Tests
{
    // 1
    NSDictionary *_characterDetailJson;
}

- (void)setUp {
    [super setUp];

    // 3
    NSURL *dataServiceURL = [[NSBundle bundleForClass:self.class]
                             URLForResource:@"character" withExtension:@"json"];

    // 4
    NSData *sampleData = [NSData dataWithContentsOfURL:dataServiceURL];
    NSError *error;

    // 5
    id json = [NSJSONSerialization JSONObjectWithData:sampleData
                                              options:kNilOptions
                                                error:&error];

    XCTAssertNotNil(json,@"buneng nil");

    _characterDetailJson = json;
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    _characterDetailJson = nil;
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
