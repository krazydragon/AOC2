//
//  ViewController.h
//  Project 4 AOC2
//
//  Created by Ronaldo Barnes on 7/24/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DateViewController.h"


@interface ViewController : UIViewController<saveEvent>
{
    IBOutlet UITextView *eventView;
    NSMutableString *eventDetails;
    NSUserDefaults *savedEvents;
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;
-(IBAction)onClick:(id)sender;

@property (nonatomic, retain)NSMutableString *eventDetails;
@end
