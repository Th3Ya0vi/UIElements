//
//  AccelerometerViewController.m
//  Homepwner
//
//  Created by Ardeus Joseph R. Parducho  on 4/18/13.
//  Copyright (c) 2013 KLab. All rights reserved.
//

#import "AccelerometerViewController.h"

@interface AccelerometerViewController ()

@end

@implementation AccelerometerViewController
@synthesize accelerometer;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    self.accelerometer = [UIAccelerometer sharedAccelerometer];
    self.accelerometer.updateInterval = 1.0/30.0;
    self.accelerometer.delegate = self;}

- (void)viewDidUnload
{
    image = nil;
    self.accelerometer.delegate = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

// UIAccelerometerDelegate method, called when the device accelerates.
- (void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration {
    // Update the accelerometer graph view
	y = acceleration.y * 50;
    x = acceleration.x * 50;

    float newX = image.center.x + x;
    float newY = image.center.y - y;
    
    if (newX > 320 - 25)
        (newX = 320 - 25);
    
    if (newX < 0 + 25)
        (newX = 0 + 25);
    
    if (newY > 480 - 90)
        (newY = 480 - 90);
    
    if (newY < 0 + 25)
        (newY = 0 + 25);
    newCenter = CGPointMake(newX, newY);
    
    [image setCenter:newCenter];
    
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:YES];
    self.accelerometer.delegate = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


@end
