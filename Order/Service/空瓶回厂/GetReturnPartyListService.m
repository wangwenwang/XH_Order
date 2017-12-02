//
//  GetReturnPartyListService.m
//  Order
//
//  Created by 凯东源 on 2017/11/21.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "GetReturnPartyListService.h"
#import <AFNetworking.h>

@implementation GetReturnPartyListService


- (void)GetReturnPartyList:(nullable NSString *)strBusinessId {
    
    NSDictionary *parameters = @{
                                 @"strBusinessId" : strBusinessId,
                                 @"strLicense" : @""
                                 };
    
    NSLog(@"获取厂商地址：%@", parameters);
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    [manager POST:API_GetReturnToAddress parameters:parameters progress:^(NSProgress * _Nonnull uploadProgress) {
        nil;
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSLog(@"获取厂商地址成功---%@", responseObject);
        BottleAddressListModel *bottleAddressListM = [[BottleAddressListModel alloc] initWithDictionary:responseObject];
        
        if([bottleAddressListM.type intValue] == 1) {
            
            if(bottleAddressListM.bottleAddressModel.count < 1) {
                
                [self successOfGetReturnPartyList_NoData];
            } else {
                
                [self successOfGetReturnPartyList:bottleAddressListM];
            }
        } else {
            
            [self failureOfGetReturnPartyList:bottleAddressListM.msg];
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"获取厂商地址成功:%@", error);
        [self failureOfGetReturnPartyList:@"请求厂家失败"];
    }];
}


// 成功
- (void)successOfGetReturnPartyList:(BottleAddressListModel *)bottleAddressM {
    
    if([_delegate respondsToSelector:@selector(successOfGetReturnPartyList:)]) {
        
        [_delegate successOfGetReturnPartyList:bottleAddressM];
    }
}


// 没有数据
- (void)successOfGetReturnPartyList_NoData {
    
    if([_delegate respondsToSelector:@selector(successOfGetReturnPartyList_NoData)]) {
        
        [_delegate successOfGetReturnPartyList_NoData];
    }
}


// 失败
- (void)failureOfGetReturnPartyList:(NSString *)msg {
    
    if([_delegate respondsToSelector:@selector(failureOfGetReturnPartyList:)]) {
        
        [_delegate failureOfGetReturnPartyList:msg];
    }
}

@end
