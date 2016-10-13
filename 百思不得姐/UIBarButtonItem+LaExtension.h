//
//  UIBarButtonItem+LaExtension.h
//  百思不得姐
//
//  Created by 柳钰柯 on 2016/10/13.
//  Copyright © 2016年 柳钰柯. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (LaExtension)

/**
 封装自定义创建BarButtonItem

 @param normolImage    正常图片
 @param highlightImage 高亮图片
 @param action         button绑定的方法
 @param target         调用方法的对象

 @return               返回一个UIBarButtonItem
 */
+ (instancetype)itemWithNormalImage:(NSString *)normolImage HighlightImage:(NSString *)highlightImage Action:(SEL)action Target:(id)target;
@end
