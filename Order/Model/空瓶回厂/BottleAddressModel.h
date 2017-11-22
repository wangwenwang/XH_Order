//
//  BottleAddressModel.h
//  Order
//
//  Created by 凯东源 on 2017/11/21.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BottleAddressModel : NSObject

@property (nonatomic, strong) NSString * aDDRESSALIAS;
@property (nonatomic, strong) NSString * aDDRESSCODE;
@property (nonatomic, strong) NSString * aDDRESSINFO;
@property (nonatomic, strong) NSString * aDDRESSREGION;
@property (nonatomic, strong) NSString * aDDRESSREMARK;
@property (nonatomic, strong) NSString * aDDRESSZIP;
@property (nonatomic, strong) NSString * cONTACTFAX;
@property (nonatomic, strong) NSString * cONTACTPERSON;
@property (nonatomic, strong) NSString * cONTACTSMS;
@property (nonatomic, strong) NSString * cONTACTTEL;
@property (nonatomic, strong) NSString * cOORDINATE;
@property (nonatomic, strong) NSString * iDX;
@property (nonatomic, strong) NSString * pARTYCITY;
@property (nonatomic, strong) NSString * pARTYCODE;
@property (nonatomic, strong) NSString * pARTYNAME;
@property (nonatomic, strong) NSString * pARTYPROVINCE;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;

@property (assign, nonatomic) CGFloat cellHeight;

@end
