//
//  ViewController.m
//  Project 1
//
//  Created by Ronaldo Barnes on 6/27/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "ViewController.h"
#import "DrinkFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Background color
    self.view.backgroundColor = [UIColor blackColor];
    //create blended drink label and text
    blendedDrinkLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 50.0f, 100.0f, 25.0f)];
    if (blendedDrinkLabel != nil)
    {
        blendedDrinkLabel.backgroundColor = [UIColor blackColor];
        blendedDrinkLabel.text = @"Drink one:";
        blendedDrinkLabel.textAlignment = UITextAlignmentLeft;
        blendedDrinkLabel.textColor = [UIColor whiteColor];
        [self.view addSubview:blendedDrinkLabel];
    }
    DrinkFactory *drinkOne = [[DrinkFactory alloc] init];
    if (drinkOne != nil) 
    {
        
        blendedDrink = [drinkOne getDrink:0];
        
        tempString = [NSString stringWithFormat:@"You have a %@ drink. It will take %d minutes to make.", [blendedDrink whichDrink],[blendedDrink howMuchTime]];
        
        
        
        
    }
    blendedDrinkInfo = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 50.0f, 220.0f, 50.0f)];
    if (blendedDrinkInfo != nil)
    {
        blendedDrinkInfo.backgroundColor = [UIColor blackColor];
        blendedDrinkInfo.textAlignment = UITextAlignmentLeft;
        blendedDrinkInfo.textColor = [UIColor whiteColor];
        blendedDrinkInfo.numberOfLines = 2;
        blendedDrinkInfo.text = tempString;
        [self.view addSubview:blendedDrinkInfo];
    }
    //create hot drink label and text
    hotDrinkLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 125.0f, 100.0f, 25.0f)];
    if (hotDrinkLabel != nil)
    {
        hotDrinkLabel.backgroundColor = [UIColor blackColor];
        hotDrinkLabel.text = @"Drink two:";
        hotDrinkLabel.textAlignment = UITextAlignmentLeft;
        hotDrinkLabel.textColor = [UIColor whiteColor];
        [self.view addSubview:hotDrinkLabel];
    }
    DrinkFactory *drinkTwo = [[DrinkFactory alloc] init];
    if (drinkOne != nil) 
    {
        
        BaseDrink *hotDrink = [drinkTwo getDrink:1];
        
        tempString = [NSString stringWithFormat:@"You have a %@ drink. It will take %d minutes to make.", [hotDrink whichDrink],[hotDrink howMuchTime]];
        hotDrinkInfo = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 125.0f, 220.0f, 50.0f)];
        if (hotDrinkInfo != nil)
        {
            hotDrinkInfo.backgroundColor = [UIColor blackColor];
            hotDrinkInfo.textAlignment = UITextAlignmentLeft;
            hotDrinkInfo.textColor = [UIColor whiteColor];
            hotDrinkInfo.numberOfLines = 2;
            hotDrinkInfo.text = tempString;
            [self.view addSubview:hotDrinkInfo];
        }
        
        
        
    }
    
    //create cold drink label and text
    coldDrinkLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 200.0f, 100.0f, 25.0f)];
    if (coldDrinkLabel != nil)
    {
        coldDrinkLabel.backgroundColor = [UIColor blackColor];
        coldDrinkLabel.text = @"Drink three:";
        coldDrinkLabel.textAlignment = UITextAlignmentLeft;
        coldDrinkLabel.textColor = [UIColor whiteColor];
        [self.view addSubview:coldDrinkLabel];
    }
    DrinkFactory *drinkThree = [[DrinkFactory alloc] init];
    if (drinkOne != nil) 
    {
        
        coldDrink = [drinkThree getDrink:2];
        
        tempString = [NSString stringWithFormat:@"You have a %@ drink. It will take %d minutes to make.", [coldDrink whichDrink],[coldDrink howMuchTime]];
        
        
        
        
    }
    coldDrinkInfo = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 200.0f, 220.0f, 50.0f)];
    if (coldDrinkInfo != nil)
    {
        coldDrinkInfo.backgroundColor = [UIColor blackColor];
        coldDrinkInfo.textAlignment = UITextAlignmentLeft;
        coldDrinkInfo.textColor = [UIColor whiteColor];
        coldDrinkInfo.numberOfLines = 2;
        coldDrinkInfo.text = tempString;
        [self.view addSubview:coldDrinkInfo];
    }
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
