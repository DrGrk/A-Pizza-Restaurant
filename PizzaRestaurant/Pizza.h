//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by David Guichon on 2017-03-09.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@class InputCollector;

enum PizzaSize {
    Small,
    Medium,
    Large
};

@interface Pizza : NSObject

@property (nonatomic, strong) NSArray* toppings;
@property (nonatomic, assign) enum PizzaSize size;


-(NSString *)setEnumToString;

-(void)thisPizza;


@end
