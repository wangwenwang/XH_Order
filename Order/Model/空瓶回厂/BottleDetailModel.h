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
//    "BottleDetailItemModel": [
//                              {
//                                  "IDX": "2606379",
//                                  "PRODUCT_NO": "31010000013110200",
//                                  "LINE_NO": "1",
//                                  "QTY_MISSING": "0.00",
//                                  "PO_QTY": "10.00",
//                                  "PRODUCT_DESC": "1*12",
//                                  "ORDER_QTY": "10.00",
//                                  "QTY_REJECT": "0.00",
//                                  "PRODUCT_NAME": "雪花纯生8度500ml听1*12纸箱节庆版",
//                                  "ORDER_IDX": "1572265",
//                                  "ENT_IDX": "9008",
//                                  "ISSUE_QTY": "10.00",
//                                  "QTY_DELIVERY": "10.00"
//                              }
//                              ],
//    "BottleDetailInfoModel": {
//        "ORD_TO_IMAGE2": "",
//        "ORD_ENT_IDX": "9008",
//        "ORD_TO_CODE": "02E0101-DG0138",
//        "TMS_VEHICLE_SIZE": "",
//        "ORD_WORKFLOW": "已释放",
//        "ORD_TO_SITE": "",
//        "ORD_FROM_REGION": "",
//        "ORD_FROM_ADDRESS": "龙岗布吉半山酒店旁桔子山庄5巷13号",
//        "ORD_FROM_ZIP": "",
//        "TMS_DRIVER_NAME": "HDY",
//        "ORD_QTY": "10.0000",
//        "ToFactory_date": "",
//        "ORD_TO_PROVINCE": "广东省",
//        "ORD_FROM_COUNTRY": "",
//        "TMS_DRIVER_TEL": "12012644454",
//        "ORD_TO_CSMS": "",
//        "ORD_GROUP_NO": "TEST01000000090",
//        "ORD_TO_CTEL": "",
//        "ORD_TO_REGION": "",
//        "ORD_TO_IMAGE": "",
//        "TMS_DATE_ISSUE": "2017/12/20 8:42:05",
//        "ORD_TO_ZIP": "",
//        "TMS_PLATE_NUMBER": "粤A8888",
//        "ORD_FROM_PROPERTY": "Consignee",
//        "ORD_FROM_CODE": "02E0101-SZ4016",
//        "ORD_FROM_CNAME": "",
//        "MONTH_DATE": "",
//        "ORD_FROM_SITE": "",
//        "ORD_TO_COUNTRY": "",
//        "ORD_TO_IMAGE1": "",
//        "ORD_TO_NAME": "东莞塘厦梁亦毅",
//        "ORD_NO_CLIENT": "TEST01100000030",
//        "ORD_STATE": "OPEN",
//        "TMS_VEHICLE_TYPE": "",
//        "LEAVEM_DATE": "",
//        "ORD_NO": "TEST0100000009000",
//        "ORD_FROM_CTEL": "",
//        "ORD_FROM_CITY": "深圳市",
//        "TMS_SHIPMENT_NO": "0000211741",
//        "ORD_QTY_DELIVERY": "0.0000",
//        "TMS_VEHICLE_IDX": "5398",
//        "RETURNTOF_DATE": "",
//        "TMS_FLEET_IDX": "398",
//        "ORD_ISSUE_QTY": "10.0000",
//        "TMS_DATE_CONFIRMED": "2017/12/20 8:41:31",
//        "ORD_DATE_ADD": "2017/12/19 18:53:26",
//        "ORD_TO_CNAME": "",
//        "ORD_TO_PROPERTY": "Consignee",
//        "Factory_date": "",
//        "ORD_FROM_NAME": "深圳市万商隆工贸有限公司",
//        "OTS_DELIVERY_ACTUAL": "",
//        "ORD_TO_ADDRESS": "塘厦车头路60号",
//        "TOMONTH_DATE": "",
//        "TMS_DRIVER_IDX": "4247",
//        "RRTURNTOM_DATE": "",
//        "ORD_FROM_CSMS": "",
//        "ORD_TO_CITY": "东莞市",
//        "ORD_FROM_PROVINCE": "广东省",
//        "TMS_FLEET_NAME": "HDY车队测试",
//        "IDX": "1572265"
//    }
//}

@interface BottleDetailModel : NSObject

@property (nonatomic, strong) BottleDetailInfoModel * bottleDetailInfoModel;
@property (nonatomic, strong) NSArray * bottleDetailItemModel;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;

@end
