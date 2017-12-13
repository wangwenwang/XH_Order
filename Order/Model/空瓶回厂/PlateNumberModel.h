//
//  PlateNumberModel.h
//  Order
//
//  Created by 凯东源 on 2017/12/2.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlateNumberModel : NSObject

@property (nonatomic, strong) NSString * tMSPLATENUMBER;
@property (nonatomic, strong) NSString * tMSVEHICLEIDX;
@property (nonatomic, strong) NSString * tMSVEHICLESIZE;
@property (nonatomic, strong) NSString * tMSVEHICLETYPE;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;

@end
