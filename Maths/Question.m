//
//  AdditionQuestion.m
//  Maths
//
//  Created by Trevor MacGregor on 2017-03-07.
//  Copyright © 2017 Trevor MacGregor. All rights reserved.
//

#import "Question.h"


@implementation Question

- (instancetype)init {
    //makes sure parent class initializes
    if (self = [super init]) {
        _startTime = [NSDate date];
        _rightValue = arc4random_uniform(20);
        _leftValue = arc4random_uniform(30);
        _question = [NSString stringWithFormat:@"What is %ld + %ld", _rightValue, _leftValue];
        _answer = _rightValue + _leftValue;
        
    }
    return self;
}
//Overiding getter
-(NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}
- (NSTimeInterval)answerTime
{
    NSTimeInterval secondsTaken = [_endTime timeIntervalSinceDate:_startTime];
    return secondsTaken;
}

@end
