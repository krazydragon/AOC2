//
//  ColdDrink.m
//  Project 1
//
//  Created by Ronaldo Barnes on 6/27/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "ColdDrink.h"
#import "BaseDrink.h"

@implementation ColdDrink

-(id)init
{
    if (self =  [super init])
    {
        _drinkName = @"Cold";
        _ice = YES;
        _time = 1;
    }
    return self;
}

@end
