//
//  InputCollector.h
//  PizzaRestaurant
//
//  Created by David Guichon on 2017-03-09.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

enum ManagerChoice {
    Normal,
    Cheery,
    None
};

@interface InputCollector : NSObject

@property (nonatomic, strong) NSMutableArray *arrayOfInput;
@property (nonatomic) BOOL whichManager;
@property (nonatomic) enum ManagerChoice managerChoice;





-(void)inputStringToArrayProperty;

-(void)inputString;

@end
