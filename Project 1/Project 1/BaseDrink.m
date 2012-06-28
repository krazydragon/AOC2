//
//  BaseDrink.m
//  Project 1
//
//  Created by Ronaldo Barnes on 6/27/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "BaseDrink.h"

@implementation BaseDrink


-(void)setDrinkAtt:(int)drinkType drinkName:(NSString*)drinkName needsIce:(bool)needsIce time:(int)time
{
    ice = needsIce;
    _drinkName = drinkName;
    _drinkType = drinkType;
    _time = time;
    
    
}

@end
