//
//  AccelerometerViewController.h
//  Homepwner
//
//  Created by Ardeus Joseph R. Parducho  on 4/18/13.
//  Copyright (c) 2013 KLab. All rights reserved.
//

#import <UIKit/UIKit.h>
#define frequency 40
 
@interface AccelerometerViewController : UIViewController <UIAccelerometerDelegate> {
     // UISlider *slider;
    CGPoint newCenter;
    __weak IBOutlet UIImageView *image;
    UIAccelerometer *accelerometer;
    
    float x;
    float y;
}
@property (nonatomic, retain) UIAccelerometer *accelerometer;
@end
