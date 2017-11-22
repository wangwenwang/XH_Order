//
//  BottleAddressModel.m
//  Order
//
//  Created by 凯东源 on 2017/11/21.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "BottleAddressModel.h"


NSString *const kBottleAddressModelADDRESSALIAS = @"ADDRESS_ALIAS";
NSString *const kBottleAddressModelADDRESSCODE = @"ADDRESS_CODE";
NSString *const kBottleAddressModelADDRESSINFO = @"ADDRESS_INFO";
NSString *const kBottleAddressModelADDRESSREGION = @"ADDRESS_REGION";
NSString *const kBottleAddressModelADDRESSREMARK = @"ADDRESS_REMARK";
NSString *const kBottleAddressModelADDRESSZIP = @"ADDRESS_ZIP";
NSString *const kBottleAddressModelCONTACTFAX = @"CONTACT_FAX";
NSString *const kBottleAddressModelCONTACTPERSON = @"CONTACT_PERSON";
NSString *const kBottleAddressModelCONTACTSMS = @"CONTACT_SMS";
NSString *const kBottleAddressModelCONTACTTEL = @"CONTACT_TEL";
NSString *const kBottleAddressModelCOORDINATE = @"COORDINATE";
NSString *const kBottleAddressModelIDX = @"IDX";
NSString *const kBottleAddressModelPARTYCITY = @"PARTY_CITY";
NSString *const kBottleAddressModelPARTYCODE = @"PARTY_CODE";
NSString *const kBottleAddressModelPARTYNAME = @"PARTY_NAME";
NSString *const kBottleAddressModelPARTYPROVINCE = @"PARTY_PROVINCE";


