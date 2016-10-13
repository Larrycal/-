//
//  LaFriendTrendsViewController.m
//  百思不得姐
//
//  Created by 柳钰柯 on 2016/10/10.
//  Copyright © 2016年 柳钰柯. All rights reserved.
//

#import "LaFriendTrendsViewController.h"

@interface LaFriendTrendsViewController ()

@end

@implementation LaFriendTrendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置导航栏内容
    self.navigationItem.title = @"我的关注";
    
    // 设置左边按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithNormalImage:@"friendsRecommentIcon" HighlightImage:@"friendsRecommentIcon-click" Action:@selector(friendClick) Target:self];
    
    // 设置背景色
    self.view.backgroundColor = LaGlobalBg;
}

- (void)friendClick{
    LaLog(@"%s",__func__);
}

@end
