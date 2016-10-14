//
//  LaTabBarController.m
//  百思不得姐
//
//  Created by 柳钰柯 on 2016/10/9.
//  Copyright © 2016年 柳钰柯. All rights reserved.
//

#import "LaTabBarController.h"
#import "LaMeViewController.h"
#import "LaNewViewController.h"
#import "LaFriendTrendsViewController.h"
#import "LaEssenceViewController.h"
#import "LaTabBar.h"
#import "LaNavigationController.h"

@interface LaTabBarController ()

@end

@implementation LaTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    NSMutableDictionary *selectAttrs = [NSMutableDictionary dictionary];
    selectAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    selectAttrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectAttrs forState:UIControlStateSelected];
    
    // 添加子控制器
    UIViewController *vc1 = [[LaEssenceViewController alloc]init];
    [self setUpChildVC:vc1 Title:@"精华" Image:@"tabBar_essence_icon" SelectImage:@"tabBar_essence_click_icon"];
    
    UIViewController *vc2 = [[LaNewViewController alloc]init];
    [self setUpChildVC:vc2 Title:@"新帖" Image:@"tabBar_new_icon" SelectImage:@"tabBar_new_click_icon"];
    
    UIViewController *vc3 = [[LaFriendTrendsViewController alloc]init];
    [self setUpChildVC:vc3 Title:@"我的关注" Image:@"tabBar_friendTrends_icon" SelectImage:@"tabBar_friendTrends_click_icon"];
    
    UIViewController *vc4 = [[LaMeViewController alloc]init];
    [self setUpChildVC:vc4 Title:@"我的" Image:@"tabBar_me_icon" SelectImage:@"tabBar_me_click_icon"];
    
    // 更换TabBar
    [self setValue:[[LaTabBar alloc]init] forKeyPath:@"tabBar"];
}

/**
 * 添加子控制器
 */
- (void)setUpChildVC:(UIViewController *)vc Title:(NSString *)title Image:(NSString *)image SelectImage:(NSString *)selectImage{
    vc.navigationItem.title = title;
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectImage];
    
    // 包装导航控制器,添加导航控制器为tabBarController的子控制器
    LaNavigationController *navigationController = [[LaNavigationController alloc] initWithRootViewController:vc];
    
    // 设置导航栏颜色
    [navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
    [self addChildViewController:navigationController];
}


@end
