//
//  LaEssenceViewController.m
//  百思不得姐
//
//  Created by 柳钰柯 on 2016/10/10.
//  Copyright © 2016年 柳钰柯. All rights reserved.
//

#import "LaEssenceViewController.h"

@interface LaEssenceViewController ()

@end

@implementation LaEssenceViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置导航栏内容
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    // 设置左边按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithNormalImage:@"MainTagSubIcon" HighlightImage:@"MainTagSubIconClick" Action:@selector(tagClick) Target:self];
    
    // 设置背景色
    self.view.backgroundColor = LaGlobalBg;
    LaLogFunc;
}

- (void)tagClick{
    LaLog(@"%s",__func__);
}

@end
