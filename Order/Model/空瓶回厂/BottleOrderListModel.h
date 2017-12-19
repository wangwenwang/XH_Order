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
//    "type": "1",
//    "msg": "获取成功",
//    "BottleOrderModel": [
//                         {
//                             "IDX": "1706349",
//                             "ORD_ENT_IDX": "9008",
//                             "ORD_GROUP_NO": "ZDG010000000063",
//                             "ORD_NO": "ZDG01000000006300",
//                             "ORD_NO_CLIENT": "ZDG010000000063",
//                             "ORD_STATE": "CLOSE",
//                             "ORD_DATE_ADD": "2017/11/27 11:36:14",
//                             "TMS_DATE_CONFIRMED": "",
//                             "OTS_DELIVERY_ACTUAL": "",
//                             "ORD_WORKFLOW": "已交付",
//                             "ORD_FROM_CODE": "HTG004",
//                             "ORD_FROM_NAME": "中航光电科技股份有限公司（深圳分公司）",
//                             "ORD_FROM_ADDRESS": "深圳市宝安区沙井镇新沙路安托山高科技工业园",
//                             "ORD_FROM_PROPERTY": "Consignee",
//                             "ORD_FROM_CNAME": "",
//                             "ORD_FROM_CTEL": "",
//                             "ORD_FROM_CSMS": "",
//                             "ORD_FROM_COUNTRY": "",
//                             "ORD_FROM_PROVINCE": "",
//                             "ORD_FROM_CITY": "深圳市",
//                             "ORD_FROM_REGION": "",
//                             "ORD_FROM_ZIP": "",
//                             "ORD_FROM_SITE": "",
//                             "ORD_TO_CODE": "HTG0010",
//                             "ORD_TO_NAME": "松山湖",
//                             "ORD_TO_ADDRESS": "广东省东莞市松山湖管委会*111",
//                             "ORD_TO_PROPERTY": "Organization",
//                             "ORD_TO_CNAME": "111",
//                             "ORD_TO_CTEL": "111",
//                             "ORD_TO_CSMS": "",
//                             "ORD_TO_COUNTRY": "",
//                             "ORD_TO_PROVINCE": "",
//                             "ORD_TO_CITY": "松山湖",
//                             "ORD_TO_REGION": "",
//                             "ORD_TO_ZIP": "",
//                             "ORD_TO_SITE": "",
//                             "ORD_QTY": "1000.0000",
//                             "ORD_ISSUE_QTY": "1000.0000",
//                             "ORD_QTY_DELIVERY": "1000.0000",
//                             "ORD_TO_IMAGE": "",
//                             "ORD_TO_IMAGE1": "",
//                             "ORD_TO_IMAGE2": "",
//                             "TMS_FLEET_IDX": "398",
//                             "TMS_FLEET_NAME": "HDY车队测试",
//                             "TMS_VEHICLE_IDX": "5295",
//                             "TMS_PLATE_NUMBER": "G34567",
//                             "TMS_VEHICLE_TYPE": "常温车",
//                             "TMS_VEHICLE_SIZE": "小面包",
//                             "TMS_DRIVER_IDX": "4136",
//                             "TMS_DRIVER_NAME": "叉叉",
//                             "TMS_DRIVER_TEL": "13800138000",
//                             "TMS_DATE_ISSUE": "2017/12/19 9:17:12"
//                         }
//                         ]
//}


@interface BottleOrderListModel : NSObject

@property (nonatomic, strong) NSArray * bottleOrderModel;
@property (nonatomic, strong) NSString * msg;
@property (nonatomic, strong) NSString * type;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;

@end
