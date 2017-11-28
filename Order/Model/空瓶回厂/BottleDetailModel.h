//
//  BottleDetailModel.h
//  Order
//
//  Created by 凯东源 on 2017/11/24.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BottleDetailInfoModel.h"
#import "BottleDetailItemModel.h"


//{
//    "BottleDetailInfoModel": {
//        "IDX": "1709508",
//        "ORD_ENT_IDX": "9008",
//        "ORD_GROUP_NO": "ZDG010000000092",
//        "ORD_NO": "ZDG01000000009200",
//        "ORD_NO_CLIENT": "ZDG010000000092",
//        "ORD_STATE": "OPEN",
//        "ORD_DATE_ADD": "2017/11/28 18:52:51",
//        "TMS_DATE_CONFIRMED": "",
//        "OTS_DELIVERY_ACTUAL": "",
//        "ORD_WORKFLOW": "已确认",
//        "ORD_FROM_CODE": "HTG004",
//        "ORD_FROM_NAME": "中航光电科技股份有限公司（深圳分公司）",
//        "ORD_FROM_ADDRESS": "深圳市宝安区沙井镇新沙路安托山高科技工业园",
//        "ORD_FROM_PROPERTY": "Consignee",
//        "ORD_FROM_CNAME": "",
//        "ORD_FROM_CTEL": "",
//        "ORD_FROM_CSMS": "",
//        "ORD_FROM_COUNTRY": "",
//        "ORD_FROM_PROVINCE": "",
//        "ORD_FROM_CITY": "深圳市",
//        "ORD_FROM_REGION": "",
//        "ORD_FROM_ZIP": "",
//        "ORD_FROM_SITE": "",
//        "ORD_TO_CODE": "HTG0010",
//        "ORD_TO_NAME": "松山湖",
//        "ORD_TO_ADDRESS": "广东省东莞市松山湖管委会*111",
//        "ORD_TO_PROPERTY": "Organization",
//        "ORD_TO_CNAME": "111",
//        "ORD_TO_CTEL": "111",
//        "ORD_TO_CSMS": "",
//        "ORD_TO_COUNTRY": "",
//        "ORD_TO_PROVINCE": "",
//        "ORD_TO_CITY": "松山湖",
//        "ORD_TO_REGION": "",
//        "ORD_TO_ZIP": "",
//        "ORD_TO_SITE": "",
//        "ORD_QTY": "1569.0000",
//        "ORD_ISSUE_QTY": "1569.0000",
//        "ORD_QTY_DELIVERY": "0.0000",
//        "ORD_TO_IMAGE": "",
//        "ORD_TO_IMAGE1": "",
//        "ORD_TO_IMAGE2": "",
//        "TMS_FLEET_IDX": "398",
//        "TMS_FLEET_NAME": "HDY车队测试",
//        "TMS_VEHICLE_IDX": "5293",
//        "TMS_PLATE_NUMBER": "HDT测试",
//        "TMS_VEHICLE_TYPE": "常温车",
//        "TMS_VEHICLE_SIZE": "小面包",
//        "TMS_DRIVER_IDX": "4136",
//        "TMS_DRIVER_NAME": "叉叉",
//        "TMS_DRIVER_TEL": "13800138000"
//    },
//    "BottleDetailItemModel": [
//                              {
//                                  "IDX": "3010256",
//                                  "ENT_IDX": "9008",
//                                  "ORDER_IDX": "1709508",
//                                  "PRODUCT_NO": "XHHP001",
//                                  "PRODUCT_NAME": "大瓶",
//                                  "PRODUCT_DESC": "",
//                                  "LINE_NO": "1",
//                                  "PO_QTY": "568.00",
//                                  "ORDER_QTY": "568.00",
//                                  "ISSUE_QTY": "568.00",
//                                  "QTY_DELIVERY": "0.00"
//                              },
//                              {
//                                  "IDX": "3010257",
//                                  "ENT_IDX": "9008",
//                                  "ORDER_IDX": "1709508",
//                                  "PRODUCT_NO": "XHHP003",
//                                  "PRODUCT_NAME": "小瓶",
//                                  "PRODUCT_DESC": "",
//                                  "LINE_NO": "3",
//                                  "PO_QTY": "665.00",
//                                  "ORDER_QTY": "665.00",
//                                  "ISSUE_QTY": "665.00",
//                                  "QTY_DELIVERY": "0.00"
//                              },
//                              {
//                                  "IDX": "3010258",
//                                  "ENT_IDX": "9008",
//                                  "ORDER_IDX": "1709508",
//                                  "PRODUCT_NO": "XHHP004",
//                                  "PRODUCT_NAME": "托盘",
//                                  "PRODUCT_DESC": "",
//                                  "LINE_NO": "4",
//                                  "PO_QTY": "336.00",
//                                  "ORDER_QTY": "336.00",
//                                  "ISSUE_QTY": "336.00",
//                                  "QTY_DELIVERY": "0.00"
//                              }
//                              ]
//}

@interface BottleDetailModel : NSObject

@property (nonatomic, strong) BottleDetailInfoModel * bottleDetailInfoModel;
@property (nonatomic, strong) NSArray * bottleDetailItemModel;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;

@end
