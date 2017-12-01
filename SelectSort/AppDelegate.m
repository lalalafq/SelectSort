//
//  AppDelegate.m
//  SelectSort
//
//  Created by lifeng on 17/2/24.
//  Copyright © 2017年 fq. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)selectSort:(NSMutableArray *)array
{
    for (NSInteger i = 0; i < array.count; i++)
    {
        NSNumber * firstNum = array[i];
        NSInteger minIndex = i;
        NSNumber * minNum = firstNum;
        for (NSInteger j = i;j < array.count;j++)
        {
            NSNumber * secondNum = array[j];
            minIndex = [minNum integerValue] > [secondNum integerValue] ? j : minIndex;
            minNum = [minNum integerValue] > [secondNum integerValue] ? secondNum : minNum;
        }
        if (i != minIndex)
        {
            [array exchangeObjectAtIndex:i withObjectAtIndex:minIndex];
        }
    }
    
    [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        NSLog(@"%ld",[obj integerValue]);
    }];
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSMutableArray * array = [@[@(49),@(38),@(65),@(97),@(76),@(13),@(27),@(28),@(15),@(49),@(94),@158,@158,@14,@1,@85,@3,@77,@63,@7,@23] mutableCopy];
    
    [self selectSort:array];
    
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
