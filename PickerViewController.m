//
//  PickerViewController.m
//  UIElements
//
//  Created by Ardeus Joseph R. Parducho  on 4/16/13.
//  Copyright (c) 2013 KLab. All rights reserved.
//

#import "PickerViewController.h"

@interface PickerViewController ()

@end

@implementation PickerViewController

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

    arrayColors = [[NSMutableArray alloc] init];
    [arrayColors addObject:@"Red"];
    [arrayColors addObject:@"Orange"];
    [arrayColors addObject:@"Yellow"];
    [arrayColors addObject:@"Green"];
    [arrayColors addObject:@"Blue"];
    [arrayColors addObject:@"Indigo"];
    [arrayColors addObject:@"Violet"];
    
    self.view.backgroundColor = [UIColor colorWithHue:.013 saturation:.7 brightness:.7 alpha:1];
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

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)thePickerView {
    
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)thePickerView numberOfRowsInComponent:(NSInteger)component {
    
    return [arrayColors count];
}

- (NSString *)pickerView:(UIPickerView *)thePickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [arrayColors objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)thePickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    //NSLog(@"Selected Color: %@. Index of selected color: %i", [arrayColors objectAtIndex:row], row);
   
    if (row == 0) {
        self.view.backgroundColor = [UIColor colorWithHue:.013 saturation:.7 brightness:.7 alpha:1];
    } else if (row == 1) {
        self.view.backgroundColor = [UIColor colorWithHue:.0416 saturation:.70 brightness:.75 alpha:1];
    } else if (row == 2) {
        self.view.backgroundColor = [UIColor colorWithHue:.125 saturation:.60 brightness:.90 alpha:1];
    } else if (row == 3) {
        self.view.backgroundColor = [UIColor colorWithHue:.208 saturation:.70 brightness:.60 alpha:1];
    } else if (row == 4) {
        self.view.backgroundColor = [UIColor colorWithHue:.569 saturation:.70 brightness:.60 alpha:1];
    } else if (row == 5) {
        self.view.backgroundColor = [UIColor colorWithHue:.625 saturation:.60 brightness:.50 alpha:1];
    } else if (row == 6) {
        self.view.backgroundColor = [UIColor colorWithHue:.75 saturation:.45 brightness:.50 alpha:1];
    } 
    
}

@end
