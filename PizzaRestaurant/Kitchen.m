//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"


@implementation Kitchen

-(Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSSet *)toppings
{
    Pizza *pizza = [[Pizza alloc] initWithSize: size pizzaToppings: toppings];
    
    return pizza;
}

@end
