//
//  BottleAddressModel.m
//  Order
//
//  Created by 凯东源 on 2017/11/21.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "BottleAddressModel.h"


NSString *const kBottleAddressModelBUSINESSIDX = @"BUSINESS_IDX";
NSString *const kBottleAddressModelCONTACTPERSON = @"CONTACT_PERSON";
NSString *const kBottleAddressModelCONTACTTEL = @"CONTACT_TEL";
NSString *const kBottleAddressModelIDX = @"IDX";
NSString *const kBottleAddressModelPARTYCITY = @"PARTY_CITY";
NSString *const kBottleAddressModelPARTYCLASS = @"PARTY_CLASS";
NSString *const kBottleAddressModelPARTYCODE = @"PARTY_CODE";
NSString *const kBottleAddressModelPARTYCOUNTRY = @"PARTY_COUNTRY";
NSString *const kBottleAddressModelPARTYNAME = @"PARTY_NAME";
NSString *const kBottleAddressModelPARTYPROPERTY = @"PARTY_PROPERTY";
NSString *const kBottleAddressModelPARTYPROVINCE = @"PARTY_PROVINCE";
NSString *const kBottleAddressModelPARTYREMARK = @"PARTY_REMARK";
NSString *const kBottleAddressModelPARTYTYPE = @"PARTY_TYPE";


