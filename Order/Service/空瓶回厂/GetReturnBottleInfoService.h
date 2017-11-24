//
//  GetReturnBottleInfoService.h
//  Order
//
//  Created by 凯东源 on 2017/11/22.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BottleDetailModel.h"

@protocol GetReturnBottleInfoDelegate <NSObject>

/// 获取瓶子订单列表 成功
@optional
- (void)successOfGetReturnBottleInfo:(BottleDetailModel * _Nullable )bottleDetailM;

/// 获取瓶子订单列表 失败
@optional
- (void)failureOfGetReturnBottleInfo:(NSString * _Nullable)msg;

@end

@interface GetReturnBottleInfoService : NSObject

@property (weak, nonatomic, nullable)id <GetReturnBottleInfoDelegate> delegate;

- (void)GetReturnBottleInfo:(nullable NSString *)ORDER_IDX;

@end
