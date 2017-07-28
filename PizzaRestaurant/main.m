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

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:\nFirst type the size of pizza you would like\nThen type all the toppings you would like seperated by a space\nThank You!");
    
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
           
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSString *size = commandWords[0];
            NSRange range = NSMakeRange(1, commandWords.count-1);
            NSArray *toppings = [commandWords subarrayWithRange:range];
            
            //Do i have to initialize my NSSet here? Or is it done somewhere els?
            NSSet *pizzaToppings = [[NSSet alloc] initWithArray:toppings];
            
            NSLog(@"%@", size);
            
            PizzaSize pizzaSize = [Pizza pizzaSizeFromString:size];
            
            Pizza *pizza = [restaurantKitchen makePizzaWithSize:pizzaSize toppings:pizzaToppings];
            
            NSLog(@"size: %@ toppings: %@", [pizza convertToString:pizza.size], pizza.pizzaToppings);

            NSLog(@"break");
            // And then send some message to the kitchen...
        }

    }
    return 0;
}

