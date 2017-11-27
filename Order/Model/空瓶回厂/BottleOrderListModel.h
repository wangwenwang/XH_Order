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
//                             "IDX": "1704609",
//                             "ORD_ENT_IDX": "9008",
//                             "ORD_GROUP_NO": "ZDG010000000049",
//                             "ORD_NO": "ZDG01000000004900",
//                             "ORD_NO_CLIENT": "ZDG010000000049",
//                             "ORD_STATE": "OPEN",
//                             "ORD_WORKFLOW": "已释放",
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
//                             "ORD_QTY": "555.0000",
//                             "ORD_ISSUE_QTY": "555.0000",
//                             "ORD_QTY_DELIVERY": "0.0000",
//                             "ORD_DATE_ADD": "2017/11/24 16:33:27",
//                             "TMS_DATE_CONFIRMED": "",
//                             "OTS_DELIVERY_ACTUAL": "",
//                             "ORD_TO_IMAGE": "",
//                             "ORD_TO_IMAGE1": "",
//                             "ORD_TO_IMAGE2": "",
//                             "TMS_FLEET_IDX": "398",
//                             "TMS_FLEET_NAME": "HDY车队测试",
//                             "TMS_VEHICLE_IDX": "5293",
//                             "TMS_PLATE_NUMBER": "HDT测试",
//                             "TMS_VEHICLE_TYPE": "常温车",
//                             "TMS_VEHICLE_SIZE": "小面包",
//                             "TMS_DRIVER_IDX": "4136",
//                             "TMS_DRIVER_NAME": "叉叉",
//                             "TMS_DRIVER_TEL": "13800138000"
//                         }
//                         ]
//}


@interface BottleOrderListModel : NSObject

@property (nonatomic, strong) NSArray * bottleOrderModel;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;

@end
