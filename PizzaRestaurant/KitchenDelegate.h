//
//  KitchenDelegate.h
//  PizzaRestaurant
//
//  Created by Tye Blackie on 2017-07-28.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
@class Kitchen;

@protocol KitchenDelegate <NSObject>

@required

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSSet *)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

@optional

-(void)kitchenDidMakePizza:(Pizza *)pizza;



@end
