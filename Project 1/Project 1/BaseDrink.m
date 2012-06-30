//
//  BaseDrink.m
//  Project 1
//
//  Created by Ronaldo Barnes on 6/27/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "BaseDrink.h"


@implementation BaseDrink


-(id)init
{
    if (self =  [super init])
    {
        _ice = NO;
        _drinkName = @"Empty";
        _time = 0;
    }
    return nil;
   
}

-(void)changeIce:(bool)temp
{
    _ice = temp;
}
-(bool)getIce
{
    
    return _ice;
}


-(void)changeDrink:(NSString*)temp
{
    _drinkName = temp;
}
-(NSString*)whichDrink
{
    
    return _drinkName;
}

-(void)changeTime:(int)temp
{
    _time = temp;
}
-(int)howMuchTime
{
    
    return _time;
}

@end
