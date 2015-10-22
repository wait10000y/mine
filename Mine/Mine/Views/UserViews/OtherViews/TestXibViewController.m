//
//  TestXibViewController.m
//  MySpace
//
//  Created by wsliang on 15/10/21.
//  Copyright © 2015年 wsliang. All rights reserved.
//

#import "TestXibViewController.h"

@interface TestXibViewController ()

@property (weak, nonatomic) IBOutlet UILabel *textShow;

- (IBAction)actionOperations:(UIButton *)sender;

@property (nonatomic) NSTimer *mTimer;

@end

@implementation TestXibViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated
{
  [super viewDidAppear:animated];
  if (!self.mTimer) {
    self.mTimer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(refreshTimerShow:) userInfo:nil repeats:YES];
    [[NSRunLoop mainRunLoop] addTimer:self.mTimer forMode:NSRunLoopCommonModes];
    NSLog(@"--------- create timer :%@ ---------",self.mTimer);
  }
}

-(void)viewWillDisappear:(BOOL)animated
{
  [super viewWillDisappear:animated];
  if (self.mTimer) {
    if ([self.mTimer isValid]) {
      [self.mTimer invalidate];
    }
    self.mTimer = nil;
  }
  
}

-(void)refreshTimerShow:(NSTimer*)sender
{
  self.textShow.text = [NSString stringWithFormat:@"%lf",[NSDate timeIntervalSinceReferenceDate]];
  
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)actionOperations:(UIButton *)sender {
  
  if (self.navigationController) {
    [self.navigationController popViewControllerAnimated:YES];
  }
  
  [self dismissViewControllerAnimated:YES completion:^{
    NSLog(@"------- TestXibViewController back completion ----------");
  }];
  
}

@end
