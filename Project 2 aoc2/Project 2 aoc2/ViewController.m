//
//  ViewController.m
//  Project 2 aoc2
//
//  Created by Ronaldo Barnes on 7/9/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "ViewController.h"
#import "infoViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    tempNum = 0;
    UIButton *infoButton =[UIButton buttonWithType:UIButtonTypeInfoDark];
    if (infoButton != nil)
    {
        infoButton.frame = CGRectMake(0.0f, 375.0f, 25.0f, 25.0f);
        infoButton.tag = 0;
        [infoButton addTarget:self action:@selector(infoClick:) forControlEvents:(UIControlEventTouchUpInside)];
        
        [self.view addSubview:infoButton];
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
- (void)infoClick:(UIButton*)button
{
    infoViewController *infoController = [[infoViewController alloc] initWithNibName:@"infoViewController" bundle:nil];
    
    if (infoController != nil)
    {
        [self presentModalViewController:infoController animated:TRUE]; 
    }

}
-(IBAction)onClick:(id)sender
{
    
    UIButton *calcButton = (UIButton*)sender;
    if (calcButton != nil)
    {
        
        if (calcButton.tag == 0)
        {
            tempNum = tempNum * 10 + 0;
        }
        else if (calcButton.tag == 1)
        {
            tempNum = tempNum * 10 + 1;
        }
            
            }
    calcTextField.text = [[NSString alloc] initWithFormat:@"%d", tempNum];
}
-(IBAction)calcPower:(id)sender
{
    UISwitch *power = (UISwitch*)sender;
    if (power != nil)
    {
        if (power.on == TRUE ) 
        {
            //calcTextField.enabled = TRUE;
            calcTextField.text = @"";
        }
        else if (power.on == FALSE ) 
        {
            //calcTextField.enabled = FALSE;  
        }    
    }
}
@end
