//
//  ServiceAgreementViewController.m
//  MySpace
//
//  Created by wsliang on 15/10/16.
//  Copyright © 2015年 wsliang. All rights reserved.
//

#import "ServiceAgreementViewController.h"

@interface ServiceAgreementViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;
- (IBAction)actionBackLastView:(UIButton *)sender;

@end

@implementation ServiceAgreementViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  

  if (self.webView) {
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.apple.com/cn/privacy/privacy-policy/"] cachePolicy:0 timeoutInterval:10];
    
    [self.webView loadRequest:request];
  }
  
  
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

- (IBAction)actionBackLastView:(UIButton *)sender {
  if (self.navigationController) {
    [self.navigationController popViewControllerAnimated:YES];
  }

  [self dismissViewControllerAnimated:YES completion:^{
    NSLog(@"-------- ServiceAgreementViewController back completion ---------");
  }];
  
}
@end
