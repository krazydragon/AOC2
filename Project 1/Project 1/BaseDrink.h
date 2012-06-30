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
 @protected
    NSString *_drinkName;
    bool _ice;
    int _time;

    
}



-(void)changeIce:(bool)temp;
-(void)changeDrink:(NSString*)temp;
-(void)changeTime:(int)temp;
-(bool)getIce;
-(NSString*)whichDrink;
-(int)howMuchTime;



;@end
