//
//  ViewController.m
//  Project 3 AOC2
//
//  Created by Ronaldo Barnes on 7/16/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad
{
    
    //setup blank holder for event text 
    eventDetails = [[NSMutableString alloc] initWithString:@""];   
    
  
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}
//display saved event and date information
-(void)showEvent:(NSString *)eventString
{
    
    [eventDetails appendString: eventString];
    eventView.text = eventDetails;
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

//setup add event view
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //connect the two views togeather with the use of a delegate
    EventViewController *event = [[EventViewController alloc] initWithNibName:@"EventViewController" bundle:nil];
    if (event != nil)
    {
        event.delegate = self;
        [self presentModalViewController:event animated:TRUE];
    }
}

@end
