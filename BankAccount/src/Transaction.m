//
//  Transaction.m
//  BankAccount
//
//  Created by Will Fairclough on 2013-01-23.
//  Copyright (c) 2013 Will Fairclough. All rights reserved.
//

#import "Transaction.h"

@implementation Transaction

- (id)initWithAmount:(double)aAmount
{
    if (self = [super init]) {
        amount = aAmount;
    }
    
    return self;
}

- (void) postToAccount: (BankAccount *) account
{
    
}

- (NSString *) description
{
    return [NSString stringWithFormat:@"Standard Transaction with the amount - %2.f", amount];
}

@end
