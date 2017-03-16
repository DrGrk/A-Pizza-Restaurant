//
//  InputCollector.m
//  PizzaRestaurant
//
//  Created by David Guichon on 2017-03-09.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

- (instancetype)init
{
    self = [super init];
    if (self) {
        _arrayOfInput = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)inputStringToArrayProperty
{
    NSLog(@"> ");
    char str[100];
    fgets (str, 100, stdin);
    
    NSString *inputString = [[NSString alloc] initWithUTF8String:str];
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSArray *arrayOfInputs = [inputString componentsSeparatedByString:@" "];
    [_arrayOfInput addObjectsFromArray: arrayOfInputs];
}

-(NSString *)inputString
{
    NSLog(@"Enter A Number");
    char str[100];
    fgets (str, 100, stdin);
    
    NSString *inputString = [[NSString alloc] initWithUTF8String:str];
    NSString *inputStringTrim = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return inputStringTrim;
    NSInteger whichManager = ([inputStringTrim integerValue] % 3);
}

@end
