//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Tye Blackie on 2017-07-28.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"

@implementation Manager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSSet *)toppings
{
    return YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    return no;
}


@end
