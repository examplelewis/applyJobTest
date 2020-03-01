//
//  PersonalInformationTests.m
//  applyJobTestTests
//
//  Created by 龚宇 on 20/02/20.
//  Copyright © 2020 gongyuTest. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ResponsePersonalInformation.h"

@interface PersonalInformationTests : XCTestCase

@end

@implementation PersonalInformationTests

- (void)testPersonalInformationAge {
    ResponsePersonalInformation * response = [[ResponsePersonalInformation alloc] init];
    response.age = @"20";   //模拟合法年龄（ 0 < age < 110认为是合法年龄）
    [self checkAge:response];
}

- (void)checkAge:(ResponsePersonalInformation *)response {
    XCTAssert([response.age integerValue] >= 0, @"姓名小于0岁-非法");
    XCTAssert([response.age integerValue] <= 110, @"姓名大于110岁-非法");
}

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
//        NSMutableArray * mutArray = [[NSMutableArray alloc] init];
//        for (int i = 0; i < 9999; i++) {
//            NSObject * object = [[NSObject alloc] init];
//            [mutArray addObject:object];
//        }
        
        
        NSTimeInterval startTime = CACurrentMediaTime();
        NSMutableArray * mutArray = [[NSMutableArray alloc] init];
        for (int i = 0; i < 9999; i++) {
            NSObject * object = [[NSObject alloc] init];
            [mutArray addObject:object];
        }
        NSLog(@"%f",CACurrentMediaTime() - startTime);
    }];
}

@end
