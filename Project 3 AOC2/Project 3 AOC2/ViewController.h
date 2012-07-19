//
//  ViewController.h
//  Project 3 AOC2
//
//  Created by Ronaldo Barnes on 7/16/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventViewController.h"


@interface ViewController : UIViewController<saveEvent>
{
    IBOutlet UITextView *eventView;
    NSString *eventDetails;
    
}

- (IBAction)onClick:(id)sender;


@end
