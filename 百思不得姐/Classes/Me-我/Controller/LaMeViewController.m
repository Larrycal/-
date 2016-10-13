//
//  LaMeViewController.m
//  百思不得姐
//
//  Created by 柳钰柯 on 2016/10/10.
//  Copyright © 2016年 柳钰柯. All rights reserved.
//

#import "LaMeViewController.h"

@interface LaMeViewController ()

@end

@implementation LaMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置导航栏内容
    self.navigationItem.title = @"我的";
    
    // 添加两个按钮,先添加的在右边
    self.navigationItem.rightBarButtonItems = @[
                                                [UIBarButtonItem itemWithNormalImage:@"mine-setting-icon" HighlightImage:@"mine-setting-icon-click" Action:@selector(settingClick) Target:self],// 设置按钮
                                                [UIBarButtonItem itemWithNormalImage:@"mine-moon-icon" HighlightImage:@"mine-moon-icon-click" Action:@selector(moonClick) Target:self] // 月亮按钮
                                                ];
    
}

- (void)settingClick{
    LaLogFunc;
}

- (void)moonClick{
    LaLogFunc;
}

@end
