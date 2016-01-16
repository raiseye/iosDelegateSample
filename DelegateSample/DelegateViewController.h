//
// 
//  DelegateViewController.h
//第一个窗口
//这里定义了一个viewcongroller，包含委托协议和方法
//  Created by xingluo on 15/9/18.
//  Copyright (c) 2015年 yeluxing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomerImgButtonView.h"
//声明一个协议
@protocol DelegateViewControllerDelegate
@optional
-(void)clickToSendValues:(NSString *)values;//声明协议方法

@end

@interface DelegateViewController : UIViewController

//声明一个DelegateViewControllerDelegate委托变量
@property (nonatomic, weak) id<DelegateViewControllerDelegate> delegate;

- (IBAction)clickdelegate:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *inputTF;


@end
