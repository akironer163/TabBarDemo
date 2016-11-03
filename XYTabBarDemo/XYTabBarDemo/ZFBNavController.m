//
//  ZFBNavController.m
//  支付宝
//
//  Created by HM on 16/7/16.
//  Copyright © 2016年 HM. All rights reserved.
//

#import "ZFBNavController.h"
#import "HMAdditonal.h"

@interface ZFBNavController ()

@end

@implementation ZFBNavController

- (void)viewDidLoad {
    [super viewDidLoad];

    //这个背景图片只是给iOS7使用
//    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationbar7"] forBarMetrics:UIBarMetricsDefault];
    
    //背景颜色
//    self.navigationBar.backgroundColor = [UIColor redColor];
    
    //取消导航栏下面的分隔线
    [self.navigationBar setBackgroundImage:[[UIImage alloc]init] forBarMetrics:UIBarMetricsDefault];
    [self.navigationBar setShadowImage:[[UIImage alloc]init]];
    
    
    //如果上面设置了空的背景图片和空的阴影图片，必须要设置translucent为no才能够看到背景颜色
    self.navigationBar.translucent = NO;
    //导航条的颜色
    self.navigationBar.barTintColor = [UIColor hm_colorWithHex:0x3a3a3a alpha:1];
    
    //设置标签的属性
    //(NSDictionary<NSString *,id> * _Nullable)
    //设置导航栏的标题文字颜色为白色
    [self.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    //设置导航条barButtonItem的颜色。不能设置标题的颜色
//    self.navigationBar.tintColor = [UIColor blueColor];
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

//导航控制器不再统一设置状态栏的样式了。显示的是哪个控制器，就由哪个控制器自己设置
//如果设置写了这段代码， preferredStatusBarStyle 方法就没有效果了！！！
//- (UIViewController *)childViewControllerForStatusBarStyle{
//    return self.topViewController;
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
