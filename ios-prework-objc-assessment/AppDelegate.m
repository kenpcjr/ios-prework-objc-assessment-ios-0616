//
//  AppDelegate.m
//  ios-prework-objc-assessment
//
//  Created by Joel Bell on 5/23/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSArray *numbersArray = @[];
    NSArray *lettersArray = @[];
    NSDictionary *alphabetDictionary = @{};
    
    numbersArray = [self generateArrayOfNumbers];
    NSLog(@"%@", numbersArray);
    lettersArray = [self generateArrayOfLetters];
    NSLog(@"%@", lettersArray);
    alphabetDictionary = [self generateNumbersAndLettersDictionaryWithNumbers:numbersArray letters:lettersArray];
    
    NSLog (@"%@",alphabetDictionary);
    
    numbersArray = [alphabetDictionary allKeys];
    NSMutableArray *mutableLettersArray = [lettersArray mutableCopy];
    [mutableLettersArray removeAllObjects];
    
    for (NSString *str in alphabetDictionary) {
        [mutableLettersArray addObject:alphabetDictionary[str]];
    }
    
    NSSortDescriptor *ascendingSort = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
    [mutableLettersArray sortUsingDescriptors:@[ascendingSort]];
    NSArray *sortedNumbersArray = [numbersArray sortedArrayUsingDescriptors:@[ascendingSort]];
    
    NSLog(@"%@ \n %@",sortedNumbersArray, mutableLettersArray);
    
    
    
    return YES;
}

-(NSArray *)generateArrayOfNumbers{
    NSUInteger numberForArray = 0;
    NSMutableArray *generatedNumbers = [[NSMutableArray alloc]init];
    for (NSUInteger i = 1; i < 27; i++) {
        numberForArray = i;
        [generatedNumbers addObject:@(numberForArray)];
    }
    return generatedNumbers;
}

-(NSArray *)generateArrayOfLetters{
    NSMutableArray *generatedLetters = [[NSMutableArray alloc]init];
    NSString *letterToStore = @"";
    for (char a = 'a'; a <= 'z'; a++) {
        letterToStore = [NSString stringWithFormat:@"%c",a] ;
        [generatedLetters addObject:letterToStore];
    }
    return generatedLetters;
}

-(NSDictionary *)generateNumbersAndLettersDictionaryWithNumbers:(NSArray *)numbersArray letters:(NSArray *)lettersArray{
    NSMutableDictionary *alphaNumericDict = [[NSMutableDictionary alloc]init];
    for (NSUInteger i = 0; i < [numbersArray count]; i++) {
        alphaNumericDict[numbersArray[i]] = lettersArray[i];
    }
    return alphaNumericDict;
}

@end
