//
//  ViewControllerNext.h
//  DelegateSample
//
//  Created by xingluo on 15/9/18.
//  Copyright (c) 2015年 xingluo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomerImgButtonView.h"
@protocol DelegateViewControllerDelegate
@optional
-(void)clickToSendValues:(NSString *)values;//定义协议与方法

@end

@interface DelegateViewController : UIViewController
@property (nonatomic, weak) id<DelegateViewControllerDelegate> delegate;
- (IBAction)clickdelegate:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *inputTF;


@end
