//
//  ViewControllerNext.m
//  DelegateSample
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
    
    cal = [[UseDelegateViewController alloc] init];
    
    self.delegate = (id)cal;
    
    [self.delegate clickToSendValues:@"title" ];
    
    CustomerWebView * cview = [[CustomerWebView alloc]initWithFrame:CGRectMake(2, 150, 150, 150) ];
    cview.backgroundColor  = [UIColor redColor];
    [cview init:@"CLICK" image:[UIImage imageNamed:@"skyblue_logo_qq_checked"]];
    cview.customerviewDelegate = (id)self;
    
    [self.view addSubview:cview];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}


#pragma customerviewDelegate
- (IBAction)clickdelegate:(id)sender {
    
    NSString* val = _inputTF.text;
    [self.delegate clickToSendValues:val];
}

-(void)onCustomerViewClick:(UIButton*)sender
{
    NSLog(@"onclick ok!");
}

@end
