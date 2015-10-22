//
//  TestCustomSegue.m
//  MySpace
//
//  Created by wsliang on 15/10/19.
//  Copyright © 2015年 wsliang. All rights reserved.
//

#import "TestCustomSegue.h"

@implementation TestCustomSegue

-(void)perform
{
  UIViewController *current = self.sourceViewController;
  UIViewController *next = self.destinationViewController;
  
  // 为两个View的切换设置动画效果
  [UIView transitionFromView:current.view toView:next.view duration:0.5 options:UIViewAnimationOptionTransitionCrossDissolve completion:^(BOOL finished) {
    if (finished) {
      if (current.navigationController) {
        [current.navigationController pushViewController:next animated:NO];
      }else{
        [current presentViewController:next animated:NO completion:^{
          NSLog(@"---- presentViewController ok -----");
        }];
      }
    }
  }];
  
}

@end
