//
//  BottleDetailItemModel.h
//  Order
//
//  Created by 凯东源 on 2017/11/24.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BottleDetailItemModel : NSObject

@property (nonatomic, strong) NSString * eNTIDX;
@property (nonatomic, strong) NSString * iDX;
@property (nonatomic, strong) NSString * iSSUEQTY;
@property (nonatomic, strong) NSString * lINENO;
@property (nonatomic, strong) NSString * oRDERIDX;
@property (nonatomic, strong) NSString * oRDERQTY;
@property (nonatomic, strong) NSString * pOQTY;
@property (nonatomic, strong) NSString * pRODUCTDESC;
@property (nonatomic, strong) NSString * pRODUCTNAME;
@property (nonatomic, strong) NSString * pRODUCTNO;
@property (nonatomic, strong) NSString * qTYDELIVERY;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;

@end
