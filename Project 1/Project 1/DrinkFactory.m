//
//  DrinkFactory.m
//  Project 1
//
//  Created by Ronaldo Barnes on 6/27/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "DrinkFactory.h"

@implementation DrinkFactory

static DrinkFactory *_create = nil;

+(DrinkFactory*)createDrinks
{
    if (_create) 
    {
        [[self alloc] init];
        return _create;
    }
    return nil;
}

+(id)alloc
{
    _create =[super alloc];
    return _create;
}

-(id)init
{
    if (self = [super init])
    {
        
    }
    return self;
}
-(BaseDrink*)Getdrink:(int)drinkType
{
    if (drinkType == 0) {
        
    }
    else if (drinkType == 1) {
        
    }
    else if (drinkType == 2) {
        
    }
    return nil;
}


@end
