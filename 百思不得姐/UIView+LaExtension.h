//
//  UIView+LaExtension.h
//  百思不得姐
//
//  Created by 柳钰柯 on 2016/10/12.
//  Copyright © 2016年 柳钰柯. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LaExtension)
@property(assign, nonatomic) CGSize size;
@property(assign, nonatomic) CGFloat width;
@property(assign, nonatomic) CGFloat height;
@property(assign, nonatomic) CGFloat x;
@property(assign, nonatomic) CGFloat y;

/** 在分类中声明@property，只会生成方法的声明，不会生成方法的实现和带有_下划线的成员变量 */
@end
