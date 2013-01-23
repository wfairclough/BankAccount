//
//  CheckTransaction.m
//  BankAccount
//
//  Created by Will Fairclough on 2013-01-23.
//  Copyright (c) 2013 Will Fairclough. All rights reserved.
//

#import "CheckTransaction.h"

@implementation CheckTransaction

- (void) postToAccount: (BankAccount *) account
{
    [account deposit:amount];
}

- (NSString *) description
{
    return [NSString stringWithFormat:@"Deposit Check $%.2f", amount];
}

@end
