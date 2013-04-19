//
//  SegmentedControlViewController.m
//  UIElements
//
//  Created by Ardeus Joseph R. Parducho  on 4/16/13.
//  Copyright (c) 2013 KLab. All rights reserved.
//

#import "SegmentedControlViewController.h"

@interface SegmentedControlViewController ()

@end

@implementation SegmentedControlViewController

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
       
    controlArray = [NSArray arrayWithObjects: @".60mm", @".73mm", @".88mm", nil];
	UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:controlArray];
	segmentedControl.frame = CGRectMake(35, 300, 250, 50);
	segmentedControl.segmentedControlStyle = UISegmentedControlStylePlain;
	segmentedControl.selectedSegmentIndex = 0;
	[segmentedControl addTarget:self
	                     action:@selector(pickOne:)
	           forControlEvents:UIControlEventValueChanged];
	[self.view addSubview:segmentedControl];
    
}

- (void)viewDidUnload
{
    imageView = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void) pickOne:(id)sender{
	UISegmentedControl *segmentedControl = (UISegmentedControl *)sender;
	//label.text = [segmentedControl titleForSegmentAtIndex: [segmentedControl selectedSegmentIndex]];
    
    switch ([segmentedControl selectedSegmentIndex]) {
        case 0:
            [imageView setImage:[UIImage imageNamed:@"60.png"]];
            break;
        case 1:
            [imageView setImage:[UIImage imageNamed:@"73.png"]];
            break;
        case 2:
            [imageView setImage:[UIImage imageNamed:@"88.png"]];
            break;
        default:
            break;
    }
    
    
}


@end
