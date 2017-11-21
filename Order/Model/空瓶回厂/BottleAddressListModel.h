//
//  BottleAddressListModel.h
//  Order
//
//  Created by 凯东源 on 2017/11/21.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BottleAddressModel.h"


//{
//    "type" : "1",
//    "BottleAddressModel" : [
//                            {
//                                "BUSINESS_IDX" : "242",
//                                "IDX" : "69928",
//                                "PARTY_CITY" : "深圳市",
//                                "PARTY_CLASS" : "",
//                                "PARTY_REMARK" : "",
//                                "PARTY_PROVINCE" : "广东省",
//                                "PARTY_TYPE" : "",
//                                "PARTY_NAME" : "深圳雪花工厂",
//                                "PARTY_PROPERTY" : "Supplier",
//                                "CONTACT_PERSON" : "",
//                                "CONTACT_TEL" : "",
//                                "PARTY_CODE" : "SZXHA001",
//                                "PARTY_COUNTRY" : ""
//                            }
//                            ],
//    "msg" : "获取成功"
//}



@interface BottleAddressListModel : NSObject

@property (nonatomic, strong) NSArray * bottleAddressModel;
@property (nonatomic, strong) NSString * msg;
@property (nonatomic, strong) NSString * type;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;

@end
