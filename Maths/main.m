//
//  main.m
//  Maths
//
//  Created by Trevor MacGregor on 2017-03-07.
//  Copyright © 2017 Trevor MacGregor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "AdditionQuestion.h"
#import "SubtractionQuestion.h"
#import "MultiplicationQuestion.h"
#import "DivisionQuestion.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        ScoreKeeper *score = [[ScoreKeeper alloc]init];
        QuestionManager *questionsManager = [[QuestionManager alloc]init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc]init];
        InputHandler *inputHandler = [[InputHandler alloc]init];
        
        while (gameOn){
            
            //Call our random number addition method OLD WAY
            //Question *startQuestion = [[Question alloc]init];
            
            //Call our random number addition method NEW WAY using question factory
            Question *startQuestion = [questionFactory generateRandomQuestion];
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
