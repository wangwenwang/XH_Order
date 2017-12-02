//
//  GetReturnBottleInfoService.m
//  Order
//
//  Created by 凯东源 on 2017/11/22.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "GetReturnBottleInfoService.h"
#import <AFNetworking.h>

@implementation GetReturnBottleInfoService


- (void)GetReturnBottleInfo:(nullable NSString *)ORDER_IDX {
    
    NSDictionary *parameters = @{
                                 @"ORDER_IDX" : ORDER_IDX,
                                 @"strLicense" : @""
                                 };
    
    NSLog(@"获取瓶子订单产详情：%@", parameters);
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    [manager POST:API_GetReturnBottleInfo parameters:parameters progress:^(NSProgress * _Nonnull uploadProgress) {
        nil;
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSLog(@"获取瓶子订单产详情成功---%@", responseObject);
        
        int _type = [responseObject[@"type"] intValue];
        NSString *msg = responseObject[@"msg"];
        
        if(_type == 1) {
            
            BottleDetailModel *bottleDetailM = [[BottleDetailModel alloc] initWithDictionary:responseObject[@"result"]];
            
            [self successOfGetReturnBottleInfo:bottleDetailM];
        } else {
            
            [self failureOfGetReturnBottleInfo:msg];
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"请求瓶子订单产详情失败:%@", error);
        [self failureOfGetReturnBottleInfo:@"请求瓶子订单产详情失败"];
    }];
}


// 成功
- (void)successOfGetReturnBottleInfo:(BottleDetailModel *)bottleDetailM {
    
    if([_delegate respondsToSelector:@selector(successOfGetReturnBottleInfo:)]) {
        
        [_delegate successOfGetReturnBottleInfo:bottleDetailM];
    }
}


// 失败
- (void)failureOfGetReturnBottleInfo:(NSString *)msg {
    
    if([_delegate respondsToSelector:@selector(failureOfGetReturnBottleInfo:)]) {
        
        [_delegate failureOfGetReturnBottleInfo:msg];
    }
}

@end
