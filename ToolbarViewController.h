//
//  ToolbarViewController.h
//  UIElements
//
//  Created by Ardeus Joseph R. Parducho  on 4/17/13.
//  Copyright (c) 2013 KLab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ToolbarViewController : UIViewController {
    IBOutlet UILabel* countLabel;
    NSInteger count;
}

@property(nonatomic, retain)UILabel* countLabel;
@property(nonatomic)NSInteger count;
- (IBAction)add:(UIBarButtonItem *)sender;
- (IBAction)sub:(UIBarButtonItem *)sender;
- (IBAction)reset:(UIBarButtonItem *)sender;
- (void)displayCount;

@end
