//
//  URLConnectionViewController.m
//  UIELements
//
//  Created by Ardeus Joseph R. Parducho  on 4/17/13.
//  Copyright (c) 2013 KLab. All rights reserved.
//

#import "URLConnectionViewController.h"

@interface URLConnectionViewController ()

@end

@implementation URLConnectionViewController

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
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://community.pearljam.com"]];
    NSURLConnection *conn = [[NSURLConnection alloc] init];
    (void)[conn initWithRequest:request delegate:self];
}

- (void)viewDidUnload
{
    webView = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    // A response has been received
    _responseData = [[NSMutableData alloc] init];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    // Append the new data to the instance variable
    [_responseData appendData:data];
}

- (NSCachedURLResponse *)connection:(NSURLConnection *)connection
willCacheResponse:(NSCachedURLResponse*)cachedResponse {
    // Return nil to indicate not necessary to store a cached response for this connection
    return nil;
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    [webView loadData:_responseData MIMEType: @"text/html" textEncodingName: @"UTF-8" baseURL:nil];
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
}

@end
