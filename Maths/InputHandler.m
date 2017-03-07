//
//  InputHandler.m
//  Maths
//
//  Created by Trevor MacGregor on 2017-03-07.
//  Copyright © 2017 Trevor MacGregor. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *)resultTrimmed
{
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    NSString *result = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    NSString *resultTrimmed = [result stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return resultTrimmed;
}

@end
