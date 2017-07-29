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
    
    if ([self.delegate kitchenShouldUpgradeOrder:self])
    {
        size = large;
    };
    
    if([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings])
    {
        Pizza *pizza = [[Pizza alloc] initWithSize: size pizzaToppings: toppings];
        
        if( [self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)] ) {
            // invoke the inherited method
            [self.delegate kitchenDidMakePizza:pizza];

        }
        
        
        return pizza;
    }
    

    return nil;
}

@end
