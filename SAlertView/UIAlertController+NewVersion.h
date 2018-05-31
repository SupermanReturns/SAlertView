//
//  UIAlertController+NewVersion.h
//  SAlertView
//
//  Created by Superman on 2018/5/31.
//  Copyright © 2018年 Superman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (NewVersion)

+ (void)AlertControllerWithCurrentVersion:(NSString *)version andTitle:(NSString *)title andController:(UIViewController *)controller;


@end
