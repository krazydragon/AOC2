//
//  EventViewController.h
//  Project 3 AOC2
//
//  Created by Ronaldo Barnes on 7/17/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EventViewController : UIViewController
{
    IBOutlet UITextField *eventTextField;
    IBOutlet UIDatePicker *eventDatePicker;
    NSDate *eventDate;
    NSString *tempDate;
}
-(IBAction)onClick:(id)sender;
-(IBAction)onChange:(id)sender;
@end
