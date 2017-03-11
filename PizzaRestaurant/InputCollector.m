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

-(void)inputString
{
    NSLog(@"Enter A Number");
    char str[100];
    fgets (str, 100, stdin);
    
    NSString *inputString = [[NSString alloc] initWithUTF8String:str];
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSInteger whichManager = ([inputString integerValue] % 3);
    
    switch (whichManager) {
        case 0:
            self.managerChoice = Normal;
            break;
            
        case 1:
            self.managerChoice = Cheery;
            break;
            
        default:
            self.managerChoice = None;
            break;
    }
}

@end
