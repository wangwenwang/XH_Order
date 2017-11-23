//
//  ImportToOrderListService.m
//  Order
//
//  Created by 凯东源 on 2017/11/22.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "ImportToOrderListService.h"
#import <AFNetworking.h>

@implementation ImportToOrderListService


- (void)ImportToOrderList:(nullable NSString *)strOrderInfo {
    
    NSDictionary *parameters = @{
                                 @"strOrderInfo" : strOrderInfo,
                                 @"strLicense" : @""
                                 };
    
    NSLog(@"下单回瓶：%@", parameters);
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    [manager POST:API_ImportToOrderList parameters:parameters progress:^(NSProgress * _Nonnull uploadProgress) {
        nil;
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        int type = [responseObject[@"type"] intValue];
        NSString *msg = responseObject[@"msg"];
        
        if(type == 1) {
            
            NSLog(@"下单回瓶成功---%@", responseObject);
            [self successOfImportToOrderList:msg];
        } else {
            
            NSLog(@"下单回瓶失败");
            [self failureOfImportToOrderList:msg];
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"下单回瓶失败:%@", error);
        [self failureOfImportToOrderList:@"下单失败"];
    }];
}


// 成功
- (void)successOfImportToOrderList:(NSString *)msg {
    
    if([_delegate respondsToSelector:@selector(successOfImportToOrderList:)]) {
        
        [_delegate successOfImportToOrderList:msg];
    }
}


// 失败
- (void)failureOfImportToOrderList:(NSString *)msg {
    
    if([_delegate respondsToSelector:@selector(failureOfImportToOrderList:)]) {
        
        [_delegate failureOfImportToOrderList:msg];
    }
}

@end
