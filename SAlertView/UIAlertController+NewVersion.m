//
//  UIAlertController+NewVersion.m
//  SAlertView
//
//  Created by Superman on 2018/5/31.
//  Copyright © 2018年 Superman. All rights reserved.
//

#import "UIAlertController+NewVersion.h"
#define OLDVERSION [[NSBundle mainBundle].infoDictionary objectForKey:@"CFBundleShortVersionString"]
#define APPID  @"id414478124?mt=8"


@implementation UIAlertController (NewVersion)

+ (BOOL)checkVersionUpdateoldVersion:(NSString *)oldVersion andCurrentoldVersion:(NSString *)currentoldVersion{
    BOOL index = NO;
    if ([oldVersion compare:currentoldVersion options:NSNumericSearch] == NSOrderedAscending || NSOrderedSame) {
        index = NO;
    }
    else{
        
        index = YES;
    }
    
    return index;
}

+ (void)AlertControllerWithCurrentVersion:(NSString *)version andTitle:(NSString *)title andController:(UIViewController *)controller{
    
    BOOL index = [self checkVersionUpdateoldVersion:OLDVERSION andCurrentoldVersion:version];
    
    if (index) {
        
        return;
    }
    else {
        UIAlertController *alertController = [self alertControllerWithTitle:@"版本升级" message:[NSString stringWithFormat:@"最新版本:%@\n%@",version,title] preferredStyle:UIAlertControllerStyleAlert];
        
        //        UIAlertAction *action = [UIAlertAction actionWithTitle:@"暂不升级" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //
        //        }];
        
        UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"去升级" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    
            //去APPStore上面下载
            NSString *urlStr = [NSString stringWithFormat:@"itms-apps://itunes.apple.com/cn/app/%@",APPID];
            NSURL *url = [NSURL URLWithString:urlStr];
            [[UIApplication sharedApplication] openURL:url];
            
        }];
        
        //        [alertController addAction:action];
        [alertController addAction:action1];
        
        [controller presentViewController:alertController animated:YES completion:nil];
    }
    
}

@end
