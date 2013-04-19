//
//  UIControlViewController.h
//  UIElements
//
//  Created by Ardeus Joseph R. Parducho  on 4/16/13.
//  Copyright (c) 2013 KLab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIControlViewController : UIViewController
{
    UISwitch *theSwitch;
    UISlider *theSlider;
}

@property (nonatomic, strong) UISwitch *theSwitch;
@property (nonatomic, strong) UILabel *theLabel;
@property (nonatomic, strong) UISlider *theSlider;

@end
