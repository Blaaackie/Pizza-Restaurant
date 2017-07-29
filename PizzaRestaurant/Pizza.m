//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Tye Blackie on 2017-07-27.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza


- (instancetype) initWithSize:(PizzaSize)size pizzaToppings:(NSSet*)pizzaToppings{
    self = [super init];
    if (self) {
        _size = size;
        _pizzaToppings = pizzaToppings;
    }
    return self;
}

- (NSString*) convertToString:(PizzaSize) whichSize {
    NSString *result = nil;
    
    switch(whichSize) {
        case small:
            result = @"small";
            break;
        case medium:
            result = @"medium";
            break;
        case large:
            result = @"large";
            break;
            
        default:
            result = @"unknown";
    }
    
    return result;
}

+(PizzaSize) pizzaSizeFromString:(NSString*)string {
    if ([string isEqualToString: @"small"]) {
        return small;
    }else if ([string isEqualToString: @"medium"]){
        return medium;
    }else if ([string isEqualToString: @"large"]){
        return large;
    } else {
        return small;
    }
        
}


@end
