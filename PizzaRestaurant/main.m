//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "InputCollector.h"
#import "Manager.h"
#import "CheeryManager.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
//HAVE NOT DONE THE STRETCH GOALS YET

//Create Instance of Kitchen && InputCollector && Manager && CheeryManager
        
        Kitchen *restaurantKitchen = [Kitchen new];
        InputCollector *inputCollector = [[InputCollector alloc] init];
        
        
//  LOOK INTO THIS CODE MORE. POLYMORPHISM, UPCASTING, ABSTRACT OBJECT,
        id<KitchenDelegate>manager;


//Input for Who is Working Today && Set Kitchen Delegate
       NSString *managerInput = [inputCollector inputString];
        
        [restaurantKitchen whichManager:managerInput];
        
        
        if (restaurantKitchen.managerChoice == Normal){
            manager = [Manager new];
        }
        else if (restaurantKitchen.managerChoice == Cheery){
            manager = [CheeryManager new];
        }
        
        restaurantKitchen.delegate = manager;

// Loop forever
        while (TRUE) {
            NSLog(@"Please pick your pizza size and toppings:");
            
            
//Process Input To String Array Property
            [inputCollector inputStringToArrayProperty];
         
            
// Method to Call FirstWord as the Size and create Toppings array
            enum PizzaSize size = [restaurantKitchen outputPizzaSize:inputCollector];
            NSArray *toppings = [restaurantKitchen outputToppings:inputCollector];

            
// Creat Instance of Pizza with the above Properties
            Pizza *firstPizza = [restaurantKitchen makePizzaWithSize:size toppings:toppings];

            
//Call the properties of the pizza
            [firstPizza thisPizza];


        
        }

    }
    return 0;
}

