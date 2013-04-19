//
//  PickerViewController.h
//  UIElements
//
//  Created by Ardeus Joseph R. Parducho  on 4/16/13.
//  Copyright (c) 2013 KLab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate> {
    IBOutlet UIPickerView *pickerView;
    NSMutableArray *arrayColors;
}

@end
