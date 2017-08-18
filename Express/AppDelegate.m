//
//  AppDelegate.m
//  Express
//
//  Created by LeeLom on 16/7/24.
//  Copyright © 2016年 LeeLom. All rights reserved.
//

#import "AppDelegate.h"
#import "ExpressPhoneNum.h"
#import "Lottie/Lottie.h"
#import "FirstViewController.h"

@interface AppDelegate ()

@property (strong, nonnull) LOTAnimationView *animationView;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [self.window makeKeyAndVisible];
    _animationView = [LOTAnimationView animationNamed:@"permission"];
    _animationView.frame = CGRectMake(0, 0, self.window.frame.size.width, self.window.frame.size.width);
    _animationView.center = self.window.center;
    _animationView.contentMode = UIViewContentModeScaleAspectFill;
    [self.window addSubview:_animationView];
    [self.window bringSubviewToFront:_animationView];
    
    [self performSelector:@selector(animation) withObject:nil afterDelay:1.0f];
    _animationView.loopAnimation = NO;
    
    return YES;
}

- (void) animation {
    [_animationView playWithCompletion:^(BOOL animationFinished) {
        if (animationFinished) {
            NSLog(@"Remove");
            [_animationView removeFromSuperview];
        }
    }];
    
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
