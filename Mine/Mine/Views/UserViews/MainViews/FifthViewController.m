//
//  FifthViewController.m
//  MySpace
//
//  Created by wsliang on 15/9/18.
//  Copyright (c) 2015年 wsliang. All rights reserved.
//

#import "FifthViewController.h"

#import "AboutMeViewController.h"

@interface FifthViewController ()

@end

@implementation FifthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
  self.view.layer.borderColor = [UIColor blueColor].CGColor;
  self.view.layer.borderWidth = 1;
  self.view.layer.cornerRadius = YES;
  
  self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  
  NSLog(@"---===--- prepareForSegue :%@ , sender:%@ ---===---",segue,sender);
  
  UIViewController *dvc = segue.destinationViewController;
  UIViewController *svc = segue.sourceViewController;
    if ([dvc isKindOfClass:[AboutMeViewController class]]) {
        AboutMeViewController *tAboutMe = (AboutMeViewController *)dvc;
        tAboutMe.data = @"关于我们";
      tAboutMe.restorationIdentifier;
      tAboutMe.storyboard;
    }
  NSLog(@"---- FifthViewController.m destination:%@,source:%@,identifier:%@ , sender:%@ -----",dvc,svc,segue.identifier,sender);
    /*
     ---- FifthViewController.m destination:<AboutMeViewController: 0x7fb97ae51ad0>,source:<FifthViewController: 0x7fb97ad28910>,identifier:(null) , sender:<UIButton: 0x7fb97ae48ef0; frame = (112 344; 96 30); opaque = NO; autoresize = RM+BM; layer = <CALayer: 0x7fb97ae46350>> -----
     */
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
