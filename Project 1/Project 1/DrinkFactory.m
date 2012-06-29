//
//  DrinkFactory.m
//  Project 1
//
//  Created by Ronaldo Barnes on 6/27/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "DrinkFactory.h"
#import "BaseDrink.h"
#import "BlendedDrink.h"


@implementation DrinkFactory




-(BaseDrink*)getDrink:(int)drinkType
{
    if (drinkType == 0) {
        
        [[BlendedDrink alloc] init];
        
        return nil;
    }
    else if (drinkType == 1) {
        
    }
    else if (drinkType == 2) {
        
    }
    return nil;
}


@end
