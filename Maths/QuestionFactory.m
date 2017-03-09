//
//  QuestionFactory.m
//  Maths
//
//  Created by Trevor MacGregor on 2017-03-09.
//  Copyright © 2017 Trevor MacGregor. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

//Upcasting
-(Question *)generateRandomQuestion
{
    NSArray *questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    int a = 0;
    a = arc4random_uniform(questionSubclassNames.count);
    
    return [[NSClassFromString(questionSubclassNames[a])alloc]init];
}


@end
