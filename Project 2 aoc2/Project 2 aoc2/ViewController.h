//
//  ViewController.h
//  Project 2 aoc2
//
//  Created by Ronaldo Barnes on 7/9/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UITextField *calcTextField;
    IBOutlet UIButton *button0;
    IBOutlet UIButton *button1;
    IBOutlet UIButton *button2;
    IBOutlet UIButton *button3;
    IBOutlet UIButton *button4;
    IBOutlet UIButton *button5;
    IBOutlet UIButton *button6;
    IBOutlet UIButton *button7;
    IBOutlet UIButton *button8;
    IBOutlet UIButton *button9;
    IBOutlet UIButton *buttonAdd;
    IBOutlet UIButton *buttonEqual;
    IBOutlet UIButton *buttonClear;
    int tempNum;
    

}

-(IBAction)calcPower:(id)sender;
-(IBAction)onClick:(id)sender;

@end
