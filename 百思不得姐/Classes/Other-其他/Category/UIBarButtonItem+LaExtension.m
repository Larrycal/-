//
//  UIBarButtonItem+LaExtension.m
//  百思不得姐
//
//  Created by 柳钰柯 on 2016/10/13.
//  Copyright © 2016年 柳钰柯. All rights reserved.
//

#import "UIBarButtonItem+LaExtension.h"

@implementation UIBarButtonItem (LaExtension)

+ (instancetype)itemWithNormalImage:(NSString *)normolImage HighlightImage:(NSString *)highlightImage Action:(SEL)action Target:(id)target{
    // 创建自定义按钮
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:normolImage] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highlightImage] forState:UIControlStateHighlighted];
    button.size = button.currentBackgroundImage.size;
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    // 包装为UIBarButtonItem并返回
    return [[UIBarButtonItem alloc]initWithCustomView:button];
}

@end
