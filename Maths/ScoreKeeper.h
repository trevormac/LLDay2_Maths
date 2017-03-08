//
//  ScoreKeeper.h
//  Maths
//
//  Created by Trevor MacGregor on 2017-03-07.
//  Copyright © 2017 Trevor MacGregor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property NSInteger rightAnswers;
@property NSInteger wrongAnswers;
@property NSInteger totalQuestions;
@property float totalPercentage;

- (void) right;
- (void) wrong;
- (void) total;
//- (void) percentage;

- (void) scoreSummary;




@end
