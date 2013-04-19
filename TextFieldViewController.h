//
//  TextFieldViewController.h
//  UIELements
//
//  Created by Ardeus Joseph R. Parducho  on 4/16/13.
//  Copyright (c) 2013 KLab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TextFieldViewController : UIViewController <UITextFieldDelegate>{
     IBOutlet UILabel *textLabel;
}
@property (weak, nonatomic) IBOutlet UITextField *field;
@property (nonatomic, strong) UILabel *label;

@end
