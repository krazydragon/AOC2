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
#import "HotDrink.h"
#import "ColdDrink.h"


@implementation DrinkFactory



// Determine what kind of drink to make
-(BaseDrink*)getDrink:(int)drinkType
{
    if (drinkType == 0) {
        
        
        
        return [[BlendedDrink alloc] init];
    }
    else if (drinkType == 1) {
        
        
        
        return [[ColdDrink alloc] init];
    }
    else if (drinkType == 2) {
        
        
        
        return [[HotDrink alloc] init];
    }
    return nil;
}


@end
