//
//  TabBarViewController.m
//  XYTabBarDemo
//
//  Created by 潘显跃 on 16/5/12.
//  Copyright © 2016年 Panda. All rights reserved.
//

#import "TabBarViewController.h"
#import "ViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupTabBarChildController];
    
    [self setupTabBarColor];
}

- (void)setupTabBarChildController {
    
    NSArray *imageArray = @[@"home", @"category", @"center", @"cart", @"mine"];
    NSArray *titleArray = @[@"首页", @"分类", @"", @"购物车", @"我"];
    for (int i = 0; i < imageArray.count; i++) {
        ViewController *vc = [ViewController new];
        [vc.view setBackgroundColor:[UIColor whiteColor]];
        
        ////barButtonItem添加图片时, 取消图片的颜色渲染效果, 这样TabBar的颜色无论怎么设置, 怎么渲染, 都不会影响到图片的颜色
        // 设置未选中图片(取消渲染,原始效果)
        vc.tabBarItem.image = [[UIImage imageNamed:imageArray[2]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        // 设置选中图片(取消渲染,原始效果)
        vc.tabBarItem.selectedImage = [[UIImage imageNamed:[imageArray[2] stringByAppendingString:@"_selected"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        vc.title = titleArray[i];
        
        if (i == 3) vc.tabBarItem.badgeValue = @"99";
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
        [self addChildViewController:nav];
    }
}

- (void)setupTabBarColor {
    
    // 背景图颜色
    [self.tabBar setBarTintColor:[UIColor purpleColor]];
    
    // 未选中状态的标题颜色
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14], NSForegroundColorAttributeName:[UIColor greenColor]} forState:UIControlStateNormal];
    
    // 选中状态的标题颜色
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14], NSForegroundColorAttributeName:[UIColor purpleColor]} forState:UIControlStateSelected];
}

@end
