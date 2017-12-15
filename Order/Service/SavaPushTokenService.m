//
//  SavaPushTokenService.m
//  Order
//
//  Created by wenwang wang on 2017/12/16.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "SavaPushTokenService.h"
#import <AFNetworking.h>

#define kAPIName @"上传Token"

#pragma mark - 上传Token

@implementation SavaPushTokenService

- (void)SavaPushToken:(nullable NSString *)strUserId andstrCID:(nullable NSString *)strCID andstrToken:(nullable NSString *)strToken {
    
    strUserId = strUserId ? strUserId : @"";
    strCID = strCID ? strCID : @"";
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSDictionary *parameters = @{
                                 @"strUserId" : strUserId,
                                 @"strToken" : strToken,
                                 @"strCID" : strCID,
                                 @"strLicense" : @""
                                 };
    
    LMLog(@"请求%@参数:%@", kAPIName, parameters);
    
    [manager POST:API_SavaPushToken parameters:parameters progress:^(NSProgress * _Nonnull uploadProgress) {
        nil;
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        LMLog(@"%@,请求成功,返回值:%@", kAPIName, responseObject);
        NSInteger type = [responseObject[@"type"] intValue];
        NSString *msg = responseObject[@"msg"];
        
        if(type == 1) {
            
            [self failureOfSavaPushToken:msg];
            LMLog(@"%@成功，msg:%@", kAPIName, msg);
        } else {
            
            [self failureOfSavaPushToken:msg];
            LMLog(@"%@失败，msg:%@", kAPIName, msg);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        [self failureOfSavaPushToken:@"请求失败"];
        LMLog(@"%@时，请求失败，error:%@", kAPIName, error);
    }];
}


#pragma mark - 功能函数

- (void)successOfSavaPushToken:(NSString *)msg {
    
    if([_delegate respondsToSelector:@selector(successOfSavaPushToken:)]) {
        
        [_delegate successOfSavaPushToken:msg];
    }
}


- (void)failureOfSavaPushToken:(NSString *)msg {
    
    if([_delegate respondsToSelector:@selector(failureOfSavaPushToken:)]) {
        
        [_delegate failureOfSavaPushToken:msg];
    }
}

@end
