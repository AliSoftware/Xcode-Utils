//
//  CHAppDelegate.m
//  Demo2App
//
//  Created by Olivier Halligon on 13/01/13.
//  Copyright (c) 2013 AliSoftware. All rights reserved.
//

#import "CHAppDelegate.h"
#import "CHViewController.h"

@implementation CHAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [[CHViewController alloc] init];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
