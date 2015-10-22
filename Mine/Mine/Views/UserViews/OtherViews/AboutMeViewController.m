//
//  AboutMeViewController.m
//  MySpace
//
//  Created by wsliang on 15/9/18.
//  Copyright (c) 2015年 wsliang. All rights reserved.
//

#import "AboutMeViewController.h"

#import "TestXibViewController.h"

@interface AboutMeViewController ()
@property (weak, nonatomic) IBOutlet UILabel *textTips;
- (IBAction)actionBack:(UIButton *)sender;
- (IBAction)actionNewView:(UIButton *)sender;

@end

@implementation AboutMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
  self.title = @"about me";
    self.textTips.text = [self.data description];
    
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
  
  UIViewController *dvc = segue.destinationViewController;
  UIViewController *svc = segue.sourceViewController;
  
  NSLog(@"---- AboutMeViewController.m dvc:%@,svc:%@,id:%@ -----",dvc,svc,segue.identifier);
  // Get the new view controller using [segue destinationViewController].
  // Pass the selected object to the new view controller.
}

- (IBAction)actionBack:(UIButton *)sender {
  if (self.navigationController) {
    [self.navigationController popViewControllerAnimated:YES];
    NSLog(@"-------- AboutMeViewController back completion ---------");
  }
  
  [self dismissViewControllerAnimated:YES completion:^{
    NSLog(@"-------- AboutMeViewController back completion ---------");
  }];
}

- (IBAction)actionNewView:(UIButton *)sender {
  switch (sender.tag) {
    case 0:
    {
      
    } break;
    case 1:
    {
      
    } break;
    case 2:
    {
      
    } break;
    case 3:
    {
      
    } break;
    case 4:
    {
      
    } break;
    case 5: // 自定义xib 加载
    {
      TestXibViewController *txvc = [[TestXibViewController alloc] initWithNibName:nil bundle:nil];
      txvc.title = @"testXib";
      if (self.navigationController) {
        [self.navigationController pushViewController:txvc animated:YES];
      }else{
        [self presentViewController:txvc animated:YES completion:^{
          txvc.title = @"testXib2";
        }];
      }
      
    } break;
      
    default:
      break;
  }
  NSLog(@"========== actionNewView event :%ld ===========",(long)sender.tag);
}
@end
