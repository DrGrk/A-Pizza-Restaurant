//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "InputCollector.h"
#import "Pizza.h"
#import "KitchenDelegate.h"

@implementation Kitchen



- (Pizza *)makePizzaWithSize:(enum PizzaSize)size toppings:(NSArray *)toppings
{
    
//DELEGATE METHODS
    if (![self.delegate kitchen:self ShouldMakePizzaOfSize:size AndToppings:toppings]){
        return nil;
    }
    
    if ([self.delegate kitchenShouldUpgradeOrder:self]){
        size = Large;
    }
    
   
    
    Pizza *pizza = [[Pizza alloc] init];
    //INITIALIZE A PIZZA INSTANCE AND FILL IT WITH THESE PROPERTIES ^^
    pizza.size = size;
    pizza.toppings = toppings;
    return pizza;
    
    [self.delegate kitchenDidMakePizza:pizza];
        
    }



-(enum PizzaSize)outputPizzaSize:(InputCollector *)inputCollector
{
    if([inputCollector.arrayOfInput[0] isEqualToString: @"small"]){
        return (enum PizzaSize)Small;
    }
    if([inputCollector.arrayOfInput[0] isEqualToString: @"medium"]){
        return (enum PizzaSize)Medium;
    }
    return (enum PizzaSize)Large;
}

-(NSMutableArray *)outputToppings:(InputCollector *)inputCollector
{
    NSMutableArray *arrayOfToppings = [[NSMutableArray alloc] init];
    [arrayOfToppings addObjectsFromArray:inputCollector.arrayOfInput];
    [arrayOfToppings removeObjectAtIndex:0];
    return arrayOfToppings;
}


-(void)whichManager:(NSString *)inputString{
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


