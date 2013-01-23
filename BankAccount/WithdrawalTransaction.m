//
//  WithdrawalTransaction.m
//  BankAccount
//
//  Created by Will Fairclough on 2013-01-23.
//  Copyright (c) 2013 Will Fairclough. All rights reserved.
//

#import "WithdrawalTransaction.h"

@implementation WithdrawalTransaction

- (void) postToAccount: (BankAccount *) account
{
    [account withdraw:amount];
}

- (NSString *) description
{
    return [NSString stringWithFormat:@"Withdraw $%.2f", amount];
}

@end
