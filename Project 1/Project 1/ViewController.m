//
//  ViewController.m
//  Project 1
//
//  Created by Ronaldo Barnes on 6/27/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    blendedDrinkLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 50.0f, 100.0f, 25.0f)];
    if (blendedDrinkLabel != nil)
    {
        blendedDrinkLabel.backgroundColor = [UIColor blackColor];
        blendedDrinkLabel.text = @"Drink one:";
        blendedDrinkLabel.textAlignment = UITextAlignmentLeft;
        blendedDrinkLabel.textColor = [UIColor whiteColor];
        [self.view addSubview:blendedDrinkLabel];
    }
    blendedDrinkInfo = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 50.0f, 220.0f, 25.0f)];
    if (blendedDrinkInfo != nil)
    {
        blendedDrinkInfo.backgroundColor = [UIColor blackColor];
        blendedDrinkInfo.textAlignment = UITextAlignmentLeft;
        blendedDrinkInfo.textColor = [UIColor whiteColor];
        [self.view addSubview:blendedDrinkInfo];
    }
    hotDrinkLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 100.0f, 100.0f, 25.0f)];
    if (hotDrinkLabel != nil)
    {
        hotDrinkLabel.backgroundColor = [UIColor blackColor];
        hotDrinkLabel.text = @"Drink two:";
        hotDrinkLabel.textAlignment = UITextAlignmentLeft;
        hotDrinkLabel.textColor = [UIColor whiteColor];
        [self.view addSubview:hotDrinkLabel];
    }
    hotDrinkInfo = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 100.0f, 220.0f, 25.0f)];
    if (hotDrinkInfo != nil)
    {
        hotDrinkInfo.backgroundColor = [UIColor blackColor];
        hotDrinkInfo.textAlignment = UITextAlignmentLeft;
        hotDrinkInfo.textColor = [UIColor whiteColor];
        [self.view addSubview:hotDrinkInfo];
    }
    coldDrinkLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 150.0f, 100.0f, 25.0f)];
    if (coldDrinkLabel != nil)
    {
        coldDrinkLabel.backgroundColor = [UIColor blackColor];
        coldDrinkLabel.text = @"Drink three:";
        coldDrinkLabel.textAlignment = UITextAlignmentLeft;
        coldDrinkLabel.textColor = [UIColor whiteColor];
        [self.view addSubview:coldDrinkLabel];
    }
    coldDrinkInfo = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 150.0f, 220.0f, 25.0f)];
    if (coldDrinkInfo != nil)
    {
        coldDrinkInfo.backgroundColor = [UIColor blackColor];
        coldDrinkInfo.textAlignment = UITextAlignmentLeft;
        coldDrinkInfo.textColor = [UIColor whiteColor];
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
