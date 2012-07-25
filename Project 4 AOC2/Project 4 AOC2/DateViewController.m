//
//  DateViewController.m
//  Project 4 AOC2
//
//  Created by Ronaldo Barnes on 7/24/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "DateViewController.h"

@interface DateViewController ()

@end

@implementation DateViewController

@synthesize delegate;

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
    //set current date and local timezone
    eventDatePicker.timeZone = [NSTimeZone localTimeZone];
    [eventDatePicker setMinimumDate:[NSDate date]];
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
        if (eventButton.tag == 1)
        {
            
            //setup date format
            NSDateFormatter *formattedDate = [[NSDateFormatter alloc] init];
            if (formattedDate != nil) {
                [formattedDate setDateFormat:@"EEE, MMMM d yyyy hh:mm aaa"];
                tempDate = [formattedDate stringFromDate:eventDate];
                
                
            } 
            NSString *tempStr = @"Please select a date!";
            //make sure that user has selected a date
            if (tempDate == nil)
            {
                UIAlertView *displayString = [[UIAlertView alloc] initWithTitle:@"Error" message:tempStr delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                if (displayString != nil)
                {
                    [displayString show];
                }
            }
            else
            {
                
                //setting up transport of data between views sending as string
                NSString *tempString = [[NSString alloc] initWithFormat:@"\n Add Event:%@ \n %@ \n",eventTextField.text,tempDate];  
                
                if (delegate != nil)
                {
                    [delegate showEvent:tempString];
                }
                [self dismissModalViewControllerAnimated:TRUE];
                
            }
            
            
            
        }
        else if (eventButton.tag == 0)
            //dismiss keyboard
        {
            [eventTextField resignFirstResponder];
        }
    }
}     

//capture date picker info
-(IBAction)onChange:(id)sender
{
    UIDatePicker *datePicker = (UIDatePicker*)sender;
    if (datePicker !=nil)
    {
        eventDate = datePicker.date;
    }
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //setup date format
        NSDateFormatter *formattedDate = [[NSDateFormatter alloc] init];
        if (formattedDate != nil) {
            [formattedDate setDateFormat:@"EEE, MMMM d yyyy hh:mm aaa"];
            tempDate = [formattedDate stringFromDate:eventDate];
            
            
        } 
        NSString *tempStr = @"Please select a date!";
        //make sure that user has selected a date
        if (tempDate == nil)
        {
            UIAlertView *displayString = [[UIAlertView alloc] initWithTitle:@"Error" message:tempStr delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            if (displayString != nil)
            {
                [displayString show];
            }
        }
        else
        {
            
            //setting up transport of data between views sending as string
            NSString *tempString = [[NSString alloc] initWithFormat:@"\n Add Event:%@ \n %@ \n",eventTextField.text,tempDate];  
            
            if (delegate != nil)
            {
                [delegate showEvent:tempString];
            }
            
            
        }
    
}

@end
