//
//  main.m
//  Maths
//
//  Created by Trevor MacGregor on 2017-03-07.
//  Copyright © 2017 Trevor MacGregor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ScoreKeeper *score = [[ScoreKeeper alloc]init];
        QuestionManager *questionsManager = [[QuestionManager alloc]init];
        
        int x = 1;
        while (x == 1){
            
            //Call our random number addition method
            AdditionQuestion *startQuestion = [[AdditionQuestion alloc]init];
            NSLog(@"%@", startQuestion.question);
            
            //Call our user input resultTrimmed method
            NSString *resultTrimmed = [InputHandler resultTrimmed];
            
            //Convert to an integer
            NSInteger givenAnswer = [resultTrimmed integerValue];
            
            
            //Increment the score total
            [score total];
            if (givenAnswer == startQuestion.answer) {
                NSLog(@"Correct!");
                [score right];
            }else{
                NSLog(@"Wrong!");
                [score wrong];
            }
            if ([resultTrimmed isEqualToString:@"quit"])
                break;
            [score scoreSummary];
            [questionsManager.questions addObject:startQuestion];
            [questionsManager timeOutput];
            NSString *timeOutputLogged = [questionsManager timeOutput];
            NSLog(@"%@", timeOutputLogged);
        }
        
        
    
    }
    return 0;
}
