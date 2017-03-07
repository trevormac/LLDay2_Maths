//
//  main.m
//  Maths
//
//  Created by Trevor MacGregor on 2017-03-07.
//  Copyright © 2017 Trevor MacGregor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int x = 1;
        while (x == 1){
            //Call our random number addition method
            AdditionQuestion *startQuestion = [[AdditionQuestion alloc]init];
            NSLog(@"%@", startQuestion.question);
            
            //User answers the question
            char inputChars[255];
            fgets(inputChars, 255, stdin);
            // C style user input gets converted to a string:
            NSString *result = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
            //String gets the /n removed and the whitespace removed
            NSString *resultTrimmed = [result stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSLog(@"%@", resultTrimmed);
            
            NSInteger givenAnswer = [resultTrimmed integerValue];
            if (givenAnswer == startQuestion.answer) {
                NSLog(@"Correct!");
            }else{
                NSLog(@"Wrong!");
            }
            if ([resultTrimmed isEqualToString:@"quit"])
                break;
           
            
        }
        
        
    
    }
    return 0;
}
