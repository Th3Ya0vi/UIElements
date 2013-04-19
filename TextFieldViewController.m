//
//  TextFieldViewController.m
//  UIElements
//
//  Created by Ardeus Joseph R. Parducho  on 4/16/13.
//  Copyright (c) 2013 KLab. All rights reserved.
//

#import "TextFieldViewController.h"

@interface TextFieldViewController ()

@end

@implementation TextFieldViewController
//@synthesize field;
//@synthesize label;
@synthesize field;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
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
    [self setField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField
{
    //NSLog(@"You entered %@",self.field.text);
    [textLabel setText:self.field.text];
    [self.field resignFirstResponder];
    return YES;
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


@end
