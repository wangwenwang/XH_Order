//
//  OrderJiaoWorkflowService.m
//  Order
//
//  Created by 凯东源 on 2017/12/13.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "OrderJiaoWorkflowService.h"
#import <AFNetworking.h>

@implementation OrderJiaoWorkflowService

#define kAPIName @"工厂交付回瓶单"

- (void)OrderJiaoWorkflow:(nullable NSString *)stridx andADUT_USER:(nullable NSString *)ADUT_USER {
    
    NSDictionary *parameters = @{
                                 @"stridx" : stridx,
                                 @"ADUT_USER" : ADUT_USER,
                                 @"strLicense" : @""
                                 };
    
    LMLog(@"请求%@\n接口:%@\n参数:%@", kAPIName, API_OrderJiaoWorkflow, parameters);
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    [manager POST:API_OrderJiaoWorkflow parameters:parameters progress:^(NSProgress * _Nonnull uploadProgress) {
        nil;
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        LMLog(@"%@,请求成功,返回值:%@", kAPIName, responseObject);
        NSInteger type = [responseObject[@"type"] intValue];
        NSString *msg = responseObject[@"msg"];
        
        if(type == 1) {
            
            [self successOfOrderJiaoWorkflow:msg];
            LMLog(@"%@成功，msg:%@", kAPIName, msg);
        }else {
            
            [self failureOfOrderJiaoWorkflow:msg];
            LMLog(@"%@失败，msg:%@", kAPIName, msg);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        LMLog(@"%@时，请求失败，error:%@", kAPIName, error);
        [self failureOfOrderJiaoWorkflow:@"请求失败"];
    }];
}


// 成功
- (void)successOfOrderJiaoWorkflow:(NSString *)msg {
    
    if([_delegate respondsToSelector:@selector(successOfOrderJiaoWorkflow:)]) {
        
        [_delegate successOfOrderJiaoWorkflow:msg];
    }
}


// 失败
- (void)failureOfOrderJiaoWorkflow:(NSString *)msg {
    
    if([_delegate respondsToSelector:@selector(failureOfOrderJiaoWorkflow:)]) {
        
        [_delegate failureOfOrderJiaoWorkflow:msg];
    }
}

@end
