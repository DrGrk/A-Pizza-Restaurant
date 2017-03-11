//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by David Guichon on 2017-03-09.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"
#import "InputCollector.h"

@implementation Pizza

-(NSString *)setEnumToString
{
    if (self.size == 0){
        NSString *thisSize = @"Small";
        return thisSize;
    }
    if (self.size == 1){
        NSString *thisSize = @"Medium";
        return thisSize;
    }

        NSString *thisSize = @"Large";
    return thisSize;
}

-(void)thisPizza
{
    NSString *thisSize = [self setEnumToString];
    NSLog(@"This pizza has a size of:%@ \n", thisSize);
          
    NSLog(@"and toppings are");
    
    for (NSString *i in self.toppings) {
        NSLog(@"%@\n", i);
    }
}
@end
