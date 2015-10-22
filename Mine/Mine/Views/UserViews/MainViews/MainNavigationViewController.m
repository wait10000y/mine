//
//  MainNavigationViewController.m
//  Mine
//
//  Created by wsliang on 15/10/22.
//  Copyright © 2015年 wsliang. All rights reserved.
//

#import "MainNavigationViewController.h"

@interface MainNavigationViewController ()

@end

@implementation MainNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//  self.navigationBar.translucent = YES;
//  self.navigationBar.translatesAutoresizingMaskIntoConstraints = YES;
  
  self.navigationBar.backIndicatorImage = [UIImage new];
  self.navigationBar.backIndicatorTransitionMaskImage = [UIImage new];
  
  self.navigationBar.shadowImage = [UIImage new];
  [self.navigationBar setBackgroundImage:[UIImage new] forBarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
  
}

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
