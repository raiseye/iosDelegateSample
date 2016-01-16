//
//  CustomerImgButtonView.h
//
// 声明一个协议同时是一个类，这里实现了一个用户自定义的控件，
//  Created by yeluxing on 15/9/21.
//  Copyright (c) 2015年 yeluxing. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomerImgButtonView
//声明点击协议方法
-(void)onCustomerViewClick:(UIButton *) sender;

@end

@interface CustomerView : UIView

//@property (nonatomic,strong) id delegaterViewController;

-(void)setImage:(UIImage*)img;

-(void)setTitle:(NSString*)title;

-(void)init:(NSString*) title image:(UIImage*)image;

@property (nonatomic, weak) id<CustomerImgButtonView> customerviewDelegate;

@end
