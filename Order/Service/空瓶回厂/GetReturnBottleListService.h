//
//  GetReturnBottleListService.h
//  Order
//
//  Created by 凯东源 on 2017/11/24.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BottleOrderListModel.h"

@protocol GetReturnBottleListDelegate <NSObject>

/// 获取瓶子订单列表 成功
@optional
- (void)successOfGetReturnBottleList:(BottleOrderListModel * _Nullable )bottleOrderListM;

/// 获取瓶子订单列表 没有数据
@optional
- (void)successOfGetReturnBottleList_NoData;

/// 获取瓶子订单列表 失败
@optional
- (void)failureOfGetReturnBottleList:(NSString * _Nullable)msg;

@end

@interface GetReturnBottleListService : NSObject

@property (weak, nonatomic, nullable)id <GetReturnBottleListDelegate> delegate;

- (void)GetReturnBottleList:(nullable NSString *)BUSINESS_IDX andORD_ORG_IDX:(nullable NSString *)ORD_ORG_IDX andTMS_DRIVER_IDX:(nullable NSString *)TMS_DRIVER_IDX andstrType:(nullable NSString *)strType andstrPage:(NSUInteger)strPage andstrPageCount:(NSUInteger)strPageCount;

@end
