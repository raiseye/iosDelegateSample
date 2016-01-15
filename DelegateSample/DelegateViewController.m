//
// 
//  DelegateViewController.m
//
//  Created by yeluxing on 15/9/18.
//  Copyright (c) 2015年 yeluxing. All rights reserved.
//

#import "UseDelegateViewController.h"
#import "DelegateViewController.h"

@protocol NextViewControllerDelegate <NSObject>
- (void)passTextValue:(NSString *)tfText;
@end

@interface DelegateViewController ()
{
    
    UseDelegateViewController * cal;
}
@end

@implementation DelegateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //初始化
    cal = [[UseDelegateViewController alloc] init];
    
    self.delegate = (id)cal;
    
    //[self.delegate clickToSendValues:@"title" ];
    
    
    //定义一个自定义类型CustomerView的变量，用它来测试代理方法
    CustomerView * cview = [[CustomerView alloc]initWithFrame:CGRectMake(2, 150, 150, 150) ];
    cview.backgroundColor  = [UIColor redColor];
    //初始化用户自定义控件
    [cview init:@"CLICK" image:[UIImage imageNamed:@"skyblue_logo_qq_checked"]];
    //指定控件的代理为self,所以DelegateViewController内要实现这个代理的方法
    cview.customerviewDelegate = (id)self;
    
    [self.view addSubview:cview];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}


#pragma
- (IBAction)clickdelegate:(id)sender {
    
    NSString* val = _inputTF.text;
    //调用委托的方法
    [self.delegate clickToSendValues:val];
}
//实现cview的代理方法
-(void)onCustomerViewClick:(UIButton*)sender
{
    NSLog(@"onclick ok!");
}

@end
