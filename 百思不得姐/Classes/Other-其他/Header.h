//
//  Header.h
//  百思不得姐
//
//  Created by 柳钰柯 on 2016/10/12.
//  Copyright © 2016年 柳钰柯. All rights reserved.
//

#ifndef Header_h
#define Header_h

#import "UIView+LaExtension.h"
#import "UIBarButtonItem+LaExtension.h"

#ifdef DEBUG
#define LaLog(...) NSLog(__VA_ARGS__)
#else
#define LaLog(...)  
#endif

#define LaLogFunc  LaLog(@"%s",__func__)

#define LaRGBColor(r,g,b) [UIColor colorWithRed:(r) / 255.0 green:(g) / 255.0 blue:(b) / 255.0 alpha:1.0]
#define LaGlobalBg LaRGBColor(223,223,223)

#endif /* Header_h */
