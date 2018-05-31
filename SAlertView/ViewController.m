//
//  ViewController.m
//  SAlertView
//
//  Created by Superman on 2018/5/31.
//  Copyright © 2018年 Superman. All rights reserved.
//

#import "ViewController.h"
#import "UIAlertController+NewVersion.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *currentVersion = @"2.0.0";
    NSString *title = @"1.修正了部分页面空白的问题\n2.修正了部分页面卡顿的问题\n3.增加新功能用户签到";
    
    //更新内容可从后台获取
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [UIAlertController AlertControllerWithCurrentVersion:currentVersion andTitle:title andController:self];
    });}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
