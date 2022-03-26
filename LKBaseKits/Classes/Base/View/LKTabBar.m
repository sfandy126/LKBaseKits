//
//  LKTabBar.m
//  LKProject
//
//  Created by beichen on 2022/3/25.
//

#import "LKTabBar.h"

@implementation LKTabBar

- (instancetype)init
{
    self = [super init];
    if (self) {
        //兼容iphone12 UITabBar选中时多了一层imageview
        self.tintColor = [UIColor clearColor];
        //适配iOS13以下顶部多了线条
        self.shadowImage = [UIImage imageWithColor:UIColor.whiteColor];
        self.translucent = NO;
    }
    return self;
}

@end
