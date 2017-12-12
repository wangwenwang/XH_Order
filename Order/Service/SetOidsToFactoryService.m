//
//  SetOidsToFactoryService.m
//  Order
//
//  Created by wenwang wang on 2017/12/13.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "SetOidsToFactoryService.h"
#import <AFNetworking.h>

#define kAPIName @"记录入厂时间"

#pragma mark - 记录入厂时间

@implementation SetOidsToFactoryService

- (void)SetOidsToFactory:(nullable NSString *)stridxs {
    
    NSDictionary *parameters = @{
                                 @"stridxs" : stridxs,
                                 @"strLicense" : @""
                                 };
    
    LMLog(@"请求%@参数:%@", kAPIName, parameters);
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    [manager POST:API_SetOidsToFactory parameters:parameters progress:^(NSProgress * _Nonnull uploadProgress) {
        nil;
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        LMLog(@"%@,请求成功,返回值:%@", kAPIName, responseObject);
        int type = [responseObject[@"type"] intValue];
        NSString *msg = responseObject[@"msg"];
        
        if(type == 1) {
            
            [self successOfSetOidsToFactory:msg];
            LMLog(@"%@成功，msg:%@", kAPIName, msg);
        } else {
            
            [self failureOfSetOidsToFactory:msg];
            LMLog(@"%@失败，msg:%@", kAPIName, msg);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        LMLog(@"%@时，请求失败，error:%@", kAPIName, error);
        [self failureOfSetOidsToFactory:@"请求失败"];
    }];
}


// 成功
- (void)successOfSetOidsToFactory:(NSString *)msg {
    
    if([_delegate respondsToSelector:@selector(successOfSetOidsToFactory:)]) {
        
        [_delegate successOfSetOidsToFactory:msg];
    }
}


// 失败
- (void)failureOfSetOidsToFactory:(NSString *)msg {
    
    if([_delegate respondsToSelector:@selector(failureOfSetOidsToFactory:)]) {
        
        [_delegate failureOfSetOidsToFactory:msg];
    }
}

@end
