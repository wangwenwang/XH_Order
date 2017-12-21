//
//  SetPartyBottleQTYService.m
//  Order
//
//  Created by 凯东源 on 2017/12/13.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "SetPartyBottleQTYService.h"
#import <AFNetworking.h>

@implementation SetPartyBottleQTYService

#define kAPIName @"工厂确认回瓶单数量"

- (void)SetPartyBottleQTY:(nullable NSString *)strIdx andQTY_DELIVERY:(nullable NSString *)QTY_DELIVERY andQTY_REJECT:(nullable NSString *)QTY_REJECT andQTY_MISSING:(CGFloat)QTY_MISSING {
    
    NSDictionary *parameters = @{
                                 @"strIdx" : strIdx,
                                 @"QTY_DELIVERY" : QTY_DELIVERY,
                                 @"QTY_REJECT" : QTY_REJECT,
                                 @"QTY_MISSING" : @(QTY_MISSING),
                                 @"strLicense" : @""
                                 };
    
    LMLog(@"请求%@\n接口:%@\n参数:%@", kAPIName, API_SetPartyBottleQTY, parameters);
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    [manager POST:API_SetPartyBottleQTY parameters:parameters progress:^(NSProgress * _Nonnull uploadProgress) {
        nil;
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        LMLog(@"%@,请求成功,返回值:%@", kAPIName, responseObject);
        NSInteger type = [responseObject[@"type"] intValue];
        NSString *msg = responseObject[@"msg"];
        
        if(type == 1) {
            
            [self successOfSetPartyBottleQTY:msg];
            LMLog(@"%@成功，msg:%@", kAPIName, msg);
        }else {
            
            [self failureOfSetPartyBottleQTY:msg];
            LMLog(@"%@失败，msg:%@", kAPIName, msg);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        LMLog(@"%@时，请求失败，error:%@", kAPIName, error);
        [self failureOfSetPartyBottleQTY:@"请求失败"];
    }];
}


// 成功
- (void)successOfSetPartyBottleQTY:(NSString *)msg {
    
    if([_delegate respondsToSelector:@selector(successOfSetPartyBottleQTY:)]) {
        
        [_delegate successOfSetPartyBottleQTY:msg];
    }
}


// 失败
- (void)failureOfSetPartyBottleQTY:(NSString *)msg {
    
    if([_delegate respondsToSelector:@selector(failureOfSetPartyBottleQTY:)]) {
        
        [_delegate failureOfSetPartyBottleQTY:msg];
    }
}

@end
