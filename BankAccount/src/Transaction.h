/*
 *  Transaction.h
 *  BankAccount
 *
 *
 *
 *  Created by Will Fairclough on 2013-01-23.
 *  Copyright (c) 2013 Will Fairclough. All rights reserved.
 */

#import <Foundation/Foundation.h>

@class BankAccount;


@interface Transaction : NSObject
{
    double amount;
}


- (void) postToAccount: (BankAccount *) account;
- (NSString *) description;


@end
