//
//  ZFBTabController.m
//  支付宝
//
//  Created by HM on 16/7/16.
//  Copyright © 2016年 HM. All rights reserved.
//

#import "ZFBTabController.h"
#import "ZFBNavController.h"

@interface ZFBTabController ()

@end

@implementation ZFBTabController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //添加子控件器
    UIViewController *homeController = [self controllerWith:@"ZFBHomeController" title:@"首页" imageName:@"TabBar_HomeBar"];

    UIViewController *businessController = [self controllerWithStoryboard:@"ZFBBusiness" title:@"商家" imageName:@"TabBar_Businesses"];
    
    UIViewController *friendController = [self controllerWith:@"ZFBFriendController" title:@"好友" imageName:@"TabBar_Friends"];
    
    UIViewController *mineController = [self controllerWith:@"ZFBMineController" title:@"我的" imageName:@"TabBar_Assets"];
    
    self.viewControllers=@[homeController,businessController,friendController,mineController];

}
-(UIViewController *)controllerWithStoryboard:(NSString *)storyboardName title:(NSString*) title imageName:(NSString *)imageName{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    UIViewController *businessController = [sb instantiateInitialViewController];
    return [self controller:businessController WithTitle:title imageName:imageName];
}
-(UIViewController *)controllerWith:(NSString *)className title:(NSString *)title imageName:(NSString *)imageName{
    Class clz = NSClassFromString(className);
    UIViewController *controller = [[clz alloc]init];
    
    return [self controller:controller WithTitle:title imageName:imageName];
}
- (UIViewController *)controller:(UIViewController *)controller WithTitle:(NSString *)title imageName:(NSString *)imageName{
    
    controller.tabBarItem.title = title;
    controller.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    controller.tabBarItem.selectedImage = [[UIImage imageNamed:[NSString stringWithFormat:@"%@_Sel",imageName]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    ZFBNavController *navController = [[ZFBNavController alloc]initWithRootViewController:controller];
    
    
    return navController;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
