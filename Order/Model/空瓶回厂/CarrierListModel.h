//
//  CarrierListModel.h
//  Order
//
//  Created by 凯东源 on 2017/11/22.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarrierModel.h"

//{
//    "type": "1",
//    "msg": "获取成功",
//    "CarrierModel": [
//                     {
//                         "ord_org_idx": "10",
//                         "TMS_FLEET_IDX": "398",
//                         "TMS_DRIVER_IDX": "4136",
//                         "TMS_DRIVER_NAME": "叉叉",
//                         "TMS_VEHICLE_SIZE": "小面包",
//                         "TMS_PLATE_NUMBER": "G34567",
//                         "TMS_FLEET_NAME": "HDY车队测试",
//                         "TMS_VEHICLE_IDX": "5295",
//                         "TMS_VEHICLE_TYPE": "常温车",
//                         "TMS_DRIVER_TEL": "13800138000",
//                         "org_desc": "凯东源分公司"
//                     }
//                     ]
//}

@interface CarrierListModel : NSObject

@property (nonatomic, strong) NSArray * carrierModel;
@property (nonatomic, strong) NSString * msg;
@property (nonatomic, strong) NSString * type;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;

@end
