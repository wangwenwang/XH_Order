
//
//  BottleInfoModel.h
//  Order
//
//  Created by 凯东源 on 2017/11/22.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BottleInfoModel : NSObject

@property (nonatomic, strong) NSString * eNTIDX;
@property (nonatomic, strong) NSString * iDX;
@property (nonatomic, strong) NSString * lINENO;
@property (nonatomic, strong) NSString * pOQTY;
@property (nonatomic, strong) NSString * pRODUCTBARCODE;
@property (nonatomic, strong) NSString * pRODUCTDESC;
@property (nonatomic, strong) NSString * pRODUCTIDX;
@property (nonatomic, strong) NSString * pRODUCTNAME;
@property (nonatomic, strong) NSString * pRODUCTNO;
@property (nonatomic, strong) NSString * pRODUCTSTATE;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;

@end
