//
//  BankAccount.m
//  BankAccount
//
//  Created by Will Fairclough on 2013-01-23.
//  Copyright (c) 2013 Will Fairclough. All rights reserved.
//

#import "BankAccount.h"
#import "DepositTransaction.h"
#import "CheckTransaction.h"
#import "WithdrawalTransaction.h"


@implementation BankAccount


/*
 * Convience initializer for setting the Bank Accounts Owner name.
 */
- (BankAccount *)initWithOwnerName:(NSString *)name
{
    if (self = [super init]) {
        owner = name;
    }
    
    return self;
}

/*
 * Returns the Blance value from this Bank Account
 */
- (double) balance
{
    return balance;
}

/*
 * Create a deposit transaction to perform on the account with the amount specified
 */
- (void) deposit: (double) amount
{
    balance += amount;
}

/*
 * Create a withdraw transaction to perform on the account with the amount specified
 */
- (void) withdraw: (double) amount
{
    balance -= amount;
}

/*
 * Post the transaction to the Array of Transactions
 */
- (void) postTransaction: (Transaction *) aTransaction
{
    [[self transactions] addObject:aTransaction];
    [aTransaction postToAccount:self];
}

/*
 * Get the transactions Array by lazy loading it
 */
- (NSMutableArray *)transactions
{
    if (transactions == nil)
        transactions = [[NSMutableArray alloc] init];
    
    return transactions;
}

/*
 * Return the count of transactions from the transactions array
 */
- (int) numberOfTransactions
{
    NSNumber* countOfTransactions = [NSNumber numberWithInteger:[self transactions].count];
    return [countOfTransactions intValue];
}

/*
 * Return a string description of the Bank Account object.
 */
- (NSString *) description
{
    return [NSString stringWithFormat:@"\nBank Account:\n\tOwner: %@\n\tBalance: $%.2f\n\tTransactions:\n%@", owner, balance, [self transactions]];
}

@end
