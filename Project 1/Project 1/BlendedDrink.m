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
    self =  [super init];
    if (self != nil)
    {
        [self changeDrink: @"Blended"];
        [self changeIce : YES];
        [self changeTime : 5];
    }
    return self;
}
@end

