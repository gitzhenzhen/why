//
//  ViewController.m
//  分享
//
//  Created by sks on 16/7/15.
//  Copyright © 2016年 sks. All rights reserved.
//

#import "ViewController.h"
#import "UMSocial.h"
#import "shareview.h"
@interface ViewController ()<UMSocialUIDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    
//    [[UMSocialData defaultData].urlResource setResourceType:UMSocialUrlResourceTypeImage url:@"http://www.baidu.com/img/bdlogo.gif"];
//    [UMSocialData defaultData].extConfig.title = @"分享的title";
//    [UMSocialData defaultData].extConfig.qqData.url = @"http://baidu.com";
//    [UMSocialSnsService presentSnsIconSheetView:self
//                                         appKey:@"507fcab25270157b37000010"
//                                      shareText:@"友盟社会化分享让您快速实现分享等社会化功能，http://umeng.com/social"
//                                     shareImage:[UIImage imageNamed:@"icon"]
//                                shareToSnsNames:@[UMShareToWechatSession,UMShareToWechatTimeline,UMShareToSina,UMShareToQQ,UMShareToQzone]
//                                       delegate:self];
//
//
//
//
//
//
//}
@end
