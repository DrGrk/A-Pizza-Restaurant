//
//  Manager.h
//  PizzaRestaurant
//
//  Created by David Guichon on 2017-03-10.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KitchenDelegate.h"


@interface Manager : NSObject <KitchenDelegate>

-(BOOL)kitchen:(Kitchen *)kitchen ShouldMakePizzaOfSize:(enum PizzaSize)size AndToppings:(NSArray *)toppings;

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

-(void)kitchenDidMakePizza:(Pizza *)pizza;



@end
