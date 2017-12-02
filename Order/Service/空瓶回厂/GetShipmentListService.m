//
//  GetShipmentListService.m
//  Order
//
//  Created by 凯东源 on 2017/11/22.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "GetShipmentListService.h"
#import <AFNetworking.h>

@implementation GetShipmentListService


- (void)GetShipmentList:(nullable NSString *)TMS_DRIVER_CODE {
    
    NSDictionary *parameters = @{
                                 @"TMS_DRIVER_CODE" : TMS_DRIVER_CODE,
                                 @"strLicense" : @""
                                 };
    
    NSLog(@"获取承运信息：%@", parameters);
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    [manager POST:API_GetShipmentList parameters:parameters progress:^(NSProgress * _Nonnull uploadProgress) {
        nil;
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSLog(@"获取承运信息成功---%@", responseObject);
        CarrierListModel *carrierListM = [[CarrierListModel alloc] initWithDictionary:responseObject];
        
        if([carrierListM.type intValue] == 1) {
            
            if(carrierListM.carrierModel.count < 1) {
                
                [self successOfGetShipmentList_NoData];
            } else {
                
                [self successOfGetShipmentList:carrierListM];
            }
        } else {
            
            [self failureOfGetShipmentList:carrierListM.msg];
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"获取承运信息成功:%@", error);
        [self failureOfGetShipmentList:@"请求承运信息失败"];
    }];
}


// 成功
- (void)successOfGetShipmentList:(CarrierListModel *)carrierListM {
    
    if([_delegate respondsToSelector:@selector(successOfGetShipmentList:)]) {
        
        [_delegate successOfGetShipmentList:carrierListM];
    }
}


// 没有数据
- (void)successOfGetShipmentList_NoData {
    
    if([_delegate respondsToSelector:@selector(successOfGetShipmentList_NoData)]) {
        
        [_delegate successOfGetShipmentList_NoData];
    }
}


// 失败
- (void)failureOfGetShipmentList:(NSString *)msg {
    
    if([_delegate respondsToSelector:@selector(failureOfGetShipmentList:)]) {
        
        [_delegate failureOfGetShipmentList:msg];
    }
}

@end
