//
//  UseDelegateViewController.m
//  DelegateSample
//  第二个窗口，用一接收第一个窗口发送的值
//  Created by yeluxing on 15/9/18.
//  Copyright (c) 2015年 yeluxing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DelegateViewController.h"
//继承DelegateViewControllerDelegate委托的UIViewController，它通过实现协议方法clickToSendValues可以接收DelegateViewController发送的值，
@interface UseDelegateViewController : UIViewController<DelegateViewControllerDelegate>

@end
