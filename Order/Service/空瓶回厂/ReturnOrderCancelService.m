//
//  ReturnOrderCancelService.m
//  Order
//
//  Created by 凯东源 on 2017/11/24.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "ReturnOrderCancelService.h"
#import <AFNetworking.h>

@implementation ReturnOrderCancelService

- (void)ReturnOrderCancel:(nullable NSString *)strOrderIdx andstrUserIdx:(nullable NSString *)strUserIdx {
    
    NSDictionary *parameters = @{
                                 @"strOrderIdx" : strOrderIdx,
                                 @"strUserIdx" : strUserIdx,
                                 @"strLicense" : @""
                                 };
    
    NSLog(@"取消回瓶单：%@", parameters);
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    [manager POST:API_ReturnOrderCancel parameters:parameters progress:^(NSProgress * _Nonnull uploadProgress) {
        nil;
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        int type = [responseObject[@"type"] intValue];
        NSString *msg = responseObject[@"msg"];
        
        if(type == 1) {
            
            NSLog(@"取消回瓶单成功---%@", responseObject);
            [self successOfReturnOrderCancel:msg];
        } else {
            
            NSLog(@"取消回瓶单失败");
            [self failureOfReturnOrderCancel:msg];
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"取消回瓶单失败:%@", error);
        [self failureOfReturnOrderCancel:@"取消回瓶单失败"];
    }];
}


// 成功
- (void)successOfReturnOrderCancel:(NSString *)msg {
    
    if([_delegate respondsToSelector:@selector(successOfReturnOrderCancel:)]) {
        
        [_delegate successOfReturnOrderCancel:msg];
    }
}


// 失败
- (void)failureOfReturnOrderCancel:(NSString *)msg {
    
    if([_delegate respondsToSelector:@selector(failureOfReturnOrderCancel:)]) {
        
        [_delegate failureOfReturnOrderCancel:msg];
    }
}

@end
