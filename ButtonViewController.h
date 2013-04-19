//
//  ButtonViewController.h
//  UIElements
//
//  Created by Ardeus Joseph R. Parducho  on 4/12/13.
//
//

#import <UIKit/UIKit.h>

@interface ButtonViewController : UIViewController {
    int currentQuestionIndex;
    
    //The model objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
}

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
