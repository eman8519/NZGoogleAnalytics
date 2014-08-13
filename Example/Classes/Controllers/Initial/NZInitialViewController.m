//
//  NZInitialViewController.m
//  NZGoogleAnalytics
//
//  Created by Bruno Tortato Furtado on 14/12/13.
//  Copyright (c) 2013 No Zebra Network. All rights reserved.
//

#import "NZInitialViewController.h"
#import "NZGoogleAnalyticsTracker.h"

@interface NZInitialViewController ()

- (IBAction)sendEventClicked;

@end



@implementation NZInitialViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [NZGoogleAnalyticsTracker trackViewWithController:self];
}

#pragma mark -
#pragma mark - Private methods

- (void)sendEventClicked
{
    //NSNumber *value = [NSNumber numberWithInt:1];
    //[NZGoogleAnalyticsTracker trackEventWithCategory:@"category" action:@"action" label:@"label" value:value];
    
    [NZGoogleAnalyticsTracker trackEventWithCategory:@"category1" action:@"action" label:@"label"];
}

@end