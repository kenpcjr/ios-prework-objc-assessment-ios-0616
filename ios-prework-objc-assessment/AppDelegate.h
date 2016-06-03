//
//  AppDelegate.h
//  ios-prework-objc-assessment
//
//  Created by Joel Bell on 5/23/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/* @[@"a",
 @"b",
 @"c",
 @"d",
 @"e",
 @"f",
 @"g",
 @"h",
 @"i",
 @"j",
 @"k",
 @"l",
 @"m",
 @"n",
 @"o",
 @"p",
 @"q",
 @"r",
 @"s",
 @"t",
 @"u",
 @"v",
 @"w",
 @"x", 
 @"y", 
 @"z" ] */

-(NSArray *)generateArrayOfNumbers;
-(NSArray *)generateArrayOfLetters;
-(NSDictionary *)generateNumbersAndLettersDictionaryWithNumbers:(NSArray *)numbersArray letters:(NSArray *)lettersArray;

@end

