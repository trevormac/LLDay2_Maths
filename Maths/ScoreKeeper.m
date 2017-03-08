//
//  ScoreKeeper.m
//  Maths
//
//  Created by Trevor MacGregor on 2017-03-07.
//  Copyright © 2017 Trevor MacGregor. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (void) right
{
    _rightAnswers++;

}
- (void) wrong
{
    _wrongAnswers++;
}
- (void) total
{
    _totalQuestions++;
}



- (void) scoreSummary
{
    _totalPercentage = (double)_rightAnswers / (double)_totalQuestions * 100;
    NSLog(@"score: %ld right, %ld wrong, %.2f", _rightAnswers, _wrongAnswers,_totalPercentage);
}


@end
