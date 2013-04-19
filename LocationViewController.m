//
//  LocationViewController.m
//  UIElements
//
//  Created by Ardeus Joseph R. Parducho  on 4/17/13.
//  Copyright (c) 2013 KLab. All rights reserved.
//

#import "LocationViewController.h"

@interface LocationViewController ()

@end

@implementation LocationViewController
@synthesize longitude;
@synthesize latitude;
@synthesize manager;

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
    //[self setManager:[[CLLocationManager alloc] init]];
    manager = [[CLLocationManager alloc] init];
    [manager setDelegate:self];
    //[manager setDistanceFilter:kCLDistanceFilterNone];
    [manager setDesiredAccuracy:kCLLocationAccuracyBest];
    manager.distanceFilter = kCLDistanceFilterNone;
    [manager startUpdatingLocation];
}

- (void)viewDidUnload
{
    [self setLongitude:nil];
    [self setLatitude:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
    [longitude setText:[NSString stringWithFormat:@"%f", newLocation.coordinate.longitude]];
    [latitude setText:[NSString stringWithFormat:@"%f", newLocation.coordinate.latitude]];
}

- (IBAction)showMap:(id)sender {
    MapViewController *mapViewController = [[MapViewController alloc] init];
    [[self navigationController] pushViewController:mapViewController animated:YES];
}

@end
