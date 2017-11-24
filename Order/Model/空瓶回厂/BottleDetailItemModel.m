//
//  BottleDetailItemModel.m
//  Order
//
//  Created by 凯东源 on 2017/11/24.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "BottleDetailItemModel.h"


NSString *const kBottleDetailItemModelENTIDX = @"ENT_IDX";
NSString *const kBottleDetailItemModelIDX = @"IDX";
NSString *const kBottleDetailItemModelISSUEQTY = @"ISSUE_QTY";
NSString *const kBottleDetailItemModelLINENO = @"LINE_NO";
NSString *const kBottleDetailItemModelORDERIDX = @"ORDER_IDX";
NSString *const kBottleDetailItemModelORDERQTY = @"ORDER_QTY";
NSString *const kBottleDetailItemModelPOQTY = @"PO_QTY";
NSString *const kBottleDetailItemModelPRODUCTDESC = @"PRODUCT_DESC";
NSString *const kBottleDetailItemModelPRODUCTNAME = @"PRODUCT_NAME";
NSString *const kBottleDetailItemModelPRODUCTNO = @"PRODUCT_NO";
NSString *const kBottleDetailItemModelQTYDELIVERY = @"QTY_DELIVERY";

@implementation BottleDetailItemModel

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if(![dictionary[kBottleDetailItemModelENTIDX] isKindOfClass:[NSNull class]]){
        self.eNTIDX = dictionary[kBottleDetailItemModelENTIDX];
    }
    if(![dictionary[kBottleDetailItemModelIDX] isKindOfClass:[NSNull class]]){
        self.iDX = dictionary[kBottleDetailItemModelIDX];
    }
    if(![dictionary[kBottleDetailItemModelISSUEQTY] isKindOfClass:[NSNull class]]){
        self.iSSUEQTY = dictionary[kBottleDetailItemModelISSUEQTY];
    }
    if(![dictionary[kBottleDetailItemModelLINENO] isKindOfClass:[NSNull class]]){
        self.lINENO = dictionary[kBottleDetailItemModelLINENO];
    }
    if(![dictionary[kBottleDetailItemModelORDERIDX] isKindOfClass:[NSNull class]]){
        self.oRDERIDX = dictionary[kBottleDetailItemModelORDERIDX];
    }
    if(![dictionary[kBottleDetailItemModelORDERQTY] isKindOfClass:[NSNull class]]){
        self.oRDERQTY = dictionary[kBottleDetailItemModelORDERQTY];
    }
    if(![dictionary[kBottleDetailItemModelPOQTY] isKindOfClass:[NSNull class]]){
        self.pOQTY = dictionary[kBottleDetailItemModelPOQTY];
    }
    if(![dictionary[kBottleDetailItemModelPRODUCTDESC] isKindOfClass:[NSNull class]]){
        self.pRODUCTDESC = dictionary[kBottleDetailItemModelPRODUCTDESC];
    }
    if(![dictionary[kBottleDetailItemModelPRODUCTNAME] isKindOfClass:[NSNull class]]){
        self.pRODUCTNAME = dictionary[kBottleDetailItemModelPRODUCTNAME];
    }
    if(![dictionary[kBottleDetailItemModelPRODUCTNO] isKindOfClass:[NSNull class]]){
        self.pRODUCTNO = dictionary[kBottleDetailItemModelPRODUCTNO];
    }
    if(![dictionary[kBottleDetailItemModelQTYDELIVERY] isKindOfClass:[NSNull class]]){
        self.qTYDELIVERY = dictionary[kBottleDetailItemModelQTYDELIVERY];
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
        dictionary[kBottleDetailItemModelENTIDX] = self.eNTIDX;
    }
    if(self.iDX != nil){
        dictionary[kBottleDetailItemModelIDX] = self.iDX;
    }
    if(self.iSSUEQTY != nil){
        dictionary[kBottleDetailItemModelISSUEQTY] = self.iSSUEQTY;
    }
    if(self.lINENO != nil){
        dictionary[kBottleDetailItemModelLINENO] = self.lINENO;
    }
    if(self.oRDERIDX != nil){
        dictionary[kBottleDetailItemModelORDERIDX] = self.oRDERIDX;
    }
    if(self.oRDERQTY != nil){
        dictionary[kBottleDetailItemModelORDERQTY] = self.oRDERQTY;
    }
    if(self.pOQTY != nil){
        dictionary[kBottleDetailItemModelPOQTY] = self.pOQTY;
    }
    if(self.pRODUCTDESC != nil){
        dictionary[kBottleDetailItemModelPRODUCTDESC] = self.pRODUCTDESC;
    }
    if(self.pRODUCTNAME != nil){
        dictionary[kBottleDetailItemModelPRODUCTNAME] = self.pRODUCTNAME;
    }
    if(self.pRODUCTNO != nil){
        dictionary[kBottleDetailItemModelPRODUCTNO] = self.pRODUCTNO;
    }
    if(self.qTYDELIVERY != nil){
        dictionary[kBottleDetailItemModelQTYDELIVERY] = self.qTYDELIVERY;
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
        [aCoder encodeObject:self.eNTIDX forKey:kBottleDetailItemModelENTIDX];
    }
    if(self.iDX != nil){
        [aCoder encodeObject:self.iDX forKey:kBottleDetailItemModelIDX];
    }
    if(self.iSSUEQTY != nil){
        [aCoder encodeObject:self.iSSUEQTY forKey:kBottleDetailItemModelISSUEQTY];
    }
    if(self.lINENO != nil){
        [aCoder encodeObject:self.lINENO forKey:kBottleDetailItemModelLINENO];
    }
    if(self.oRDERIDX != nil){
        [aCoder encodeObject:self.oRDERIDX forKey:kBottleDetailItemModelORDERIDX];
    }
    if(self.oRDERQTY != nil){
        [aCoder encodeObject:self.oRDERQTY forKey:kBottleDetailItemModelORDERQTY];
    }
    if(self.pOQTY != nil){
        [aCoder encodeObject:self.pOQTY forKey:kBottleDetailItemModelPOQTY];
    }
    if(self.pRODUCTDESC != nil){
        [aCoder encodeObject:self.pRODUCTDESC forKey:kBottleDetailItemModelPRODUCTDESC];
    }
    if(self.pRODUCTNAME != nil){
        [aCoder encodeObject:self.pRODUCTNAME forKey:kBottleDetailItemModelPRODUCTNAME];
    }
    if(self.pRODUCTNO != nil){
        [aCoder encodeObject:self.pRODUCTNO forKey:kBottleDetailItemModelPRODUCTNO];
    }
    if(self.qTYDELIVERY != nil){
        [aCoder encodeObject:self.qTYDELIVERY forKey:kBottleDetailItemModelQTYDELIVERY];
    }
    
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    self.eNTIDX = [aDecoder decodeObjectForKey:kBottleDetailItemModelENTIDX];
    self.iDX = [aDecoder decodeObjectForKey:kBottleDetailItemModelIDX];
    self.iSSUEQTY = [aDecoder decodeObjectForKey:kBottleDetailItemModelISSUEQTY];
    self.lINENO = [aDecoder decodeObjectForKey:kBottleDetailItemModelLINENO];
    self.oRDERIDX = [aDecoder decodeObjectForKey:kBottleDetailItemModelORDERIDX];
    self.oRDERQTY = [aDecoder decodeObjectForKey:kBottleDetailItemModelORDERQTY];
    self.pOQTY = [aDecoder decodeObjectForKey:kBottleDetailItemModelPOQTY];
    self.pRODUCTDESC = [aDecoder decodeObjectForKey:kBottleDetailItemModelPRODUCTDESC];
    self.pRODUCTNAME = [aDecoder decodeObjectForKey:kBottleDetailItemModelPRODUCTNAME];
    self.pRODUCTNO = [aDecoder decodeObjectForKey:kBottleDetailItemModelPRODUCTNO];
    self.qTYDELIVERY = [aDecoder decodeObjectForKey:kBottleDetailItemModelQTYDELIVERY];
    return self;
    
}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
    BottleDetailItemModel *copy = [BottleDetailItemModel new];
    
    copy.eNTIDX = [self.eNTIDX copy];
    copy.iDX = [self.iDX copy];
    copy.iSSUEQTY = [self.iSSUEQTY copy];
    copy.lINENO = [self.lINENO copy];
    copy.oRDERIDX = [self.oRDERIDX copy];
    copy.oRDERQTY = [self.oRDERQTY copy];
    copy.pOQTY = [self.pOQTY copy];
    copy.pRODUCTDESC = [self.pRODUCTDESC copy];
    copy.pRODUCTNAME = [self.pRODUCTNAME copy];
    copy.pRODUCTNO = [self.pRODUCTNO copy];
    copy.qTYDELIVERY = [self.qTYDELIVERY copy];
    
    return copy;
}

@end
