//
//  QuestionManager.h
//  Maths
//
//  Created by Trevor MacGregor on 2017-03-08.
//  Copyright © 2017 Trevor MacGregor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject

@property (nonatomic) NSMutableArray *questions;

- (NSTimeInterval) totalTime;
- (NSTimeInterval) averageTime;
-(NSString *)timeOutput;
@end
