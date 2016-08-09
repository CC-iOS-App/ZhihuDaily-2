//
//  TestViewController.h
//  ZhihuDaily
//
//  Created by 钟武 on 16/8/2.
//  Copyright © 2016年 钟武. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BaseResponseModel;
@class SideMenuViewController;

@interface HomePageViewController : UIViewController

@property (nonatomic, strong) BaseResponseModel *newsModel;
@property (nonatomic, weak) SideMenuViewController *sideMenuController;

@end
