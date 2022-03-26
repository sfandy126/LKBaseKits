//
//  LKNavigationController.h
//  LKProject
//
//  Created by beichen on 2022/3/25.
//

#import <UIKit/UIKit.h>


@interface LKNavigationController : UINavigationController

/**
 *基础配置
 */
- (void)setup;

/**
 *所有需要隐藏导航栏的页面,其他任何地方不设置setNavigationBarHidden
 *重写父类，实现需要隐藏导航栏的页面，
 *元素为页面的字符串
 */
- (NSArray<NSString*> *)needHidderNavigation;

@end