@implementation BottleAddressModel

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if(![dictionary[kBottleAddressModelBUSINESSIDX] isKindOfClass:[NSNull class]]){
        self.bUSINESSIDX = dictionary[kBottleAddressModelBUSINESSIDX];
    }
    if(![dictionary[kBottleAddressModelCONTACTPERSON] isKindOfClass:[NSNull class]]){
        self.cONTACTPERSON = dictionary[kBottleAddressModelCONTACTPERSON];
    }
    if(![dictionary[kBottleAddressModelCONTACTTEL] isKindOfClass:[NSNull class]]){
        self.cONTACTTEL = dictionary[kBottleAddressModelCONTACTTEL];
    }
    if(![dictionary[kBottleAddressModelIDX] isKindOfClass:[NSNull class]]){
        self.iDX = dictionary[kBottleAddressModelIDX];
    }
    if(![dictionary[kBottleAddressModelPARTYCITY] isKindOfClass:[NSNull class]]){
        self.pARTYCITY = dictionary[kBottleAddressModelPARTYCITY];
    }
    if(![dictionary[kBottleAddressModelPARTYCLASS] isKindOfClass:[NSNull class]]){
        self.pARTYCLASS = dictionary[kBottleAddressModelPARTYCLASS];
    }
    if(![dictionary[kBottleAddressModelPARTYCODE] isKindOfClass:[NSNull class]]){
        self.pARTYCODE = dictionary[kBottleAddressModelPARTYCODE];
    }
    if(![dictionary[kBottleAddressModelPARTYCOUNTRY] isKindOfClass:[NSNull class]]){
        self.pARTYCOUNTRY = dictionary[kBottleAddressModelPARTYCOUNTRY];
    }
    if(![dictionary[kBottleAddressModelPARTYNAME] isKindOfClass:[NSNull class]]){
        self.pARTYNAME = dictionary[kBottleAddressModelPARTYNAME];
    }
    if(![dictionary[kBottleAddressModelPARTYPROPERTY] isKindOfClass:[NSNull class]]){
        self.pARTYPROPERTY = dictionary[kBottleAddressModelPARTYPROPERTY];
    }
    if(![dictionary[kBottleAddressModelPARTYPROVINCE] isKindOfClass:[NSNull class]]){
        self.pARTYPROVINCE = dictionary[kBottleAddressModelPARTYPROVINCE];
    }
    if(![dictionary[kBottleAddressModelPARTYREMARK] isKindOfClass:[NSNull class]]){
        self.pARTYREMARK = dictionary[kBottleAddressModelPARTYREMARK];
    }
    if(![dictionary[kBottleAddressModelPARTYTYPE] isKindOfClass:[NSNull class]]){
        self.pARTYTYPE = dictionary[kBottleAddressModelPARTYTYPE];
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    if(self.bUSINESSIDX != nil){
        dictionary[kBottleAddressModelBUSINESSIDX] = self.bUSINESSIDX;
    }
    if(self.cONTACTPERSON != nil){
        dictionary[kBottleAddressModelCONTACTPERSON] = self.cONTACTPERSON;
    }
    if(self.cONTACTTEL != nil){
        dictionary[kBottleAddressModelCONTACTTEL] = self.cONTACTTEL;
    }
    if(self.iDX != nil){
        dictionary[kBottleAddressModelIDX] = self.iDX;
    }
    if(self.pARTYCITY != nil){
        dictionary[kBottleAddressModelPARTYCITY] = self.pARTYCITY;
    }
    if(self.pARTYCLASS != nil){
        dictionary[kBottleAddressModelPARTYCLASS] = self.pARTYCLASS;
    }
    if(self.pARTYCODE != nil){
        dictionary[kBottleAddressModelPARTYCODE] = self.pARTYCODE;
    }
    if(self.pARTYCOUNTRY != nil){
        dictionary[kBottleAddressModelPARTYCOUNTRY] = self.pARTYCOUNTRY;
    }
    if(self.pARTYNAME != nil){
        dictionary[kBottleAddressModelPARTYNAME] = self.pARTYNAME;
    }
    if(self.pARTYPROPERTY != nil){
        dictionary[kBottleAddressModelPARTYPROPERTY] = self.pARTYPROPERTY;
    }
    if(self.pARTYPROVINCE != nil){
        dictionary[kBottleAddressModelPARTYPROVINCE] = self.pARTYPROVINCE;
    }
    if(self.pARTYREMARK != nil){
        dictionary[kBottleAddressModelPARTYREMARK] = self.pARTYREMARK;
    }
    if(self.pARTYTYPE != nil){
        dictionary[kBottleAddressModelPARTYTYPE] = self.pARTYTYPE;
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
    if(self.bUSINESSIDX != nil){
        [aCoder encodeObject:self.bUSINESSIDX forKey:kBottleAddressModelBUSINESSIDX];
    }
    if(self.cONTACTPERSON != nil){
        [aCoder encodeObject:self.cONTACTPERSON forKey:kBottleAddressModelCONTACTPERSON];
    }
    if(self.cONTACTTEL != nil){
        [aCoder encodeObject:self.cONTACTTEL forKey:kBottleAddressModelCONTACTTEL];
    }
    if(self.iDX != nil){
        [aCoder encodeObject:self.iDX forKey:kBottleAddressModelIDX];
    }
    if(self.pARTYCITY != nil){
        [aCoder encodeObject:self.pARTYCITY forKey:kBottleAddressModelPARTYCITY];
    }
    if(self.pARTYCLASS != nil){
        [aCoder encodeObject:self.pARTYCLASS forKey:kBottleAddressModelPARTYCLASS];
    }
    if(self.pARTYCODE != nil){
        [aCoder encodeObject:self.pARTYCODE forKey:kBottleAddressModelPARTYCODE];
    }
    if(self.pARTYCOUNTRY != nil){
        [aCoder encodeObject:self.pARTYCOUNTRY forKey:kBottleAddressModelPARTYCOUNTRY];
    }
    if(self.pARTYNAME != nil){
        [aCoder encodeObject:self.pARTYNAME forKey:kBottleAddressModelPARTYNAME];
    }
    if(self.pARTYPROPERTY != nil){
        [aCoder encodeObject:self.pARTYPROPERTY forKey:kBottleAddressModelPARTYPROPERTY];
    }
    if(self.pARTYPROVINCE != nil){
        [aCoder encodeObject:self.pARTYPROVINCE forKey:kBottleAddressModelPARTYPROVINCE];
    }
    if(self.pARTYREMARK != nil){
        [aCoder encodeObject:self.pARTYREMARK forKey:kBottleAddressModelPARTYREMARK];
    }
    if(self.pARTYTYPE != nil){
        [aCoder encodeObject:self.pARTYTYPE forKey:kBottleAddressModelPARTYTYPE];
    }
    
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    self.bUSINESSIDX = [aDecoder decodeObjectForKey:kBottleAddressModelBUSINESSIDX];
    self.cONTACTPERSON = [aDecoder decodeObjectForKey:kBottleAddressModelCONTACTPERSON];
    self.cONTACTTEL = [aDecoder decodeObjectForKey:kBottleAddressModelCONTACTTEL];
    self.iDX = [aDecoder decodeObjectForKey:kBottleAddressModelIDX];
    self.pARTYCITY = [aDecoder decodeObjectForKey:kBottleAddressModelPARTYCITY];
    self.pARTYCLASS = [aDecoder decodeObjectForKey:kBottleAddressModelPARTYCLASS];
    self.pARTYCODE = [aDecoder decodeObjectForKey:kBottleAddressModelPARTYCODE];
    self.pARTYCOUNTRY = [aDecoder decodeObjectForKey:kBottleAddressModelPARTYCOUNTRY];
    self.pARTYNAME = [aDecoder decodeObjectForKey:kBottleAddressModelPARTYNAME];
    self.pARTYPROPERTY = [aDecoder decodeObjectForKey:kBottleAddressModelPARTYPROPERTY];
    self.pARTYPROVINCE = [aDecoder decodeObjectForKey:kBottleAddressModelPARTYPROVINCE];
    self.pARTYREMARK = [aDecoder decodeObjectForKey:kBottleAddressModelPARTYREMARK];
    self.pARTYTYPE = [aDecoder decodeObjectForKey:kBottleAddressModelPARTYTYPE];
    return self;
    
}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
    BottleAddressModel *copy = [BottleAddressModel new];
    
    copy.bUSINESSIDX = [self.bUSINESSIDX copy];
    copy.cONTACTPERSON = [self.cONTACTPERSON copy];
    copy.cONTACTTEL = [self.cONTACTTEL copy];
    copy.iDX = [self.iDX copy];
    copy.pARTYCITY = [self.pARTYCITY copy];
    copy.pARTYCLASS = [self.pARTYCLASS copy];
    copy.pARTYCODE = [self.pARTYCODE copy];
    copy.pARTYCOUNTRY = [self.pARTYCOUNTRY copy];
    copy.pARTYNAME = [self.pARTYNAME copy];
    copy.pARTYPROPERTY = [self.pARTYPROPERTY copy];
    copy.pARTYPROVINCE = [self.pARTYPROVINCE copy];
    copy.pARTYREMARK = [self.pARTYREMARK copy];
    copy.pARTYTYPE = [self.pARTYTYPE copy];
    
    return copy;
}

@end
