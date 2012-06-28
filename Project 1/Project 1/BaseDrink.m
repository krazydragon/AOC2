//
//  BaseDrink.m
//  Project 1
//
//  Created by Ronaldo Barnes on 6/27/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "BaseDrink.h"

@implementation BaseDrink
-(id)initKindOfDrink: (int)drinkType DrinkName:(NSString*)drinkName
{
    
    
    
}

-(void)setDrinkAtt:(EDrinkKType)drinkType drinkName:(NSString*)drinkName needsIce:(bool)needsIce
{
    ice = needsIce;
    _drinkName = drinkName;
    _drinkType = drinkType;
    
}

@end
