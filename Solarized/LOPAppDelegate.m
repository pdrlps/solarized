//
//  LOPAppDelegate.m
//  Solarized
//
//  Created by Pedro Lopes on 17/03/14.
//  Copyright (c) 2014 Pedro Lopes. All rights reserved.
//

#import "LOPAppDelegate.h"
#import "LOPColorListViewController.h"

@implementation LOPAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    application.statusBarStyle = UIStatusBarStyleDefault;
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor colorWithRed:0.99 green:0.96 blue:0.89 alpha:1.00];
    
    UIViewController *viewController = [[LOPColorListViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    self.window.rootViewController = navigationController;
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
