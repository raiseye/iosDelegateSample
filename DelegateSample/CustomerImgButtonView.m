//
//  CustomerImgButtonView.m
//  DelegateSample
//
//  Created by yeluxing on 15/9/21.
//  Copyright (c) 2015年 yeluxing. All rights reserved.
//

#import "CustomerImgButtonView.h"


@interface CustomerView()
{
    UIButton* btn;
    UIImageView* imgview;
}

@end

@implementation CustomerView

-(void)setTitle:(NSString *)title
{
    
}


-(void)setImage:(UIImage *)img
{
    
}

//用户自定义view 初始化
-(void)init:(NSString *)title image:(UIImage *)image
{
    
    imgview  = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height - 40)];
    imgview.image = image;
   
     [self addSubview:imgview];
    
    btn = [[UIButton alloc] initWithFrame:CGRectMake(0, self.bounds.size.height - 40, self.bounds.size.width, 30)];
    [btn setTitle:title forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
    
   
    [self addSubview:btn];
    
}
//实现点击事件
-(void)btnclick:(id)sender
{
     NSLog(@"原控件事件中执行onclick ok!");
    [self.customerviewDelegate onCustomerViewClick:sender];
}
/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */







@end
