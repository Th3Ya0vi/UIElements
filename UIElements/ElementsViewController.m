//
//  ElementsViewController.m
//  UIElements
//
//  Created by Ardeus Joseph R. Parducho  on 4/12/13.
//  Copyright (c) 2013 KLab. All rights reserved.
//

#import "ElementsViewController.h"
#import "ButtonViewController.h"
#import "UIControlViewController.h"
#import "TextFieldViewController.h"
#import "PickerViewController.h"
#import "ImageViewController.h"
#import "WebViewController.h"
#import "SegmentedControlViewController.h"
#import "ToolbarViewController.h"
#import "TabBarViewController.h"
#import "AlertViewController.h"
#import "ActionSheetViewController.h"
#import "URLConnectionViewController.h"
#import "LocationViewController.h"
#import "AccelerometerViewController.h"
#import "DrawingViewController.h"

@implementation ElementsViewController

- (id)init {
    // Call the superclass's designated initializer
    self = [super initWithStyle:UITableViewStyleGrouped];
    
    if (self){
        
    }

    return self;
}

- (id)initWithStyle:(UITableViewStyle)style {
    return [self init];
}

- (void) viewDidLoad {
    [super viewDidLoad];
    cellName = [[NSMutableArray alloc] init];
    
    [cellName addObject:@"UIButton"];
    [cellName addObject:@"UIControl"];
    [cellName addObject:@"UITextField"];
    [cellName addObject:@"UIPickerView"];
    [cellName addObject:@"UIImageView"];
    [cellName addObject:@"UIWebView"];
    [cellName addObject:@"UISegmentedControl"];
    [cellName addObject:@"UIToolbar"];
    [cellName addObject:@"UITabBar"];
    [cellName addObject:@"UIAlertView"];
    [cellName addObject:@"UIActionSheet"];
    [cellName addObject:@"NSURLConnection"];
    [cellName addObject:@"Core Location"];
    [cellName addObject:@"Accelerometer"];
    [cellName addObject:@"Drawing"];
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [cellName count];
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"Cell";
    
    //Check for reusable cell first, use that if it exists
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    //If there is no reusable cell of this type, create a new one
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        [cell setBackgroundColor:[UIColor grayColor]];
    }
    
    NSString *title = [cellName objectAtIndex:indexPath.row];
    [[cell textLabel] setText:title];
    [[cell textLabel] setTextColor:[UIColor whiteColor]];
        
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    selectedCell = indexPath.row;
    switch (selectedCell) {
        case 0: {
            ButtonViewController *buttonViewController = [[ButtonViewController alloc] init];
            [[self navigationController] pushViewController:buttonViewController animated:YES];
            break;
        }
        case 1: {
            UIControlViewController *uiControlViewController = [[UIControlViewController alloc] init];
            [[self navigationController] pushViewController:uiControlViewController animated:YES];
            break;
        }
        case 2: {
            TextFieldViewController *textFieldViewController = [[TextFieldViewController alloc] init];
            [[self navigationController] pushViewController:textFieldViewController animated:YES];
            break;
        }
        case 3: {
            PickerViewController *pickerViewController = [[PickerViewController alloc] init];
            [[self navigationController] pushViewController:pickerViewController animated:YES];
            break;
        }
        case 4: {
            ImageViewController *imageViewController = [[ImageViewController alloc] init];
            [[self navigationController] pushViewController:imageViewController animated:YES];
            break;
        }
        case 5: {
            WebViewController *webViewController = [[WebViewController alloc] init];
            [[self navigationController] pushViewController:webViewController animated:YES];
            break;
        }
        case 6: {
            SegmentedControlViewController *segmentedControlViewController = [[SegmentedControlViewController alloc] init];
            [[self navigationController] pushViewController:segmentedControlViewController animated:YES];
            break;
        }
        case 7: {
            ToolbarViewController *toolbarViewController = [[ToolbarViewController alloc] init];
            [[self navigationController] pushViewController:toolbarViewController animated:YES];
            break;
        }
        case 8: {
            ButtonViewController *quizViewController = [[ButtonViewController alloc] init];
            UIControlViewController *uiControlViewController = [[UIControlViewController alloc] init];
            ImageViewController *imageViewController = [[ImageViewController alloc] init];
            WebViewController *webViewController = [[WebViewController alloc] init];
            ToolbarViewController *toolbarViewController = [[ToolbarViewController alloc] init];                                                                
        
            UITabBarController *tabBarController = [[UITabBarController alloc] init];
            NSArray *viewController = [NSArray arrayWithObjects: quizViewController, uiControlViewController, imageViewController, webViewController, toolbarViewController, nil];
            [tabBarController setViewControllers:viewController];
        
            [[self navigationController] pushViewController:tabBarController animated:YES];
            break;
        }
        case 9: {
            AlertViewController *alertViewController = [[AlertViewController alloc] init];
            [[self navigationController] pushViewController:alertViewController animated:YES];
            break;
        }
        case 10: {
            ActionSheetViewController *actionSheetViewController = [[ActionSheetViewController alloc] init];
            [[self navigationController] pushViewController:actionSheetViewController animated:YES];
            break;

        }
        case 11: {
            URLConnectionViewController *urlConnectionViewController = [[URLConnectionViewController alloc] init];
            [[self navigationController] pushViewController:urlConnectionViewController animated:YES];
            break;
            
        }
        case 12: {
            LocationViewController *locationViewController = [[LocationViewController alloc] init];
            [[self navigationController] pushViewController:locationViewController animated:YES];
            break;
        }
        case 13: {
            AccelerometerViewController *accelerometerViewController = [[AccelerometerViewController alloc] init];
            [[self navigationController] pushViewController:accelerometerViewController animated:YES];
            break;
        }
        case 14: {
            DrawingViewController *drawingViewController = [[DrawingViewController alloc] init];
            [[self navigationController] pushViewController:drawingViewController animated:YES];
            break;
        }


        default:break;
    }
     
}
@end
