//
//  LKTabBarController.m
//  LKProject
//
//  Created by beichen on 2022/3/25.
//

#import "LKTabBarController.h"
#import "LKNavigationController.h"
#import "LKTabBar.h"

@interface LKTabBarController ()<UITabBarControllerDelegate>
@property (nonatomic,strong) LKTabBar *cusTabbar;
@end

@implementation LKTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    self.delegate = self;
    self.cusTabbar = [LKTabBar new];
    self.cusTabbar.translucent = NO;
    [self setValue:self.cusTabbar forKeyPath:@"tabBar"];
    UIView *bgView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.cusTabbar.width, LK_TABBAR_HEIGHT)];
    bgView.backgroundColor = [UIColor whiteColor];
    [self.cusTabbar insertSubview:bgView atIndex:0];
    [self configTabBar];
}

- (void)configTabBar{
    [self createTabBarController:NSClassFromString(@"BCTestListViewController") title:@"首页" imageStr:@"bc_home_unselect_icon" selectImageStr:@"bc_home_selected_icon"];
    [self createTabBarController:NSClassFromString(@"LKPersonViewController") title:@"我的" imageStr:@"bc_mine_unselect_icon" selectImageStr:@"bc_mine_selected_icon"];
}

- (void)createTabBarController:(Class)Class title:(NSString *)title imageStr:(NSString *)imageStr selectImageStr:(NSString *)selectImageStr{
    UIViewController *childVc = [Class new];
    childVc.tabBarItem.title = title;
    childVc.tabBarItem.image = [[UIImage imageNamed:imageStr] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectImageStr]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // 普通状态下的文字属性
    NSMutableDictionary *normalAttrs = [NSMutableDictionary dictionary];
    normalAttrs[NSForegroundColorAttributeName] = LKHexColor(@"#333333");;
    normalAttrs[NSFontAttributeName] = LKFont(13);
    
    // 选中状态下的文字属性
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSForegroundColorAttributeName] = LKHexColor(@"#FE5922");
    selectedAttrs[NSFontAttributeName] = LKFont(13);
    
    [childVc.tabBarItem setTitleTextAttributes:normalAttrs forState:UIControlStateNormal];
    [childVc.tabBarItem setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    
    UITabBar * tabBar = [UITabBar appearance];
    if (@available(iOS 13.0, *)){
        UITabBarAppearance * tabBarAppearance = [[UITabBarAppearance alloc] init];
        [tabBarAppearance.stackedLayoutAppearance.normal setTitleTextAttributes:normalAttrs];
        [tabBarAppearance.stackedLayoutAppearance.selected setTitleTextAttributes:selectedAttrs];
        tabBarAppearance.shadowColor = [UIColor clearColor];
        [tabBar setStandardAppearance:tabBarAppearance];
    } else {
        tabBar.unselectedItemTintColor = LKHexColor(@"#333333");
        tabBar.tintColor = LKHexColor(@"#FE5922");
    }
    
    LKNavigationController *navi = [[LKNavigationController alloc] initWithRootViewController:childVc];
    [self addChildViewController:navi];
}

#pragma mark - -  UITabBarControllerDelegate

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
   
}
#pragma mark 横竖屏控制
- (BOOL)shouldAutorotate {
    return self.selectedViewController.shouldAutorotate;
}

//控制当前控制器支持哪些方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return self.selectedViewController.supportedInterfaceOrientations;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return [self.selectedViewController preferredInterfaceOrientationForPresentation];
}

//- (UITraitCollection *)traitCollection {
//    UITraitCollection *oldTrait = super.traitCollection;
//    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
//        UITraitCollection *tmpTrait = [UITraitCollection traitCollectionWithHorizontalSizeClass: UIUserInterfaceSizeClassCompact];
//        UITraitCollection *newTrait = [UITraitCollection traitCollectionWithTraitsFromCollections:@[oldTrait, tmpTrait]];
//        return newTrait;
//    }
//    return oldTrait;
//}

@end
