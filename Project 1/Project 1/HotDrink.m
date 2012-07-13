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
    self =  [super init];
    if (self != nil)
    {
        [self changeDrink: @"Hot"];
        [self changeIce : NO];
        [self changeTime : 3];
    }
    return self;
}
@end