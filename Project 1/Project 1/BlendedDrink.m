//
//  BlendedDrink.m
//  Project 1
//
//  Created by Ronaldo Barnes on 6/27/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "BlendedDrink.h"
#import "BaseDrink.h"
#import "DrinkFactory.h"

@implementation BlendedDrink

-(id)init
{
    if (self =  [super init])
    {
        BaseDrink *blended = [[BaseDrink alloc] init];
        
        [blended changeDrink: @"Blended"];
        [blended changeIce : YES];
        [blended changeTime : 5];
    }
    return self;
}
@end

