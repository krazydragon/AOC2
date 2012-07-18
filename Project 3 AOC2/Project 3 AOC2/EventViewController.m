//
//  EventViewController.m
//  Project 3 AOC2
//
//  Created by Ronaldo Barnes on 7/17/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "EventViewController.h"

@interface EventViewController ()

@end

@implementation EventViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
-(IBAction)onClick:(id)sender
{
    UIButton *eventButton = (UIButton*)sender;
    if (eventButton != nil)
    {
        if (eventButton.tag == 0)
        {
            [self dismissModalViewControllerAnimated:TRUE];
        }
        else if (eventButton.tag == 1)
        {
            [eventTextField resignFirstResponder];
        }
    }
        
}
@end
