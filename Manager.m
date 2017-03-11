//
//  Manager.m
//  PizzaRestaurant
//
//  Created by David Guichon on 2017-03-10.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"
#import "Kitchen.h"

@implementation Manager

-(BOOL)kitchen:(Kitchen *)kitchen ShouldMakePizzaOfSize:(enum PizzaSize)size AndToppings:(NSArray *)toppings
{
    for (NSString *i in toppings) {
        if ([i isEqualToString:@"anchovies"]){
            NSLog(@"ORDER REJECTED");
            return NO;
        }
    }
    return YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    return NO;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza
{
}


@end
