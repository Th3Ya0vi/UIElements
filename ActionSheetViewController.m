//
//  ActionSheetViewController.m
//  UIElements
//
//  Created by Ardeus Joseph R. Parducho  on 4/17/13.
//  Copyright (c) 2013 KLab. All rights reserved.
//

#import "ActionSheetViewController.h"

@interface ActionSheetViewController ()

@end

@implementation ActionSheetViewController

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
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)showActionSheet:(id)sender {
    UIActionSheet *popupQuery = [[UIActionSheet alloc] initWithTitle:@"Title" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Unequip" otherButtonTitles:@"Great Sword", @"Long Sword", @"Hammer", @"Lance", @"Gunlance", nil];
    popupQuery.actionSheetStyle = UIActionSheetStyleBlackOpaque;
    [popupQuery showInView:self.view];
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    switch (buttonIndex) {
        case 0:
            [imageView setImage:nil];
            break;
        case 1:
            [imageView setImage:[UIImage imageNamed: @"GS.png"]];
            break;
        case 2:
            [imageView setImage:[UIImage imageNamed: @"LS.png"]];
            break;
        case 3:
            [imageView setImage:[UIImage imageNamed: @"Hammer.png"]];
            break;
        case 4:
            [imageView setImage:[UIImage imageNamed: @"Lance.png"]];
            break;
        case 5:
            [imageView setImage:[UIImage imageNamed: @"GL.png"]];
            break;
        case 6:
            break;
    }
}

@end
