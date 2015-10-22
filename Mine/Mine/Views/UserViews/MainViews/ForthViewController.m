//
//  ForthViewController.m
//  MySpace
//
//  Created by wsliang on 15/9/18.
//  Copyright (c) 2015年 wsliang. All rights reserved.
//

#import "ForthViewController.h"

@implementation ForthViewCustomSegue

-(void)perform
{
  UIViewController *current = self.sourceViewController;
  UIViewController *next = self.destinationViewController;
  [current.navigationController pushViewController:next animated:YES];
}

@end


@interface ForthViewController ()

@end

@implementation ForthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
  self.view.layer.borderColor = [UIColor cyanColor].CGColor;
  self.view.layer.borderWidth = 1;
  self.view.layer.cornerRadius = YES;
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  // forthCustomSegueId
  NSLog(@"--------- segue:%@ ,id:%@ ------------",segue,segue.identifier);
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(nullable id)sender
{
  NSLog(@"---===--- shouldPerformSegueWithIdentifier :%@ , sender:%@ ---===---",identifier,sender);
  return YES;
}

- (void)performSegueWithIdentifier:(NSString *)identifier sender:(nullable id)sender
{
  NSLog(@"---===--- performSegueWithIdentifier :%@ , sender:%@ ---===---",identifier,sender);
}

- (BOOL)canPerformUnwindSegueAction:(SEL)action fromViewController:(UIViewController *)fromViewController withSender:(id)sender
{
  NSLog(@"---===--- canPerformUnwindSegueAction:%@ , fromViewController:%@ , sender:%@ ---===---",NSStringFromSelector(action),fromViewController,sender);
  return YES;
}

@end
