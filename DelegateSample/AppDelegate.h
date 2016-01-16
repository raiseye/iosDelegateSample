//
//  AppDelegate.h
//  DelegateSample
// 这个例子实现的调用自定义控件的委托协议方法，和实现了窗口间利用协议方法进行值传递
//  Created by xingluo on 15/9/18.
//  Copyright (c) 2015年 xingluo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UINavigationController* navRootVC;

@end

