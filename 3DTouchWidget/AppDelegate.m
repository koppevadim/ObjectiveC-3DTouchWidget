//
//  AppDelegate.m
//  3DTouchWidget
//
//  Created by Vadim Koppe on 30.11.16.
//  Copyright © 2016 Vadim Koppe. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    if (launchOptions) {
        UIApplicationShortcutItem *item = launchOptions[UIApplicationLaunchOptionsShortcutItemKey];
        
        if (item) {
            if ([item.type isEqualToString:@"one"]) {
                UINavigationController *vc = (UINavigationController *)self.window.rootViewController;
                vc.topViewController.view.backgroundColor = [UIColor greenColor];
            }else {
                UINavigationController *vc = (UINavigationController *)self.window.rootViewController;
                vc.topViewController.view.backgroundColor = [UIColor grayColor];
            }
            return YES;
        }
        
    }else{
        UIApplicationShortcutIcon *iconOne = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeHome];
        UIApplicationShortcutItem *itemOne = [[UIApplicationShortcutItem alloc] initWithType:@"one" localizedTitle:@"Первый" localizedSubtitle:@"Новый Вебинар" icon:iconOne userInfo:nil];
        
        UIApplicationShortcutIcon *iconTwo = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeHome];
        UIApplicationShortcutItem *itemTwo = [[UIApplicationShortcutItem alloc] initWithType:@"two" localizedTitle:@"Второй" localizedSubtitle:@"Новый Вебинар" icon:iconTwo userInfo:nil];
        application.shortcutItems = @[itemOne, itemTwo];
    }
    return YES;
}

- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL succeeded)) completionHandler {
    
    if ([shortcutItem.type isEqualToString:@"one"]) {
        NSLog(@"1");
    }else {
        NSLog(@"2");
    }
}

- (BOOL)application:(UIApplication *)app openURL:(nonnull NSURL *)url options:(nonnull NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    NSLog(@"%@", url);
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
