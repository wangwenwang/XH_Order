//
//  BottleInfoModel.m
//  Order
//
//  Created by 凯东源 on 2017/11/22.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "BottleInfoModel.h"


NSString *const kBottleInfoModelENTIDX = @"ENT_IDX";
NSString *const kBottleInfoModelIDX = @"IDX";
NSString *const kBottleInfoModelLINENO = @"LINE_NO";
NSString *const kBottleInfoModelPOQTY = @"PO_QTY";
NSString *const kBottleInfoModelPRODUCTBARCODE = @"PRODUCT_BARCODE";
NSString *const kBottleInfoModelPRODUCTDESC = @"PRODUCT_DESC";
NSString *const kBottleInfoModelPRODUCTIDX = @"PRODUCT_IDX";
NSString *const kBottleInfoModelPRODUCTNAME = @"PRODUCT_NAME";
NSString *const kBottleInfoModelPRODUCTNO = @"PRODUCT_NO";
NSString *const kBottleInfoModelPRODUCTSTATE = @"PRODUCT_STATE";


@implementation BottleInfoModel

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if(![dictionary[kBottleInfoModelENTIDX] isKindOfClass:[NSNull class]]){
        self.eNTIDX = dictionary[kBottleInfoModelENTIDX];
    }
    if(![dictionary[kBottleInfoModelIDX] isKindOfClass:[NSNull class]]){
        self.iDX = dictionary[kBottleInfoModelIDX];
    }
    if(![dictionary[kBottleInfoModelLINENO] isKindOfClass:[NSNull class]]){
        self.lINENO = dictionary[kBottleInfoModelLINENO];
    }
    if(![dictionary[kBottleInfoModelPOQTY] isKindOfClass:[NSNull class]]){
        self.pOQTY = dictionary[kBottleInfoModelPOQTY];
    }
    if(![dictionary[kBottleInfoModelPRODUCTBARCODE] isKindOfClass:[NSNull class]]){
        self.pRODUCTBARCODE = dictionary[kBottleInfoModelPRODUCTBARCODE];
    }
    if(![dictionary[kBottleInfoModelPRODUCTDESC] isKindOfClass:[NSNull class]]){
        self.pRODUCTDESC = dictionary[kBottleInfoModelPRODUCTDESC];
    }
    if(![dictionary[kBottleInfoModelPRODUCTIDX] isKindOfClass:[NSNull class]]){
        self.pRODUCTIDX = dictionary[kBottleInfoModelPRODUCTIDX];
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
    if(self.eNTIDX != nil){
        dictionary[kBottleInfoModelENTIDX] = self.eNTIDX;
    }
    if(self.iDX != nil){
        dictionary[kBottleInfoModelIDX] = self.iDX;
    }
    if(self.lINENO != nil){
        dictionary[kBottleInfoModelLINENO] = self.lINENO;
    }
    if(self.pOQTY != nil){
        dictionary[kBottleInfoModelPOQTY] = self.pOQTY;
    }
    if(self.pRODUCTBARCODE != nil){
        dictionary[kBottleInfoModelPRODUCTBARCODE] = self.pRODUCTBARCODE;
    }
    if(self.pRODUCTDESC != nil){
        dictionary[kBottleInfoModelPRODUCTDESC] = self.pRODUCTDESC;
    }
    if(self.pRODUCTIDX != nil){
        dictionary[kBottleInfoModelPRODUCTIDX] = self.pRODUCTIDX;
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
    if(self.eNTIDX != nil){
        [aCoder encodeObject:self.eNTIDX forKey:kBottleInfoModelENTIDX];
    }
    if(self.iDX != nil){
        [aCoder encodeObject:self.iDX forKey:kBottleInfoModelIDX];
    }
    if(self.lINENO != nil){
        [aCoder encodeObject:self.lINENO forKey:kBottleInfoModelLINENO];
    }
    if(self.pOQTY != nil){
        [aCoder encodeObject:self.pOQTY forKey:kBottleInfoModelPOQTY];
    }
    if(self.pRODUCTBARCODE != nil){
        [aCoder encodeObject:self.pRODUCTBARCODE forKey:kBottleInfoModelPRODUCTBARCODE];
    }
    if(self.pRODUCTDESC != nil){
        [aCoder encodeObject:self.pRODUCTDESC forKey:kBottleInfoModelPRODUCTDESC];
    }
    if(self.pRODUCTIDX != nil){
        [aCoder encodeObject:self.pRODUCTIDX forKey:kBottleInfoModelPRODUCTIDX];
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
    self.eNTIDX = [aDecoder decodeObjectForKey:kBottleInfoModelENTIDX];
    self.iDX = [aDecoder decodeObjectForKey:kBottleInfoModelIDX];
    self.lINENO = [aDecoder decodeObjectForKey:kBottleInfoModelLINENO];
    self.pOQTY = [aDecoder decodeObjectForKey:kBottleInfoModelPOQTY];
    self.pRODUCTBARCODE = [aDecoder decodeObjectForKey:kBottleInfoModelPRODUCTBARCODE];
    self.pRODUCTDESC = [aDecoder decodeObjectForKey:kBottleInfoModelPRODUCTDESC];
    self.pRODUCTIDX = [aDecoder decodeObjectForKey:kBottleInfoModelPRODUCTIDX];
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
    
    copy.eNTIDX = [self.eNTIDX copy];
    copy.iDX = [self.iDX copy];
    copy.lINENO = [self.lINENO copy];
    copy.pOQTY = [self.pOQTY copy];
    copy.pRODUCTBARCODE = [self.pRODUCTBARCODE copy];
    copy.pRODUCTDESC = [self.pRODUCTDESC copy];
    copy.pRODUCTIDX = [self.pRODUCTIDX copy];
    copy.pRODUCTNAME = [self.pRODUCTNAME copy];
    copy.pRODUCTNO = [self.pRODUCTNO copy];
    copy.pRODUCTSTATE = [self.pRODUCTSTATE copy];
    
    return copy;
}

@end
