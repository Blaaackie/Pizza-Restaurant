//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Tye Blackie on 2017-07-27.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum {  small = 0,
                medium,
                large   } PizzaSize;


@interface Pizza : NSObject
@property NSSet *pizzaToppings;
@property PizzaSize size;

- (instancetype) initWithSize:(PizzaSize)size pizzaToppings:(NSSet*)pizzaToppings;
- (NSString*) convertToString:(PizzaSize) whichSize;

+(PizzaSize) pizzaSizeFromString:(NSString*)string;

@end
