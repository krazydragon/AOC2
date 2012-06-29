//
//  BaseDrink.m
//  Project 1
//
//  Created by Ronaldo Barnes on 6/27/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "BaseDrink.h"

@implementation BaseDrink


-(id)init
{
    if (self =  [super init])
    {
        _ice = NO;
        _drinkName = @"Empty";
        _time = 0;
    }
    return nil;
   
}



@end
