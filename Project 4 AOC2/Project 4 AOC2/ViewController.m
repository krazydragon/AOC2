//
//  ViewController.m
//  Project 4 AOC2
//
//  Created by Ronaldo Barnes on 7/24/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize eventDetails;

- (void)viewDidLoad
{
    
    //check to see if there is any saved info and dispay it.
    savedEvents = [NSUserDefaults standardUserDefaults];
    if ([savedEvents objectForKey:@"details"] != nil) 
    {
        eventDetails = [[NSMutableString alloc] initWithString:[savedEvents objectForKey:@"details"]];
    }
    if (eventDetails != nil)
    {
        eventView.text = eventDetails;
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


//display saved event and date information
-(void)showEvent:(NSString *)eventString
{
    [eventDetails appendString: eventString];
    
    eventView.text = eventDetails;
    }

//setup add event view
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //connect the two views togeather with the use of a delegate
    DateViewController *event = [segue destinationViewController];
    if (event != nil)
    {
        event.delegate = self;
        //replace default text with user text
        if ([eventView.text isEqualToString:@"Please add an event by swiping right on the bottom of the screen."]) 
        {
            //setup blank holder for event text 
            eventView.text = @"";
            eventDetails = [[NSMutableString alloc] initWithString:@""];
            
        }
    }
  

}
//save user info
-(IBAction)onClick:(id)sender
{
    savedEvents = [NSUserDefaults standardUserDefaults];
    if (savedEvents != nil)
    {
        [savedEvents setObject:eventDetails forKey:@"details"];
        [savedEvents synchronize];
        //display save alert
        NSString *tempStr = @"Your information is saved.";
        UIAlertView *displayString = [[UIAlertView alloc] initWithTitle:@"Hi" message:tempStr delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [displayString show];
    }
}
@end
