//
//  UnitTests.m
//  UnitTests
//
//  Created by Will Fairclough on 2013-01-23.
//  Copyright (c) 2013 Will Fairclough. All rights reserved.
//

#import "UnitTests.h"
#import "BankAccountTestCase.h"

@implementation UnitTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
    SenTestSuite *suite = [SenTestSuite testSuiteWithName:@"Bank Account Test Case"];
    
    [suite addTest:[SenTestSuite testSuiteForTestCaseClass:[BankAccountTestCase class]]];

    [suite run];
}

@end
