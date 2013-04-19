//
//  ActionSheetViewController.h
//  UIElements
//
//  Created by Ardeus Joseph R. Parducho  on 4/17/13.
//  Copyright (c) 2013 KLab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActionSheetViewController : UIViewController <UIActionSheetDelegate> {
    IBOutlet UIImageView *imageView;
}

-(IBAction)showActionSheet:(id)sender;

@end
