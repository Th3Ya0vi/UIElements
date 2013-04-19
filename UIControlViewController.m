//
//  UIControlViewController.m
//  UIElements
//
//  Created by Ardeus Joseph R. Parducho  on 4/16/13.
//  Copyright (c) 2013 KLab. All rights reserved.
//

#import "UIControlViewController.h"

@interface UIControlViewController ()

@end

@implementation UIControlViewController
@synthesize theSwitch;
@synthesize theLabel;
@synthesize theSlider;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        UITabBarItem *tbi= [self tabBarItem];
        [tbi setTitle:@"UIControl"];

    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    theLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 200, 50)];
    [theLabel setText:@"Clean"];
    [theLabel setFont:[UIFont fontWithName:@"TrebuchetMS-Italic" size:18]];
    
    [self.view addSubview:theLabel];
    // Do any additional setup after loading the view from its nib.
    
    theSwitch = [[UISwitch alloc] initWithFrame:CGRectMake(20, 250, 1, 1)];
    [theSwitch addTarget:self action:@selector(toggleSwitch) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:theSwitch];
    
    theSlider = [[UISlider alloc] initWithFrame:CGRectMake(125, 215, 175, 100)];
    [theSlider setValue:0];
    [theSlider setMinimumValue:0];
    [theSlider setMaximumValue:100];
    [theSlider addTarget:self action:@selector(slide) forControlEvents:UIControlEventAllTouchEvents];
    [self.view addSubview:theSlider];
    
}

- (void)toggleSwitch {
    if (theSwitch.on) {
        [theLabel setText:@"Overdrive"];
    } else {
        [theLabel setText:@"Clean"];
    }
}

- (void)slide {
    if (theSlider.value < 25) {
        [theLabel setFont:[UIFont fontWithName:@"TrebuchetMS-Italic" size:18]];
    } else if (theSlider.value > 75) {
        [theLabel setFont:[UIFont fontWithName:@"TrebuchetMS-Bold" size:32]];
    } else {
        [theLabel setFont:[UIFont fontWithName:@"TrebuchetMS" size:24]];
    }
}

- (void)viewDidUnload
{
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
