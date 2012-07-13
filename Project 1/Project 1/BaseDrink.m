//
//  BaseDrink.m
//  Project 1
//
//  Created by Ronaldo Barnes on 6/27/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "BaseDrink.h"
#import "ViewController.h"


@implementation BaseDrink

//Set default drink info

-(id)init
{
    self =  [super init];
    if (self != nil)
    {
        _ice = NO;
        _drinkName = @"Empty";
        _time = 0;
    }
    return self;
   
}
//change if ice is needed or not
-(void)changeIce:(bool)temp
{
    _ice = temp;
}

//retrieve if ice is needed
-(bool)getIce
{
    
    return _ice;
}

//change drink name
-(void)changeDrink:(NSString*)temp
{
    _drinkName = temp;
}
//get drink name
-(NSString*)whichDrink
{
    
    return _drinkName;
}
//change time needed to make drink
-(void)changeTime:(int)temp
{
    _time = temp;
}
//detemine how much time it takes to make a drink
-(int)howMuchTime
{
    
    return _time;
}

@end
