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
    NSLog(@"%@",eventDetails);
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
        if ([eventView.text isEqualToString:@"Please add an event by pressing the button."]) 
        {
            //setup blank holder for event text 
            eventView.text = @"";
            eventDetails = [[NSMutableString alloc] initWithString:@""];
        }
    }
  

}
-(IBAction)onClick:(id)sender
{
    
}
@end
