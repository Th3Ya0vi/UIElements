//
//  AlertViewController.m
//  UIELements
//
//  Created by Ardeus Joseph R. Parducho  on 4/17/13.
//  Copyright (c) 2013 KLab. All rights reserved.
//

#import "AlertViewController.h"

@interface AlertViewController ()

@end

@implementation AlertViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        quotes = [[NSMutableArray alloc] init];
        
        [quotes addObject:@"When nine hundred years old you reach, look as good, you will not, hmmm?"];
        [quotes addObject:@"On many long journeys have I gone. And waited, too, for others to return from journeys of their own. Some return; some are broken; some come back so different only their names remain."];
        [quotes addObject:@"To answer power with power, the Jedi way this is not. In this war, a danger there is, of losing who we are."];
        [quotes addObject:@"To be Jedi is to face the truth, and choose. Give off light, or darkness, Padawan. Be a candle, or the night."];
        [quotes addObject:@"If no mistake have you made, yet losing you are ... a different game you should play."];
        [quotes addObject:@"Death is a natural part of life. Rejoice for those who transform into the Force. Mourn them do not. Miss them do not. Attachment leads to jealousy. The shadow of greed, that is."];
        [quotes addObject:@"Lost a planet, Master Obi-Wan has. How embarrassing. How embarrassing."];
        [quotes addObject:@"No! Try not. Do, or do not. There is no try."];
        [quotes addObject:@"Fear is the path to the dark side. Fear leads to anger, anger leads to hate, hate leads to suffering."];
        [quotes addObject:@"When you look at the dark side, careful you must be ... for the dark side looks back"];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)showQuotes:(id)sender {
    quoteIndex = rand() % [quotes count];
    
    UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"Master Yoda says:"
                                                        message: [quotes objectAtIndex:quoteIndex] delegate:self
                                              cancelButtonTitle:@"Hmm.:3" otherButtonTitles:nil];
    [alertView show];

}

@end
