//
//  AdditionQuestion.m
//  Maths
//
//  Created by Trevor MacGregor on 2017-03-07.
//  Copyright © 2017 Trevor MacGregor. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    //makes sure parent class initializes
    if (self = [super init]) {
        int a = arc4random_uniform(20);
        int b = arc4random_uniform(30);
        _question = [NSString stringWithFormat:@"What is %d + %d", a, b];
        _answer = a + b;
    }
    return self;
}

@end
