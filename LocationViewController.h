//
//  LocationViewController.h
//  UIElements
//
//  Created by Ardeus Joseph R. Parducho  on 4/17/13.
//  Copyright (c) 2013 KLab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import "MapViewController.h"

@interface LocationViewController : UIViewController <CLLocationManagerDelegate> {
    CLLocationManager *manager;
}

@property (retain, nonatomic) IBOutlet UILabel *longitude;
@property (retain, nonatomic) IBOutlet UILabel *latitude;
@property (retain, nonatomic) CLLocationManager *manager;
- (IBAction)showMap:(id)sender;

@end
