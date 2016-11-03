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


/*
 1) tintColor会影响选中状态下标题的颜色(若图片不取消渲染效果,还会影响图片的颜色), iOS7之前,这个属性是用来影响背景颜色的.
 2) barTintColor会影响背景颜色, iOS7出现的新属性,用来代替tintColor的作用, tintColor在iOS7及之后另作他用.
 3) unselectedItemTintColor是iOS10新添加的属性.
 4) 其实还有一个和颜色相关的属性是backgroundColor(继承自UIView),不要认为这个很简单, 我曾经跪过
 */
- (void)setupTabBarColor {
    
    // 背景图颜色
    [self.tabBar setBarTintColor:[UIColor purpleColor]];
    
    // 未选中状态的标题颜色
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14], NSForegroundColorAttributeName:[UIColor greenColor]} forState:UIControlStateNormal];
    
    // 选中状态的标题颜色
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14], NSForegroundColorAttributeName:[UIColor purpleColor]} forState:UIControlStateSelected];
}




@end
