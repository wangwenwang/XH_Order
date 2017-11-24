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
//    "BottleDetailItem": [
//                         {
//                             "PRODUCT_DESC": "",
//                             "LINE_NO": "1",
//                             "PO_QTY": "0.00",
//                             "ORDER_QTY": "0.00",
//                             "ISSUE_QTY": "4.00",
//                             "QTY_DELIVERY": "4.00",
//                             "IDX": "2988088",
//                             "ORDER_IDX": "1702548",
//                             "ENT_IDX": "9008",
//                             "PRODUCT_NO": "MAX01",
//                             "PRODUCT_NAME": "大瓶"
//                         }
//                         ],
//    "BottleDetailInfo": {
//        "ORD_FROM_CSMS": "",
//        "ORD_TO_CODE": "HTG0010",
//        "ORD_FROM_SITE": "",
//        "ORD_TO_COUNTRY": "",
//        "ORD_TO_IMAGE2": "",
//        "ORD_FROM_ADDRESS": "深圳市宝安区沙井镇新沙路安托山高科技工业园",
//        "ORD_FROM_PROPERTY": "Consignee",
//        "ORD_FROM_PROVINCE": "",
//        "ORD_TO_CITY": "松山湖",
//        "IDX": "1702548",
//        "ORD_TO_PROPERTY": "Organization",
//        "ORD_TO_ZIP": "",
//        "ORD_FROM_NAME": "中航光电科技股份有限公司（深圳分公司）",
//        "ORD_QTY_DELIVERY": "15.0000",
//        "ORD_TO_IMAGE": "",
//        "ORD_NO_CLIENT": "ZDG010000000044",
//        "ORD_FROM_ZIP": "",
//        "ORD_FROM_CODE": "HTG004",
//        "ORD_TO_REGION": "",
//        "ORD_GROUP_NO": "ZDG010000000044",
//        "ORD_WORKFLOW": "已出库",
//        "ORD_FROM_REGION": "",
//        "ORD_FROM_CNAME": "",
//        "ORD_TO_CTEL": "111",
//        "ORD_TO_PROVINCE": "",
//        "ORD_TO_NAME": "松山湖",
//        "ORD_FROM_COUNTRY": "",
//        "ORD_NO": "ZDG01000000004400",
//        "ORD_QTY": "3.0000",
//        "ORD_TO_CSMS": "",
//        "ORD_TO_CNAME": "111",
//        "ORD_TO_IMAGE1": "",
//        "ORD_ISSUE_QTY": "14.0000",
//        "ORD_STATE": "OPEN",
//        "ORD_TO_ADDRESS": "广东省东莞市松山湖管委会*111",
//        "ORD_FROM_CITY": "深圳市",
//        "ORD_FROM_CTEL": "",
//        "ORD_ENT_IDX": "9008",
//        "ORD_TO_SITE": ""
//    }
//}

@interface BottleDetailModel : NSObject

@property (nonatomic, strong) BottleDetailInfoModel * bottleDetailInfoModel;
@property (nonatomic, strong) NSArray * bottleDetailItemModel;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;

@end
