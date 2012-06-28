//
//  HotDrink.m
//  Project 1
//
//  Created by Ronaldo Barnes on 6/27/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "HotDrink.h"
#import "BaseDrink.h"

@implementation HotDrink

-(id)init
{
    if (self =  [super init])
    {
        [self setDrinkAtt:DRINKTYPE_HOT drinkName:@"Hot" needsIce: NO];
    }
    return self;
}
@end
