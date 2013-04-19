//
//  ButtonViewController.m
//  UIElements
//
//  Created by Ardeus Joseph R. Parducho  on 4/12/13.
//
//

#import "ButtonViewController.h"

@interface UIViewController ()

@end

@implementation ButtonViewController
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    //Call the init method implemented by the superclass
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        
        UITabBarItem *tbi= [self tabBarItem];
        [tbi setTitle:@"UIButton"];
        
        //Create two arrays and make the pointers point to them
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        //Add questions and answers to the arrays
        [questions addObject:@"What is 7 + 7?"];
        [answers addObject:@"14"];
        
        [questions addObject:@"What is the capital of Vermont?"];
        [answers addObject:@"Montpelier"];
        
        [questions addObject:@"From what is cognac made?"];
        [answers addObject:@"Grapes"];
    }
    
    //Return the address of the new object
    return self;
}

-(IBAction)showQuestion:(id)sender {
    //Step to the current next question
    currentQuestionIndex++;
    
    //Am I past the last question?
    if (currentQuestionIndex == [questions count]) {
        //Go back to the first question
        currentQuestionIndex = 0;
    }
    
    //Get the string at that index in the questions array
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    //Log the string to the console
    NSLog(@"Displaying question: %@", question);
    
    //Display the text in the question field
    [questionField setText:question];
    
    //Clear the answer field
    [answerField setText:@"?"];
}

-(IBAction)showAnswer:(id)sender {
    //What is the answer to the current question?
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    //Display it in the answer field
    [answerField setText:answer];
}
@end
