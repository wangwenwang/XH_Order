//
//  BottleOrderListModel.h
//  Order
//
//  Created by 凯东源 on 2017/11/24.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BottleOrderModel.h"


//{
//    "BottleOrderModel": [
//                         {
//                             "ORD_FROM_CSMS": "",
//                             "ORD_TO_CODE": "HTG091",
//                             "ORD_FROM_SITE": "",
//                             "ORD_TO_COUNTRY": "",
//                             "ORD_TO_IMAGE2": "",
//                             "ORD_FROM_ADDRESS": "广西玉林市广场东路298号",
//                             "ORD_FROM_PROPERTY": "Consignee",
//                             "ORD_FROM_PROVINCE": "",
//                             "ORD_TO_CITY": "吴江",
//                             "IDX": "1571668",
//                             "ORD_TO_PROPERTY": "Consignee",
//                             "ORD_TO_ZIP": "",
//                             "ORD_FROM_NAME": "中国移动通信集团广西有限公司玉林分公司",
//                             "TMS_FLEET_IDX": "",
//                             "TMS_DRIVER_NAME": "",
//                             "ORD_QTY_DELIVERY": "0.0000",
//                             "ORD_TO_IMAGE": "",
//                             "ORD_NO_CLIENT": "2017111701",
//                             "ORD_FROM_ZIP": "",
//                             "ORD_FROM_CODE": "HTG013",
//                             "ORD_TO_REGION": "",
//                             "ORD_GROUP_NO": "HTG01000002045",
//                             "TMS_VEHICLE_TYPE": "",
//                             "ORD_WORKFLOW": "已审核",
//                             "TMS_DRIVER_TEL": "",
//                             "ORD_FROM_REGION": "",
//                             "ORD_FROM_CNAME": "",
//                             "ORD_TO_CTEL": "",
//                             "ORD_TO_PROVINCE": "",
//                             "ORD_TO_NAME": "深圳市中兴康讯电子有限公司",
//                             "ORD_FROM_COUNTRY": "",
//                             "ORD_NO": "HTG0100000204500",
//                             "ORD_QTY": "100.0000",
//                             "ORD_TO_CSMS": "",
//                             "ORD_TO_CNAME": "",
//                             "TMS_VEHICLE_IDX": "",
//                             "ORD_TO_IMAGE1": "",
//                             "ORD_ISSUE_QTY": "100.0000",
//                             "TMS_DRIVER_IDX": "",
//                             "ORD_STATE": "OPEN",
//                             "TMS_PLATE_NUMBER": "",
//                             "ORD_TO_ADDRESS": "西丽红花岭闽利达工业园2楼",
//                             "ORD_FROM_CITY": "玉林市",
//                             "ORD_FROM_CTEL": "",
//                             "TMS_FLEET_NAME": "",
//                             "TMS_VEHICLE_SIZE": "",
//                             "ORD_ENT_IDX": "9008",
//                             "ORD_TO_SITE": ""
//                         }
//                         ]
//}


@interface BottleOrderListModel : NSObject

@property (nonatomic, strong) NSArray * bottleOrderModel;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;

@end
