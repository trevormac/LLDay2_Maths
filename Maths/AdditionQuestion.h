//
//  AdditionQuestion.h
//  Maths
//
//  Created by Trevor MacGregor on 2017-03-07.
//  Copyright © 2017 Trevor MacGregor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property (nonatomic,copy) NSString *question;
@property (nonatomic) NSInteger answer;
@property (nonatomic) NSDate *startTime;
@property (nonatomic) NSDate *endTime;
- (NSTimeInterval)answerTime;



@end
