//
//  ViewController.m
//  Alarm-Clock
//
//  Created by 慶 希代 on 12/01/21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // This calls the runTimer method after loading
    // SimpleClockViewController.xib
    [self runTimer];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

- (void)runTimer {
    // This starts the timer which fires the showActivity
    // method every 0.5 seconds
    myTicker = [NSTimer scheduledTimerWithTimeInterval: 0.5
                                                target: self
                                              selector: @selector(showActivity)
                                              userInfo: nil
                                               repeats: YES];
    
}

// This method is run every 0.5 seconds by the timer created
// in the function runTimer
- (void)showActivity {
    
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];
    NSDate *date = [NSDate date];
    
    // This will produce a time that looks like "12:15:00 PM".
    [formatter setTimeStyle:NSDateFormatterMediumStyle];
    
    // This sets the label with the updated time.
    [clockLabel setText:[formatter stringFromDate:date]];
    
}


@end
