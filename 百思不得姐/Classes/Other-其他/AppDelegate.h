//
//  AppDelegate.h
//  百思不得姐
//
//  Created by 柳钰柯 on 2016/10/9.
//  Copyright © 2016年 柳钰柯. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

