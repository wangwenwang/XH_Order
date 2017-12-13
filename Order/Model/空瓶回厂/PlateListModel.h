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
//    "type": "1",
//    "msg": "获取成功",
//    "PlateNumberModel": [
//                         {
//                             "TMS_PLATE_NUMBER": "粤BTEST",
//                             "TMS_VEHICLE_TYPE": "常温车",
//                             "TMS_VEHICLE_SIZE": "4.2M",
//                             "TMS_VEHICLE_IDX": "5294"
//                         },
//                         {
//                             "TMS_PLATE_NUMBER": "粤 ADSFA",
//                             "TMS_VEHICLE_TYPE": "常温车",
//                             "TMS_VEHICLE_SIZE": "小面包",
//                             "TMS_VEHICLE_IDX": "5296"
//                         }
//                         ]
//}

@interface PlateListModel : NSObject

@property (nonatomic, strong) NSArray * plateNumberModel;
@property (nonatomic, strong) NSString * msg;
@property (nonatomic, strong) NSString * type;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;

@end
