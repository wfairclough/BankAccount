/*
 *  BankAccount.h
 *  BankAccount
 *
 *
 *
 *  Created by Will Fairclough on 2013-01-23.
 *  Copyright (c) 2013 Will Fairclough. All rights reserved.
 */

#import <Foundation/Foundation.h>

@class Transaction;


@interface BankAccount : NSObject
{
    NSString *owner;
    double balance;
    NSMutableArray *transactions;
}

- (BankAccount *)initWithOwnerName:(NSString *)name;

- (void) deposit: (double) amount;
- (void) withdraw: (double) amount;
- (void) postTransaction: (Transaction *) aTransaction;
- (int) numberOfTransactions;
- (NSString *) description;

@end