//
//  GetPlateListService.h
//  Order
//
//  Created by 凯东源 on 2017/12/2.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlateListModel.h"

@protocol GetPlateListServiceDelegate <NSObject>

/// 车牌列表 成功
@optional
- (void)successOfGetPlateList:(PlateListModel * _Nullable )plateListM;

/// 车牌列表 没有数据
@optional
- (void)successOfGetPlateList_NoData;

/// 车牌列表 失败
@optional
- (void)failureOfGetPlateList:(NSString * _Nullable)msg;

@end

@interface GetPlateListService : NSObject

@property (weak, nonatomic, nullable)id <GetPlateListServiceDelegate> delegate;

- (void)GetPlateList:(nullable NSString *)TMS_FLEET_IDX andstrPlateNumber:(NSString *)strPlateNumber;

@end
