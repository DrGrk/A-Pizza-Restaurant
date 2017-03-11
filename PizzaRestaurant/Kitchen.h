//
//  Kitchen.h
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KitchenDelegate.h"
@class InputCollector;
@class Pizza;



@interface Kitchen : NSObject

@property (nonatomic, assign) enum PizzaSize size;
@property id <KitchenDelegate> delegate;



- (Pizza *)makePizzaWithSize:(enum PizzaSize)size toppings:(NSArray *)toppings;

-(enum PizzaSize)outputPizzaSize:(InputCollector *)inputCollector;

-(NSArray *)outputToppings:(InputCollector *)inputCollector;


@end
