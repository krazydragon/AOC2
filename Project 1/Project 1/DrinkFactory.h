//
//  DrinkFactory.h
//  Project 1
//
//  Created by Ronaldo Barnes on 6/27/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseDrink.h"

@interface DrinkFactory : NSObject

-(BaseDrink*)Getdrink:(int)drinkType;
@end
