//
//  LaNavigationController.m
//  百思不得姐
//
//  Created by 柳钰柯 on 2016/10/14.
//  Copyright © 2016年 柳钰柯. All rights reserved.
//

#import "LaNavigationController.h"

@interface LaNavigationController ()

@end

@implementation LaNavigationController

/**
 当第一次使用这个类的时候会调用一次
 */
+ (void)initialize{
    
    // 当导航栏用在LaNavigationController中才会生效
//    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:[self class], nil];
    
    UINavigationBar *bar = [UINavigationBar appearance];
    [bar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // 使用这个会进行四次加载
//    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
    
}


/**
 * 在这里拦截UINavigation的push方法
 *
 * @param viewController 推进去的VC
 * @param animated       动画
 */
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    if (self.childViewControllers.count > 0) { // >1指当前视图，即当前视图为1，进入了pushView方法证明还有下一个视图，并且需要设置左上角返回按钮
        UIButton *returnButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [returnButton setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
        [returnButton setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
        [returnButton setTitle:@"返回" forState:UIControlStateNormal];
        [returnButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [returnButton setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        [returnButton addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        returnButton.size = CGSizeMake(70, 30);
        // 让按钮内的所有内容左对齐
        returnButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        // 让按钮内的所以内容向左平移-10
        returnButton.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
        // 设置下一个VC左上角显示
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:returnButton];
        
        // 隐藏tabBar
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    // super的pushView需要放在后面，让viewController可以覆盖上面的LeftBarButtonItem
    [super pushViewController:viewController animated:YES];
}


/**
 设置返回按钮监听事件---->弹出当前VC
 */
- (void)back{
    [self popViewControllerAnimated:YES];
}

@end
