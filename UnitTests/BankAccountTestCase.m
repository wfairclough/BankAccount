//
//  BankAccountTestCase.m
//  BankAccount
//
//  Created by Will Fairclough on 2013-01-23.
//  Copyright (c) 2013 Will Fairclough. All rights reserved.
//

#import "BankAccountTestCase.h"
#import "DepositTransaction.h"
#import "WithdrawalTransaction.h"
#import "CheckTransaction.h"
#import "BankAccount.h"

@interface BankAccountTestCase ()
{
    BankAccount* bankAccount;
}

@end

@implementation BankAccountTestCase

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
    bankAccount = [[BankAccount alloc] initWithOwnerName:@"Will Fairclough"];
    STAssertNotNil(bankAccount, @"Constructor failed to create a BankAccount instance.");
    
    STAssertTrue(([[bankAccount description] rangeOfString:@"Owner: Will Fairclough"].location != NSNotFound), @"The decription does not contain the owners name");
}

- (void)tearDown
{
    // Tear-down code here.
    [super tearDown];
}

- (void)testStartHere
{
    
    // Test Posting a Deposit Transaction to a BankAccount
    DepositTransaction* payCheckDepositTransaction = [[DepositTransaction alloc] initWithAmount:2345.88];
    [bankAccount postTransaction:payCheckDepositTransaction];
    
    STAssertEqualsWithAccuracy([bankAccount balance], 2345.88, 2, @"The Account Balance is incorrect after a deposit transaction is posted");
    
    
    // Test Posting a Withdrawl Transaction to a BankAccount
    WithdrawalTransaction* rentTransaction = [[WithdrawalTransaction alloc] initWithAmount:850.00];
    [bankAccount postTransaction:rentTransaction];
    
    STAssertEqualsWithAccuracy([bankAccount balance], 1495.88, 2, @"The Account Balance is incorrect after a withdrawal transaction is posted");
    
    
    // Test Posting a Check Transaction to a BankAccount
    CheckTransaction* govntCheck = [[CheckTransaction alloc] initWithAmount:250.00];
    [bankAccount postTransaction:govntCheck];
    
    STAssertEqualsWithAccuracy([bankAccount balance], 1745.88, 2, @"The Account Balance is incorrect after a withdrawal transaction is posted");
    
    
}

@end
