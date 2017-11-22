//
//  CarrierModel.h
//  Order
//
//  Created by 凯东源 on 2017/11/22.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CarrierModel : NSObject

@property (nonatomic, strong) NSString * tMSDRIVERIDX;
@property (nonatomic, strong) NSString * tMSDRIVERNAME;
@property (nonatomic, strong) NSString * tMSDRIVERTEL;
@property (nonatomic, strong) NSString * tMSFLEETIDX;
@property (nonatomic, strong) NSString * tMSFLEETNAME;
@property (nonatomic, strong) NSString * tMSPLATENUMBER;
@property (nonatomic, strong) NSString * tMSVEHICLEIDX;
@property (nonatomic, strong) NSString * tMSVEHICLESIZE;
@property (nonatomic, strong) NSString * tMSVEHICLETYPE;
@property (nonatomic, strong) NSString * ordOrgIdx;
@property (nonatomic, strong) NSString * orgDesc;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;

@end
