//
//  GetShipmentListService.h
//  Order
//
//  Created by 凯东源 on 2017/11/22.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarrierListModel.h"

@protocol GetShipmentListDelegate <NSObject>

/// 获取承运信息 成功
@optional
- (void)successOfGetShipmentList:(CarrierListModel * _Nullable )carrierListM;

/// 获取承运信息 没有数据
@optional
- (void)successOfGetShipmentList_NoData;

/// 获取承运信息 失败
@optional
- (void)failureOfGetShipmentList:(NSString * _Nullable)msg;

@end

@interface GetShipmentListService : NSObject

@property (weak, nonatomic, nullable)id <GetShipmentListDelegate> delegate;

- (void)GetShipmentList:(nullable NSString *)TMS_DRIVER_CODE;

@end
