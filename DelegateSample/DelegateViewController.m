//
// 
//  DelegateViewController.m
//
//  Created by yeluxing on 15/9/18.
//  Copyright (c) 2015年 yeluxing. All rights reserved.
//

#import "UseDelegateViewController.h"
#import "DelegateViewController.h"
#import "AppDelegate.h"
//@protocol NextViewControllerDelegate <NSObject>
//- (void)passTextValue:(NSString *)tfText;
//@end

@interface DelegateViewController ()
{
    
    UseDelegateViewController * UVC;
    AppDelegate* myDelegate;
}
@end

@implementation DelegateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    myDelegate  = [[UIApplication sharedApplication] delegate];
    //初始化
    UVC = [[UseDelegateViewController alloc] init];
    //因为UseDelegateViewController继承了DelegateViewControllerDelegate，所以可以＝
    self.delegate = (id)UVC;
    
    //[self.delegate clickToSendValues:@"title" ];
    
    
    //定义一个自定义类型CustomerView的变量，用它来测试代理方法
    CustomerView * cView = [[CustomerView alloc]initWithFrame:CGRectMake(2, 150, 150, 150) ];
    cView.backgroundColor  = [UIColor redColor];
    //初始化用户自定义控件
    [cView init:@"CLICK" image:[UIImage imageNamed:@"skyblue_logo_qq_checked"]];
    //指定控件的代理为self,所以DelegateViewController内要实现这个代理的方法
    cView.customerviewDelegate = (id)self;
    
    [self.view addSubview:cView];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

#pragma
- (IBAction)clickdelegate:(id)sender {
    
    NSString* val = _inputTF.text;
    //调用委托的方法
    [self.delegate clickToSendValues:val];
    [myDelegate.navRootVC pushViewController:UVC animated:YES];
}
#pragma mark  实现cview的代理方法
-(void)onCustomerViewClick:(UIButton*)sender
{
    NSLog(@"引用主体中执行onclick ok!");
    
}

@end
