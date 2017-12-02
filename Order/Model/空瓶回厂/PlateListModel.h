//
//  PlateListModel.h
//  Order
//
//  Created by 凯东源 on 2017/12/2.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlateNumberModel.h"

//{
//    "type" : "1",
//    "msg" : "获取成功",
//    "PlateNumber" : [
//                     {
//                         "TMS_VEHICLE_IDX" : "5295",
//                         "TMS_PLATE_NUMBER" : "G34567"
//                     },
//                     {
//                         "TMS_VEHICLE_IDX" : "5297",
//                         "TMS_PLATE_NUMBER" : "333"
//                     }
//                     ]
//}

@interface PlateListModel : NSObject

@property (nonatomic, strong) NSArray * plateNumberModel;
@property (nonatomic, strong) NSString * msg;
@property (nonatomic, strong) NSString * type;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;

@end
