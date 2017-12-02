//
//  GetReturnOrderListService.m
//  Order
//
//  Created by 凯东源 on 2017/11/24.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "GetReturnOrderListService.h"
#import <AFNetworking.h>

@implementation GetReturnOrderListService


- (void)GetReturnOrderList:(nullable NSString *)strBusinessId andstrUserId:(nullable NSString *)strUserId andstrPartyType:(nullable NSString *)strPartyType andstrPartyId:(nullable NSString *)strPartyId andstrState:(nullable NSString *)strState andstrPage:(NSUInteger)strPage andstrPageCount:(NSUInteger)strPageCount {
    
    NSDictionary *parameters = @{
                                 @"strBusinessId" : strBusinessId,
                                 @"strUserId" : strUserId,
                                 @"strPartyType" : strPartyType,
                                 @"strPartyId" : strPartyId,
                                 @"strState" : strState,
                                 @"strEndDate" : @"",
                                 @"strStartDate" : @"",
                                 @"strPage" : @(strPage),
                                 @"strPageCount" : @(strPageCount),
                                 @"strLicense" : @""
                                 };
    
    NSLog(@"获取瓶子订单列表：%@", parameters);
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    [manager POST:API_GetReturnOrderList parameters:parameters progress:^(NSProgress * _Nonnull uploadProgress) {
        nil;
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSLog(@"获取瓶子订单列表成功---%@", responseObject);
        
        int _type = [responseObject[@"type"] intValue];
        NSString *msg = responseObject[@"msg"];

        if(_type == 1) {
            
            BottleOrderListModel *bottleOrderListM = [[BottleOrderListModel alloc] initWithDictionary:responseObject];
            
            if(bottleOrderListM.bottleOrderModel.count == 0) {

                [self successOfGetReturnBottleList_NoData];
            } else {

                [self successOfGetReturnBottleList:bottleOrderListM];
            }
        } else if(_type == -2) {
            
            [self successOfGetReturnBottleList_NoData];
        } else {

            [self failureOfGetReturnBottleList:msg];
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"请求瓶子订单列表失败:%@", error);
        [self failureOfGetReturnBottleList:@"请求瓶子订单列表失败"];
    }];
}


// 成功
- (void)successOfGetReturnBottleList:(BottleOrderListModel *)bottleOrderListM {
    
    if([_delegate respondsToSelector:@selector(successOfGetReturnBottleList:)]) {
        
        [_delegate successOfGetReturnBottleList:bottleOrderListM];
    }
}


// 没有数据
- (void)successOfGetReturnBottleList_NoData {
    
    if([_delegate respondsToSelector:@selector(successOfGetReturnBottleList_NoData)]) {
        
        [_delegate successOfGetReturnBottleList_NoData];
    }
}


// 失败
- (void)failureOfGetReturnBottleList:(NSString *)msg {
    
    if([_delegate respondsToSelector:@selector(failureOfGetReturnBottleList:)]) {
        
        [_delegate failureOfGetReturnBottleList:msg];
    }
}

@end
