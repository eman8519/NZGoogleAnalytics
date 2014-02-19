//
//  NZGoogleAnalytics.m
//  NZGoogleAnalytics
//
//  Created by Bruno Tortato Furtado on 14/12/13.
//  Copyright (c) 2013 No Zebra Network. All rights reserved.
//

#import "NZGoogleAnalytics.h"
#import "NSBundle+AlphaVersion.h"
#import "NZBundle.h"

@interface NZGoogleAnalytics ()

+ (void)setup;

@end



@implementation NZGoogleAnalytics

#pragma mark -
#pragma mark - NSObject

+ (void)load
{
#ifdef NZDEBUG
    NSLog(@"%s", __PRETTY_FUNCTION__);
#endif
    
    [super load];
    [self setup];
}

#pragma mark -
#pragma mark - Public methods

+ (void)setTrackingId:(NSString *)trackingId
{
    [[GAI sharedInstance] trackerWithTrackingId:trackingId];
}

+ (BOOL)trackUncaughtExceptions
{
    return [GAI sharedInstance].trackUncaughtExceptions;
}

+ (void)setTrackUncaughtExceptions:(BOOL)trackUncaughtExceptions
{
    [GAI sharedInstance].trackUncaughtExceptions = trackUncaughtExceptions;
}

+ (NSTimeInterval)dispatchInterval
{
    return [GAI sharedInstance].dispatchInterval;
}

+ (void)setDispatchInterval:(NSTimeInterval)dispatchInterval
{
    [GAI sharedInstance].dispatchInterval = dispatchInterval;
}

+ (GAILogLevel)logLevel
{
    return [GAI sharedInstance].logger.logLevel;
}

+ (void)setLogLevel:(GAILogLevel)logLevel
{
    [GAI sharedInstance].logger.logLevel = logLevel;
}

#pragma mark -
#pragma mark - Private methods

+ (void)setup
{
    [NZBundle setupShortVersion];

    self.trackUncaughtExceptions = YES;
    self.dispatchInterval = 20;
    self.logLevel = kGAILogLevelNone;
    
#ifdef DEBUG
    self.trackUncaughtExceptions = NO;
    self.dispatchInterval = 5;
    //self.logLevel = kGAILogLevelInfo;
#endif
}

@end