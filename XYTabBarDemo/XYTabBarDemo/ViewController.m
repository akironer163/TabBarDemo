//
//  ViewController.m
//  XYTabBarDemo
//
//  Created by 潘显跃 on 16/5/12.
//  Copyright © 2016年 Panda. All rights reserved.
//

#import "ViewController.h"
#import "DemoViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [btn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    btn.frame = self.view.bounds;
    
}

- (void)push {
    
    DemoViewController *vc = [DemoViewController new];
    
    //隐藏tabBar
    vc.hidesBottomBarWhenPushed = YES;
    
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
