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
//    "type": "1",
//    "msg": "获取成功",
//    "result": [
//               {
//                   "PARTY_CITY": "松山湖",
//                   "IDX": "70233",
//                   "ADDRESS_INFO": "广东省东莞市松山湖管委会*111",
//                   "ADDRESS_REMARK": "",
//                   "PARTY_PROVINCE": "",
//                   "ADDRESS_REGION": "",
//                   "PARTY_NAME": "松山湖",
//                   "CONTACT_PERSON": "111",
//                   "ADDRESS_ALIAS": "",
//                   "CONTACT_TEL": "111",
//                   "ADDRESS_ZIP": "",
//                   "ADDRESS_CODE": "HTG0010",
//                   "CONTACT_FAX": "",
//                   "CONTACT_SMS": "",
//                   "COORDINATE": "",
//                   "PARTY_CODE": "HTG0010"
//               }
//               ]
//}


@interface BottleAddressListModel : NSObject

@property (nonatomic, strong) NSArray * bottleAddressModel;
@property (nonatomic, strong) NSString * msg;
@property (nonatomic, strong) NSString * type;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;

@end
