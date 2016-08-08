//
//  UmengModel.m
//  分享
//
//  Created by sks on 16/7/15.
//  Copyright © 2016年 sks. All rights reserved.
//

#import "UmengModel.h"
#import "UMSocial.h"
#import "UMSocialQQHandler.h"
@implementation UmengModel
+(void)initAction{

    
    [UMSocialData setAppKey:@"507fcab25270157b37000010"];
    [UMSocialQQHandler setQQWithAppId:@"100424468" appKey:@"c7394704798a158208a74ab60104f0ba" url:@"http://www.umeng.com/social"];




}
+(BOOL)umengAction:(NSURL*)url{

    BOOL result = [UMSocialSnsService handleOpenURL:url];
    
    return result;
}
@end
