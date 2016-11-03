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
    
    // 导航条导致的下移
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    // 导航栏标题
    self.navigationItem.title = @"我的收货地址";
    
    // 导航栏返回按钮
    UIBarButtonItem *returnButtonItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"2"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(dismissClick)];
    self.navigationItem.leftBarButtonItem = returnButtonItem;
}


- (void)dismissClick {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
