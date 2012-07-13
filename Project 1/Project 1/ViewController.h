//
//  ViewController.h
//  Project 1
//
//  Created by Ronaldo Barnes on 6/27/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DrinkFactory.h"


@interface ViewController : UIViewController
{
 UILabel *blendedDrinkLabel;
 UILabel *blendedDrinkInfo;
 UILabel *hotDrinkLabel;
 UILabel *hotDrinkInfo;
 UILabel *coldDrinkLabel;
 UILabel *coldDrinkInfo;
    NSString *tempString;
    BaseDrink *blendedDrink;
    BaseDrink *coldDrink;
 }

@end
