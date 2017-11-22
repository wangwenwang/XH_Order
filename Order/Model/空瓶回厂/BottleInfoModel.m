//
//  BottleInfoModel.m
//  Order
//
//  Created by 凯东源 on 2017/11/22.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "BottleInfoModel.h"


NSString *const kBottleInfoModelIDX = @"IDX";
NSString *const kBottleInfoModelPRODUCTBARCODE = @"PRODUCT_BARCODE";
NSString *const kBottleInfoModelPRODUCTDESC = @"PRODUCT_DESC";
NSString *const kBottleInfoModelPRODUCTNAME = @"PRODUCT_NAME";
NSString *const kBottleInfoModelPRODUCTNO = @"PRODUCT_NO";
NSString *const kBottleInfoModelPRODUCTSTATE = @"PRODUCT_STATE";


@implementation BottleInfoModel
-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if(![dictionary[kBottleInfoModelIDX] isKindOfClass:[NSNull class]]){
        self.iDX = dictionary[kBottleInfoModelIDX];
    }
    if(![dictionary[kBottleInfoModelPRODUCTBARCODE] isKindOfClass:[NSNull class]]){
        self.pRODUCTBARCODE = dictionary[kBottleInfoModelPRODUCTBARCODE];
    }
    if(![dictionary[kBottleInfoModelPRODUCTDESC] isKindOfClass:[NSNull class]]){
        self.pRODUCTDESC = dictionary[kBottleInfoModelPRODUCTDESC];
    }
    if(![dictionary[kBottleInfoModelPRODUCTNAME] isKindOfClass:[NSNull class]]){
        self.pRODUCTNAME = dictionary[kBottleInfoModelPRODUCTNAME];
    }
    if(![dictionary[kBottleInfoModelPRODUCTNO] isKindOfClass:[NSNull class]]){
        self.pRODUCTNO = dictionary[kBottleInfoModelPRODUCTNO];
    }
    if(![dictionary[kBottleInfoModelPRODUCTSTATE] isKindOfClass:[NSNull class]]){
        self.pRODUCTSTATE = dictionary[kBottleInfoModelPRODUCTSTATE];
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    if(self.iDX != nil){
        dictionary[kBottleInfoModelIDX] = self.iDX;
    }
    if(self.pRODUCTBARCODE != nil){
        dictionary[kBottleInfoModelPRODUCTBARCODE] = self.pRODUCTBARCODE;
    }
    if(self.pRODUCTDESC != nil){
        dictionary[kBottleInfoModelPRODUCTDESC] = self.pRODUCTDESC;
    }
    if(self.pRODUCTNAME != nil){
        dictionary[kBottleInfoModelPRODUCTNAME] = self.pRODUCTNAME;
    }
    if(self.pRODUCTNO != nil){
        dictionary[kBottleInfoModelPRODUCTNO] = self.pRODUCTNO;
    }
    if(self.pRODUCTSTATE != nil){
        dictionary[kBottleInfoModelPRODUCTSTATE] = self.pRODUCTSTATE;
    }
    return dictionary;
    
}

/**
 * Implementation of NSCoding encoding method
 */
/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    if(self.iDX != nil){
        [aCoder encodeObject:self.iDX forKey:kBottleInfoModelIDX];
    }
    if(self.pRODUCTBARCODE != nil){
        [aCoder encodeObject:self.pRODUCTBARCODE forKey:kBottleInfoModelPRODUCTBARCODE];
    }
    if(self.pRODUCTDESC != nil){
        [aCoder encodeObject:self.pRODUCTDESC forKey:kBottleInfoModelPRODUCTDESC];
    }
    if(self.pRODUCTNAME != nil){
        [aCoder encodeObject:self.pRODUCTNAME forKey:kBottleInfoModelPRODUCTNAME];
    }
    if(self.pRODUCTNO != nil){
        [aCoder encodeObject:self.pRODUCTNO forKey:kBottleInfoModelPRODUCTNO];
    }
    if(self.pRODUCTSTATE != nil){
        [aCoder encodeObject:self.pRODUCTSTATE forKey:kBottleInfoModelPRODUCTSTATE];
    }
    
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    self.iDX = [aDecoder decodeObjectForKey:kBottleInfoModelIDX];
    self.pRODUCTBARCODE = [aDecoder decodeObjectForKey:kBottleInfoModelPRODUCTBARCODE];
    self.pRODUCTDESC = [aDecoder decodeObjectForKey:kBottleInfoModelPRODUCTDESC];
    self.pRODUCTNAME = [aDecoder decodeObjectForKey:kBottleInfoModelPRODUCTNAME];
    self.pRODUCTNO = [aDecoder decodeObjectForKey:kBottleInfoModelPRODUCTNO];
    self.pRODUCTSTATE = [aDecoder decodeObjectForKey:kBottleInfoModelPRODUCTSTATE];
    return self;
    
}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
    BottleInfoModel *copy = [BottleInfoModel new];
    
    copy.iDX = [self.iDX copy];
    copy.pRODUCTBARCODE = [self.pRODUCTBARCODE copy];
    copy.pRODUCTDESC = [self.pRODUCTDESC copy];
    copy.pRODUCTNAME = [self.pRODUCTNAME copy];
    copy.pRODUCTNO = [self.pRODUCTNO copy];
    copy.pRODUCTSTATE = [self.pRODUCTSTATE copy];
    
    return copy;
}

@end
