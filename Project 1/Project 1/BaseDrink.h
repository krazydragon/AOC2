//
//  BaseDrink.h
//  Project 1
//
//  Created by Ronaldo Barnes on 6/27/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface BaseDrink : NSObject
{
 @private
    int _drinkType;
    NSString *_drinkName;
    bool ice;
    int _time;
    
}


-(void)setDrinkAtt:(int)drinkType drinkName:(NSString*)drinkName needsIce:(bool)needsIce time:(int)time;

@end
