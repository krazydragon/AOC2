//
//  BlendedDrink.m
//  Project 1
//
//  Created by Ronaldo Barnes on 6/27/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "BlendedDrink.h"
#import "BaseDrink.h"

@implementation BlendedDrink

-(id)init
{
    if (self =  [super init])
    {
        [self setDrinkAtt:0 drinkName:@"Blended" needsIce: YES time:5];
    }
    return self;
}
@end

