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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ScoreKeeper *score = [[ScoreKeeper alloc]init];
        int x = 1;
        while (x == 1){
            
            //Call our random number addition method
            AdditionQuestion *startQuestion = [[AdditionQuestion alloc]init];
            NSLog(@"%@", startQuestion.question);
            
            NSString *resultTrimmed = [InputHandler resultTrimmed];
            
            NSInteger givenAnswer = [resultTrimmed integerValue];
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
            
        }
        
        
    
    }
    return 0;
}
