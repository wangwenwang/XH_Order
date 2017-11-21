//
//  BottleAddressModel.h
//  Order
//
//  Created by 凯东源 on 2017/11/21.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BottleAddressModel : NSObject

@property (nonatomic, strong) NSString * bUSINESSIDX;
@property (nonatomic, strong) NSString * cONTACTPERSON;
@property (nonatomic, strong) NSString * cONTACTTEL;
@property (nonatomic, strong) NSString * iDX;
@property (nonatomic, strong) NSString * pARTYCITY;
@property (nonatomic, strong) NSString * pARTYCLASS;
@property (nonatomic, strong) NSString * pARTYCODE;
@property (nonatomic, strong) NSString * pARTYCOUNTRY;
@property (nonatomic, strong) NSString * pARTYNAME;
@property (nonatomic, strong) NSString * pARTYPROPERTY;
@property (nonatomic, strong) NSString * pARTYPROVINCE;
@property (nonatomic, strong) NSString * pARTYREMARK;
@property (nonatomic, strong) NSString * pARTYTYPE;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;

@end
