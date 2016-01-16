//
//  UseDelegateViewController.m
//  Created by yeluxing on 15/9/18.
//  Copyright (c) 2015年 yeluxing. All rights reserved.
//
//

#import "UseDelegateViewController.h"

@interface UseDelegateViewController ()

@end

@implementation UseDelegateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark 实现委托方法
-(void)clickToSendValues:(NSString*) values
{
//   把接收到的值显示出来
    UILabel * showLable =[[UILabel alloc] initWithFrame:CGRectMake(10,100,300,30)];
    showLable.text = [NSString stringWithFormat:@"接收到:%@",values];
    [self.view addSubview:showLable];
    NSLog(@"接收到receive values:%@", values);
    
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
