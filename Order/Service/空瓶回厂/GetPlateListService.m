//
//  GetPlateListService.m
//  Order
//
//  Created by 凯东源 on 2017/12/2.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "GetPlateListService.h"
#import <AFNetworking.h>

@implementation GetPlateListService


- (void)GetPlateList:(nullable NSString *)TMS_FLEET_IDX andstrPlateNumber:(NSString *)strPlateNumber {
    
    NSDictionary *parameters = @{
                                 @"TMS_FLEET_IDX" : TMS_FLEET_IDX,
                                 @"strPlateNumber" : strPlateNumber,
                                 @"strLicense" : @""
                                 };
    
    NSLog(@"获取车牌：%@", parameters);
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    [manager POST:API_GetPlateList parameters:parameters progress:^(NSProgress * _Nonnull uploadProgress) {
        nil;
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSLog(@"获取车牌成功---%@", responseObject);
        
        PlateListModel *plateListM = [[PlateListModel alloc] initWithDictionary:responseObject];
        
        if([plateListM.type intValue] == 1) {
            
            if(plateListM.plateNumberModel.count < 1) {
                
                [self successOfGetPlateList_NoData];
            } else {
                
                [self successOfGetPlateList:plateListM];
            }
        } else {
            
            [self failureOfGetPlateList:plateListM.msg];
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"获取车牌成功:%@", error);
        [self failureOfGetPlateList:@"请求车牌失败"];
    }];
}


// 成功
- (void)successOfGetPlateList:(PlateListModel *)plateListM {
    
    if([_delegate respondsToSelector:@selector(successOfGetPlateList:)]) {
        
        [_delegate successOfGetPlateList:plateListM];
    }
}


// 没有数据
- (void)successOfGetPlateList_NoData {
    
    if([_delegate respondsToSelector:@selector(successOfGetPlateList_NoData)]) {
        
        [_delegate successOfGetPlateList_NoData];
    }
}


// 失败
- (void)failureOfGetPlateList:(NSString *)msg {
    
    if([_delegate respondsToSelector:@selector(failureOfGetPlateList:)]) {
        
        [_delegate failureOfGetPlateList:msg];
    }
}

@end
