//
//  MultiplicationQuestion.m
//  Maths
//
//  Created by Trevor MacGregor on 2017-03-09.
//  Copyright © 2017 Trevor MacGregor. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion
- (instancetype)init {
    if (self = [super init]){
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion
{
    self.question = [NSString stringWithFormat:@"What is %ld * %ld", self.rightValue,self.leftValue];
    self.answer = self.rightValue * self.leftValue;
    
}


@end
