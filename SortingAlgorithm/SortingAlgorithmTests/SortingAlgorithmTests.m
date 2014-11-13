//
//  SortingAlgorithmTests.m
//  SortingAlgorithmTests
//
//  Created by Prem Chaurasiya on 11/11/14.
//  Copyright (c) 2014 playLikeKid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Sorter.h"

@interface SortingAlgorithmTests : XCTestCase

@end

@implementation SortingAlgorithmTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testInsertionSort {
    NSArray *input = @[@0,@9,@12,@67,@56,@42,@42];
    //Sorter *_sorter = [Sorter new];
    NSArray *outputArray = [Sorter sortUsingInsertionSortWithInput:input];
    NSArray *expectedOutput = @[@0,@9,@12,@42,@42,@56,@67];
    XCTAssertEqualObjects(outputArray, expectedOutput, @"Budum");
}

- (void)testNULLInInsertionSort {
    NSArray *input = @[@0,[NSNull null],@12,@67,@56,@42,@42];
    //Sorter *_sorter = [Sorter new];
    NSArray *outputArray = [Sorter sortUsingInsertionSortWithInput:input];
    NSArray *expectedOutput = nil;
    XCTAssertEqualObjects(outputArray, expectedOutput, @"Budum");
}



@end
