//
//  ViewController.h
//  Alarm-Clock
//
//  Created by 慶 希代 on 12/01/21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController 
@property(nonatomic,retain) IBOutlet UILabel *label;
    IBOutlet UILabel* clockLabel;
    NSTimer *myTicker;
@end


/* New Methods */
- (void) runTimer;
- (void) showActivity;
