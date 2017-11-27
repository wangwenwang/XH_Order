//
//  GetReturnBottleListService.h
//  Order
//
//  Created by 凯东源 on 2017/11/24.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BottleOrderListModel.h"

@protocol GetReturnOrderListDelegate <NSObject>

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

@interface GetReturnOrderListService : NSObject

@property (weak, nonatomic, nullable)id <GetReturnOrderListDelegate> delegate;

- (void)GetReturnOrderList:(nullable NSString *)strBusinessId andstrUserId:(nullable NSString *)strUserId andstrPartyType:(nullable NSString *)strPartyType andstrPartyId:(nullable NSString *)strPartyId andstrState:(nullable NSString *)strState andstrPage:(NSUInteger)strPage andstrPageCount:(NSUInteger)strPageCount;

@end
