//
//  BaseDrink.h
//  Project 1
//
//  Created by Ronaldo Barnes on 6/27/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    DRINKTYPE_BLENDED=0,
    DRINKTYPE_COLD,
    DRINKTYPE_HOT
}EDrinkKType;
@interface BaseDrink : NSObject
{
    EDrinkKType _drinkType;
    NSString *_drinkName;
    bool ice;
}

-(void)initKindOfDrink: (int)drinkType DrinkName:(NSString*)drinkName;
-(void)setDrinkAtt:(EDrinkKType)drinkType drinkName:(NSString*)drinkName needsIce:(bool)needsIce;

@end