@implementation BottleAddressModel

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if(![dictionary[kBottleAddressModelADDRESSALIAS] isKindOfClass:[NSNull class]]){
        self.aDDRESSALIAS = dictionary[kBottleAddressModelADDRESSALIAS];
    }
    if(![dictionary[kBottleAddressModelADDRESSCODE] isKindOfClass:[NSNull class]]){
        self.aDDRESSCODE = dictionary[kBottleAddressModelADDRESSCODE];
    }
    if(![dictionary[kBottleAddressModelADDRESSINFO] isKindOfClass:[NSNull class]]){
        self.aDDRESSINFO = dictionary[kBottleAddressModelADDRESSINFO];
    }
    if(![dictionary[kBottleAddressModelADDRESSREGION] isKindOfClass:[NSNull class]]){
        self.aDDRESSREGION = dictionary[kBottleAddressModelADDRESSREGION];
    }
    if(![dictionary[kBottleAddressModelADDRESSREMARK] isKindOfClass:[NSNull class]]){
        self.aDDRESSREMARK = dictionary[kBottleAddressModelADDRESSREMARK];
    }
    if(![dictionary[kBottleAddressModelADDRESSZIP] isKindOfClass:[NSNull class]]){
        self.aDDRESSZIP = dictionary[kBottleAddressModelADDRESSZIP];
    }
    if(![dictionary[kBottleAddressModelCONTACTFAX] isKindOfClass:[NSNull class]]){
        self.cONTACTFAX = dictionary[kBottleAddressModelCONTACTFAX];
    }
    if(![dictionary[kBottleAddressModelCONTACTPERSON] isKindOfClass:[NSNull class]]){
        self.cONTACTPERSON = dictionary[kBottleAddressModelCONTACTPERSON];
    }
    if(![dictionary[kBottleAddressModelCONTACTSMS] isKindOfClass:[NSNull class]]){
        self.cONTACTSMS = dictionary[kBottleAddressModelCONTACTSMS];
    }
    if(![dictionary[kBottleAddressModelCONTACTTEL] isKindOfClass:[NSNull class]]){
        self.cONTACTTEL = dictionary[kBottleAddressModelCONTACTTEL];
    }
    if(![dictionary[kBottleAddressModelCOORDINATE] isKindOfClass:[NSNull class]]){
        self.cOORDINATE = dictionary[kBottleAddressModelCOORDINATE];
    }
    if(![dictionary[kBottleAddressModelIDX] isKindOfClass:[NSNull class]]){
        self.iDX = dictionary[kBottleAddressModelIDX];
    }
    if(![dictionary[kBottleAddressModelPARTYCITY] isKindOfClass:[NSNull class]]){
        self.pARTYCITY = dictionary[kBottleAddressModelPARTYCITY];
    }
    if(![dictionary[kBottleAddressModelPARTYCODE] isKindOfClass:[NSNull class]]){
        self.pARTYCODE = dictionary[kBottleAddressModelPARTYCODE];
    }
    if(![dictionary[kBottleAddressModelPARTYNAME] isKindOfClass:[NSNull class]]){
        self.pARTYNAME = dictionary[kBottleAddressModelPARTYNAME];
    }
    if(![dictionary[kBottleAddressModelPARTYPROVINCE] isKindOfClass:[NSNull class]]){
        self.pARTYPROVINCE = dictionary[kBottleAddressModelPARTYPROVINCE];
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    if(self.aDDRESSALIAS != nil){
        dictionary[kBottleAddressModelADDRESSALIAS] = self.aDDRESSALIAS;
    }
    if(self.aDDRESSCODE != nil){
        dictionary[kBottleAddressModelADDRESSCODE] = self.aDDRESSCODE;
    }
    if(self.aDDRESSINFO != nil){
        dictionary[kBottleAddressModelADDRESSINFO] = self.aDDRESSINFO;
    }
    if(self.aDDRESSREGION != nil){
        dictionary[kBottleAddressModelADDRESSREGION] = self.aDDRESSREGION;
    }
    if(self.aDDRESSREMARK != nil){
        dictionary[kBottleAddressModelADDRESSREMARK] = self.aDDRESSREMARK;
    }
    if(self.aDDRESSZIP != nil){
        dictionary[kBottleAddressModelADDRESSZIP] = self.aDDRESSZIP;
    }
    if(self.cONTACTFAX != nil){
        dictionary[kBottleAddressModelCONTACTFAX] = self.cONTACTFAX;
    }
    if(self.cONTACTPERSON != nil){
        dictionary[kBottleAddressModelCONTACTPERSON] = self.cONTACTPERSON;
    }
    if(self.cONTACTSMS != nil){
        dictionary[kBottleAddressModelCONTACTSMS] = self.cONTACTSMS;
    }
    if(self.cONTACTTEL != nil){
        dictionary[kBottleAddressModelCONTACTTEL] = self.cONTACTTEL;
    }
    if(self.cOORDINATE != nil){
        dictionary[kBottleAddressModelCOORDINATE] = self.cOORDINATE;
    }
    if(self.iDX != nil){
        dictionary[kBottleAddressModelIDX] = self.iDX;
    }
    if(self.pARTYCITY != nil){
        dictionary[kBottleAddressModelPARTYCITY] = self.pARTYCITY;
    }
    if(self.pARTYCODE != nil){
        dictionary[kBottleAddressModelPARTYCODE] = self.pARTYCODE;
    }
    if(self.pARTYNAME != nil){
        dictionary[kBottleAddressModelPARTYNAME] = self.pARTYNAME;
    }
    if(self.pARTYPROVINCE != nil){
        dictionary[kBottleAddressModelPARTYPROVINCE] = self.pARTYPROVINCE;
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
    if(self.aDDRESSALIAS != nil){
        [aCoder encodeObject:self.aDDRESSALIAS forKey:kBottleAddressModelADDRESSALIAS];
    }
    if(self.aDDRESSCODE != nil){
        [aCoder encodeObject:self.aDDRESSCODE forKey:kBottleAddressModelADDRESSCODE];
    }
    if(self.aDDRESSINFO != nil){
        [aCoder encodeObject:self.aDDRESSINFO forKey:kBottleAddressModelADDRESSINFO];
    }
    if(self.aDDRESSREGION != nil){
        [aCoder encodeObject:self.aDDRESSREGION forKey:kBottleAddressModelADDRESSREGION];
    }
    if(self.aDDRESSREMARK != nil){
        [aCoder encodeObject:self.aDDRESSREMARK forKey:kBottleAddressModelADDRESSREMARK];
    }
    if(self.aDDRESSZIP != nil){
        [aCoder encodeObject:self.aDDRESSZIP forKey:kBottleAddressModelADDRESSZIP];
    }
    if(self.cONTACTFAX != nil){
        [aCoder encodeObject:self.cONTACTFAX forKey:kBottleAddressModelCONTACTFAX];
    }
    if(self.cONTACTPERSON != nil){
        [aCoder encodeObject:self.cONTACTPERSON forKey:kBottleAddressModelCONTACTPERSON];
    }
    if(self.cONTACTSMS != nil){
        [aCoder encodeObject:self.cONTACTSMS forKey:kBottleAddressModelCONTACTSMS];
    }
    if(self.cONTACTTEL != nil){
        [aCoder encodeObject:self.cONTACTTEL forKey:kBottleAddressModelCONTACTTEL];
    }
    if(self.cOORDINATE != nil){
        [aCoder encodeObject:self.cOORDINATE forKey:kBottleAddressModelCOORDINATE];
    }
    if(self.iDX != nil){
        [aCoder encodeObject:self.iDX forKey:kBottleAddressModelIDX];
    }
    if(self.pARTYCITY != nil){
        [aCoder encodeObject:self.pARTYCITY forKey:kBottleAddressModelPARTYCITY];
    }
    if(self.pARTYCODE != nil){
        [aCoder encodeObject:self.pARTYCODE forKey:kBottleAddressModelPARTYCODE];
    }
    if(self.pARTYNAME != nil){
        [aCoder encodeObject:self.pARTYNAME forKey:kBottleAddressModelPARTYNAME];
    }
    if(self.pARTYPROVINCE != nil){
        [aCoder encodeObject:self.pARTYPROVINCE forKey:kBottleAddressModelPARTYPROVINCE];
    }
    
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    self.aDDRESSALIAS = [aDecoder decodeObjectForKey:kBottleAddressModelADDRESSALIAS];
    self.aDDRESSCODE = [aDecoder decodeObjectForKey:kBottleAddressModelADDRESSCODE];
    self.aDDRESSINFO = [aDecoder decodeObjectForKey:kBottleAddressModelADDRESSINFO];
    self.aDDRESSREGION = [aDecoder decodeObjectForKey:kBottleAddressModelADDRESSREGION];
    self.aDDRESSREMARK = [aDecoder decodeObjectForKey:kBottleAddressModelADDRESSREMARK];
    self.aDDRESSZIP = [aDecoder decodeObjectForKey:kBottleAddressModelADDRESSZIP];
    self.cONTACTFAX = [aDecoder decodeObjectForKey:kBottleAddressModelCONTACTFAX];
    self.cONTACTPERSON = [aDecoder decodeObjectForKey:kBottleAddressModelCONTACTPERSON];
    self.cONTACTSMS = [aDecoder decodeObjectForKey:kBottleAddressModelCONTACTSMS];
    self.cONTACTTEL = [aDecoder decodeObjectForKey:kBottleAddressModelCONTACTTEL];
    self.cOORDINATE = [aDecoder decodeObjectForKey:kBottleAddressModelCOORDINATE];
    self.iDX = [aDecoder decodeObjectForKey:kBottleAddressModelIDX];
    self.pARTYCITY = [aDecoder decodeObjectForKey:kBottleAddressModelPARTYCITY];
    self.pARTYCODE = [aDecoder decodeObjectForKey:kBottleAddressModelPARTYCODE];
    self.pARTYNAME = [aDecoder decodeObjectForKey:kBottleAddressModelPARTYNAME];
    self.pARTYPROVINCE = [aDecoder decodeObjectForKey:kBottleAddressModelPARTYPROVINCE];
    return self;
    
}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
    BottleAddressModel *copy = [BottleAddressModel new];
    
    copy.aDDRESSALIAS = [self.aDDRESSALIAS copy];
    copy.aDDRESSCODE = [self.aDDRESSCODE copy];
    copy.aDDRESSINFO = [self.aDDRESSINFO copy];
    copy.aDDRESSREGION = [self.aDDRESSREGION copy];
    copy.aDDRESSREMARK = [self.aDDRESSREMARK copy];
    copy.aDDRESSZIP = [self.aDDRESSZIP copy];
    copy.cONTACTFAX = [self.cONTACTFAX copy];
    copy.cONTACTPERSON = [self.cONTACTPERSON copy];
    copy.cONTACTSMS = [self.cONTACTSMS copy];
    copy.cONTACTTEL = [self.cONTACTTEL copy];
    copy.cOORDINATE = [self.cOORDINATE copy];
    copy.iDX = [self.iDX copy];
    copy.pARTYCITY = [self.pARTYCITY copy];
    copy.pARTYCODE = [self.pARTYCODE copy];
    copy.pARTYNAME = [self.pARTYNAME copy];
    copy.pARTYPROVINCE = [self.pARTYPROVINCE copy];
    
    return copy;
}

@end
