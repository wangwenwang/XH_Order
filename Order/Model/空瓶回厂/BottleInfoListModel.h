//
//  BottleInfoListModel.h
//  Order
//
//  Created by 凯东源 on 2017/11/22.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BottleInfoModel.h"

//{
//    "type": "1",
//    "msg": "获取成功",
//    "BottleInfoModel": [
//                        {
//                            "PRODUCT_NO": "MAX01",
//                            "PRODUCT_NAME": "大瓶",
//                            "PRODUCT_DESC": "回瓶的大瓶",
//                            "PRODUCT_BARCODE": "",
//                            "PRODUCT_STATE": "新建",
//                            "IDX": "34688"
//                        }
//                        ]
//}

@interface BottleInfoListModel : NSObject

@property (nonatomic, strong) NSArray * bottleInfoModel;
@property (nonatomic, strong) NSString * msg;
@property (nonatomic, strong) NSString * type;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;

@end
