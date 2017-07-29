//
//  Mean Manager.m
//  PizzaRestaurant
//
//  Created by Tye Blackie on 2017-07-28.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "MeanManager.h"

@implementation MeanManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSSet *)toppings{
    for (NSString *topping in toppings) {
        if ([topping isEqualToString:@"anchovies"]) {
            return NO;
        }
    }

    return YES;
    
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    
    return NO;
}




@end
