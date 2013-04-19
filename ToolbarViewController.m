//
//  ToolbarViewController.m
//  UIElements
//
//  Created by Ardeus Joseph R. Parducho  on 4/17/13.
//  Copyright (c) 2013 KLab. All rights reserved.
//

#import "ToolbarViewController.h"

@interface ToolbarViewController ()

@end

@implementation ToolbarViewController

@synthesize count;
@synthesize countLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        UITabBarItem *tbi= [self tabBarItem];
        [tbi setTitle:@"UIToolbar"];

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)add:(UIBarButtonItem *)sender{
    if (count < 9) {
        count++;
        [self displayCount];
    }
}
- (IBAction)sub:(UIBarButtonItem *)sender {
    if (count > -9){
    count--;
    [self displayCount];

    }
}

- (IBAction)reset:(UIBarButtonItem *)sender {
    count = 0;
    [self displayCount];
}

- (void)displayCount {
    [self.countLabel setText:[[NSString alloc]initWithFormat:@"%d", self.count]];
}

@end
