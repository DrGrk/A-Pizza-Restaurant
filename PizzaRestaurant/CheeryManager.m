//
//  CheeryManager.m
//  PizzaRestaurant
//
//  Created by David Guichon on 2017-03-10.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "CheeryManager.h"
#import "Pizza.h"
#import "Kitchen.h"

@implementation CheeryManager

-(BOOL)kitchen:(Kitchen *)kitchen ShouldMakePizzaOfSize:(enum PizzaSize)size AndToppings:(NSArray *)toppings
{
    return YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    return YES;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza
{
    NSLog(@"Have a nice Day");
}

@end
