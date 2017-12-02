//
//  GetReturnProductListService.m
//  Order
//
//  Created by 凯东源 on 2017/11/22.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "GetReturnProductListService.h"
#import <AFNetworking.h>

@implementation GetReturnProductListService


- (void)GetReturnProductList:(nullable NSString *)strBusinessId {
    
    NSDictionary *parameters = @{
                                 @"strBusinessId" : strBusinessId,
                                 @"strLicense" : @""
                                 };
    
    NSLog(@"获取瓶子信息：%@", parameters);
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    [manager POST:API_GetReturnProductList parameters:parameters progress:^(NSProgress * _Nonnull uploadProgress) {
        nil;
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSLog(@"获取瓶子信息成功---%@", responseObject);
        BottleInfoListModel *bottleInfoListM = [[BottleInfoListModel alloc] initWithDictionary:responseObject];

        if([bottleInfoListM.type intValue] == 1) {

            if(bottleInfoListM.bottleInfoModel.count < 1) {

                [self successOfGetReturnProductList_NoData];
            } else {

                [self successOfGetReturnProductList:bottleInfoListM];
            }
        } else {

            [self failureOfGetReturnProductList:bottleInfoListM.msg];
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"请求瓶子信息失败:%@", error);
        [self failureOfGetReturnProductList:@"请求瓶子信息失败"];
    }];
}


// 成功
- (void)successOfGetReturnProductList:(BottleInfoListModel *)bottleInfoListM {
    
    if([_delegate respondsToSelector:@selector(successOfGetReturnProductList:)]) {
        
        [_delegate successOfGetReturnProductList:bottleInfoListM];
    }
}


// 没有数据
- (void)successOfGetReturnProductList_NoData {
    
    if([_delegate respondsToSelector:@selector(successOfGetReturnProductList_NoData)]) {
        
        [_delegate successOfGetReturnProductList_NoData];
    }
}


// 失败
- (void)failureOfGetReturnProductList:(NSString *)msg {
    
    if([_delegate respondsToSelector:@selector(failureOfGetReturnProductList:)]) {
        
        [_delegate failureOfGetReturnProductList:msg];
    }
}

@end
