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
 
    NSString *_drinkName;
    bool _ice;
    int _time;

    
}


-(id)intDrinkAtt:(int)drinkType drinkName:(NSString*)drinkName needsIce:(bool)needsIce time:(int)time;
-(void)changeIce:(bool)temp;
-(void)changeDrink:(NSString*)temp;
-(void)changeTime:(int)temp;


;@end
