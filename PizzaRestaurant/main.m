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
#import "NiceManager.h"
#import "MeanManager.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:\nFirst type the size of pizza you would like\nThen type all the toppings you would like seperated by a space\nThank You!");
    
        Kitchen *restaurantKitchen = [Kitchen new];
        NiceManager *niceManager = [NiceManager new];
        MeanManager *meanManager = [MeanManager new];
        Manager *manager = [Manager new];
        
        
        while (TRUE) {
            
            NSLog(@"Which manager would you like Today? Mean? Nice? or None?");
            char userInput[100];
            fgets (userInput, 100, stdin);
            NSString *userManagerSelection = [[NSString alloc] initWithUTF8String:userInput];
            userManagerSelection = [userManagerSelection stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([userManagerSelection isEqualToString: @"nice"]){
                restaurantKitchen.delegate = niceManager;
            }else if ([userManagerSelection isEqualToString: @"mean"]){
                restaurantKitchen.delegate = meanManager;
            }else if ([userManagerSelection isEqualToString: @"none"]) {
                NSLog(@"Youve Chosen no manager at all!");
                restaurantKitchen.delegate = manager;
            } else {
                restaurantKitchen.delegate = nil;
            }

                
            
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
            

            NSSet *pizzaToppings = [[NSSet alloc] initWithArray:toppings];
            
            NSLog(@"[Main] %@", size);
            PizzaSize pizzaSize = [Pizza pizzaSizeFromString:size];
            
            Pizza *pizza = [restaurantKitchen makePizzaWithSize:pizzaSize toppings:pizzaToppings];
        
            NSLog(@"size: %@ toppings: %@", [pizza convertToString:pizza.size], pizza.pizzaToppings);
            // And then send some message to the kitchen...
        }

    }
    return 0;
}

