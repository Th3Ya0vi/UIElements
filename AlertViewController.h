//
//  AlertViewController.h
//  UIELements
//
//  Created by Ardeus Joseph R. Parducho  on 4/17/13.
//  Copyright (c) 2013 KLab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlertViewController : UIViewController {
    NSMutableArray *quotes;
    NSInteger quoteIndex;
}

- (IBAction)showQuotes:(id)sender;

@end

