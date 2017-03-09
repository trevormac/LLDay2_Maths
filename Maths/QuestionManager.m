//
//  QuestionManager.m
//  Maths
//
//  Created by Trevor MacGregor on 2017-03-08.
//  Copyright © 2017 Trevor MacGregor. All rights reserved.
//

#import "QuestionManager.h"


@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc]init];
    }
    return self;
}
//Iterate through the array and add all the times
- (NSTimeInterval) totalTime
{
    NSTimeInterval count = 0;
    for (Question *q in self.questions){
        count += [q answerTime];
    }
    return count;
}

- (NSTimeInterval) averageTime
{
    return [self totalTime] / self.questions.count;
}


-(NSString *)timeOutput
{
    return [NSString stringWithFormat:@"total time %.2f, average time %.2f", [self totalTime], [self averageTime] ];
}

@end
