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
        [self setDrinkAtt:DRINKTYPE_BLENDED drinkName:@"Blended" needsIce: YES];
    }
    return self;
}
@end

