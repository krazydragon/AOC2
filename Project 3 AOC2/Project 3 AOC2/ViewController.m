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
    eventView.text = @"does this work?";
    NSLog(@"%@", eventDetails);
        
    
  
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}
-(void)showEvent:(NSString *)eventString
{
     NSMutableString *evenTemp = [[NSMutableString alloc] initWithString: eventView.text];
    [evenTemp appendString: eventString];
    eventView.text = evenTemp;
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
- (IBAction)onClick:(id)sender
{
    EventViewController *event = [[EventViewController alloc] initWithNibName:@"EventViewController" bundle:nil];
    if (event != nil)
    {
        event.delegate = self;
        [self presentModalViewController:event animated:TRUE];
    }
}

@end
