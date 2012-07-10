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
    //Create info button
    UIButton *infoButton =[UIButton buttonWithType:UIButtonTypeInfoDark];
    if (infoButton != nil)
    {
        infoButton.frame = CGRectMake(280.0f, 25.0f, 25.0f, 25.0f);
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

//This makes it so that calc buttons work and info is displayed on the screen.
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
        else if (calcButton.tag == 2)
        {
            tempNum = tempNum * 10 + 2;
        }
        else if (calcButton.tag == 3)
        {
            tempNum = tempNum * 10 + 3;
        }
        else if (calcButton.tag == 4)
        {
            tempNum = tempNum * 10 + 4;
        }
        else if (calcButton.tag == 5)
        {
            tempNum = tempNum * 10 + 5;
        }
        else if (calcButton.tag == 6)
        {
            tempNum = tempNum * 10 + 6;
        }
        else if (calcButton.tag == 7)
        {
            tempNum = tempNum * 10 + 7;
        }
        else if (calcButton.tag == 8)
        {
            tempNum = tempNum * 10 + 8;
        }
        else if (calcButton.tag == 9)
        {
            tempNum = tempNum * 10 + 9;
        }
        else if (calcButton.tag == 10)
        {
            tempAdd = tempNum;
            tempNum = 0;
        }
        else if (calcButton.tag == 11)
        {
            tempNum = tempNum + tempAdd;
        }
        else if (calcButton.tag == 12)
        {
            tempNum = 0;
            tempAdd = 0;
            
        }
        
            }
    calcTextField.text = [[NSString alloc] initWithFormat:@"%d", tempNum];
}

//This is the on/off button that "powers" the calc
-(IBAction)calcPower:(id)sender
{
    UISwitch *power = (UISwitch*)sender;
    if (power != nil)
    {
        if (power.on == TRUE ) 
        {
            button0.enabled = TRUE;
            button1.enabled = TRUE;
            button2.enabled = TRUE;
            button3.enabled = TRUE;
            button4.enabled = TRUE;
            button5.enabled = TRUE;
            button6.enabled = TRUE;
            button7.enabled = TRUE;
            button8.enabled = TRUE;
            button9.enabled = TRUE;
            buttonAdd.enabled = TRUE;
            buttonClear.enabled = TRUE;
            buttonEqual.enabled = TRUE;
            calcTextField.text = @"0";
            tempNum = 0;
        }
        else if (power.on == FALSE ) 
        {
            button0.enabled = FALSE;
            button1.enabled = FALSE;
            button2.enabled = FALSE;
            button3.enabled = FALSE;
            button4.enabled = FALSE;
            button5.enabled = FALSE;
            button6.enabled = FALSE;
            button7.enabled = FALSE;
            button8.enabled = FALSE;
            button9.enabled = FALSE;
            buttonAdd.enabled = FALSE;
            buttonClear.enabled = FALSE;
            buttonEqual.enabled = FALSE;
            calcTextField.text = @"";
        }    
    }
}

//This makes it so that the user can change the background color
-(IBAction)changeColor:(id)sender;
{
    UISegmentedControl *colorChanger = (UISegmentedControl*)sender;
    if (colorChanger != nil)
    {
        int colorIndex = colorChanger.selectedSegmentIndex;
        if (colorIndex == 0)
        {
           self.view.backgroundColor = [UIColor whiteColor]; 
        }
        else if(colorIndex == 1) 
        {
            self.view.backgroundColor = [UIColor blueColor]; 
        }
        else if(colorIndex == 2) 
        {
            self.view.backgroundColor = [UIColor greenColor]; 
        }
    }
}

@end
