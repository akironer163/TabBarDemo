//
//  DemoViewController.m
//  XYTabBarDemo
//
//  Created by user on 16/11/3.
//  Copyright © 2016年 Panda. All rights reserved.
//

#import "DemoViewController.h"

@interface DemoViewController ()

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupNaviColor];
}

- (void)setupNaviColor {
    
    //取消导航控制器下面的分割线
    [self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefaultPrompt];
    [self.navigationController.navigationBar setShadowImage:[[UIImage alloc]init]];
    //如果上面设置了空的背景图片和空的阴影图片 必须设置translucent为no才能看到背景颜色
    self.navigationController.navigationBar.translucent = NO;
    
    //不能修改字体的颜色
    self.navigationController.navigationBar.tintColor = [UIColor redColor];
    
    // 导航条导致的下移
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    // 导航栏标题
    self.navigationItem.title = @"我的收货地址";
    
    // 导航栏返回按钮
    UIBarButtonItem *returnButtonItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"2"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(dismissClick)];
    self.navigationItem.leftBarButtonItem = returnButtonItem;
}

//导航控制器不再同一设置状态栏的样式了 显示的哪个控制器，就由哪个控制器自己设置
//- (UIViewController *)childViewControllerForStatusBarStyle {
//    return self.topViewController;
//}

//一但设置了导航控制器 就不在有效果了
- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}


- (void)dismissClick {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
