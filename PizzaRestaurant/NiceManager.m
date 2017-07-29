//
//  NiceManager.m
//  PizzaRestaurant
//
//  Created by Tye Blackie on 2017-07-28.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "NiceManager.h"

@implementation NiceManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSSet *)toppings{
    
    return YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    
    return YES;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza{
    
    NSLog(@"Hey Delivery Dude, Pizza is ready!");
    
}

@end
