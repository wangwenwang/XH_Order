//
//  CarrierModel.m
//  Order
//
//  Created by 凯东源 on 2017/11/22.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "CarrierModel.h"


NSString *const kCarrierModelTMSDRIVERIDX = @"TMS_DRIVER_IDX";
NSString *const kCarrierModelTMSDRIVERNAME = @"TMS_DRIVER_NAME";
NSString *const kCarrierModelTMSDRIVERTEL = @"TMS_DRIVER_TEL";
NSString *const kCarrierModelTMSFLEETIDX = @"TMS_FLEET_IDX";
NSString *const kCarrierModelTMSFLEETNAME = @"TMS_FLEET_NAME";
NSString *const kCarrierModelTMSPLATENUMBER = @"TMS_PLATE_NUMBER";
NSString *const kCarrierModelTMSVEHICLEIDX = @"TMS_VEHICLE_IDX";
NSString *const kCarrierModelTMSVEHICLESIZE = @"TMS_VEHICLE_SIZE";
NSString *const kCarrierModelTMSVEHICLETYPE = @"TMS_VEHICLE_TYPE";
NSString *const kCarrierModelOrdOrgIdx = @"ord_org_idx";
NSString *const kCarrierModelOrgDesc = @"org_desc";


@implementation CarrierModel

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if(![dictionary[kCarrierModelTMSDRIVERIDX] isKindOfClass:[NSNull class]]){
        self.tMSDRIVERIDX = dictionary[kCarrierModelTMSDRIVERIDX];
    }
    if(![dictionary[kCarrierModelTMSDRIVERNAME] isKindOfClass:[NSNull class]]){
        self.tMSDRIVERNAME = dictionary[kCarrierModelTMSDRIVERNAME];
    }
    if(![dictionary[kCarrierModelTMSDRIVERTEL] isKindOfClass:[NSNull class]]){
        self.tMSDRIVERTEL = dictionary[kCarrierModelTMSDRIVERTEL];
    }
    if(![dictionary[kCarrierModelTMSFLEETIDX] isKindOfClass:[NSNull class]]){
        self.tMSFLEETIDX = dictionary[kCarrierModelTMSFLEETIDX];
    }
    if(![dictionary[kCarrierModelTMSFLEETNAME] isKindOfClass:[NSNull class]]){
        self.tMSFLEETNAME = dictionary[kCarrierModelTMSFLEETNAME];
    }
    if(![dictionary[kCarrierModelTMSPLATENUMBER] isKindOfClass:[NSNull class]]){
        self.tMSPLATENUMBER = dictionary[kCarrierModelTMSPLATENUMBER];
    }
    if(![dictionary[kCarrierModelTMSVEHICLEIDX] isKindOfClass:[NSNull class]]){
        self.tMSVEHICLEIDX = dictionary[kCarrierModelTMSVEHICLEIDX];
    }
    if(![dictionary[kCarrierModelTMSVEHICLESIZE] isKindOfClass:[NSNull class]]){
        self.tMSVEHICLESIZE = dictionary[kCarrierModelTMSVEHICLESIZE];
    }
    if(![dictionary[kCarrierModelTMSVEHICLETYPE] isKindOfClass:[NSNull class]]){
        self.tMSVEHICLETYPE = dictionary[kCarrierModelTMSVEHICLETYPE];
    }
    if(![dictionary[kCarrierModelOrdOrgIdx] isKindOfClass:[NSNull class]]){
        self.ordOrgIdx = dictionary[kCarrierModelOrdOrgIdx];
    }
    if(![dictionary[kCarrierModelOrgDesc] isKindOfClass:[NSNull class]]){
        self.orgDesc = dictionary[kCarrierModelOrgDesc];
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    if(self.tMSDRIVERIDX != nil){
        dictionary[kCarrierModelTMSDRIVERIDX] = self.tMSDRIVERIDX;
    }
    if(self.tMSDRIVERNAME != nil){
        dictionary[kCarrierModelTMSDRIVERNAME] = self.tMSDRIVERNAME;
    }
    if(self.tMSDRIVERTEL != nil){
        dictionary[kCarrierModelTMSDRIVERTEL] = self.tMSDRIVERTEL;
    }
    if(self.tMSFLEETIDX != nil){
        dictionary[kCarrierModelTMSFLEETIDX] = self.tMSFLEETIDX;
    }
    if(self.tMSFLEETNAME != nil){
        dictionary[kCarrierModelTMSFLEETNAME] = self.tMSFLEETNAME;
    }
    if(self.tMSPLATENUMBER != nil){
        dictionary[kCarrierModelTMSPLATENUMBER] = self.tMSPLATENUMBER;
    }
    if(self.tMSVEHICLEIDX != nil){
        dictionary[kCarrierModelTMSVEHICLEIDX] = self.tMSVEHICLEIDX;
    }
    if(self.tMSVEHICLESIZE != nil){
        dictionary[kCarrierModelTMSVEHICLESIZE] = self.tMSVEHICLESIZE;
    }
    if(self.tMSVEHICLETYPE != nil){
        dictionary[kCarrierModelTMSVEHICLETYPE] = self.tMSVEHICLETYPE;
    }
    if(self.ordOrgIdx != nil){
        dictionary[kCarrierModelOrdOrgIdx] = self.ordOrgIdx;
    }
    if(self.orgDesc != nil){
        dictionary[kCarrierModelOrgDesc] = self.orgDesc;
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
    if(self.tMSDRIVERIDX != nil){
        [aCoder encodeObject:self.tMSDRIVERIDX forKey:kCarrierModelTMSDRIVERIDX];
    }
    if(self.tMSDRIVERNAME != nil){
        [aCoder encodeObject:self.tMSDRIVERNAME forKey:kCarrierModelTMSDRIVERNAME];
    }
    if(self.tMSDRIVERTEL != nil){
        [aCoder encodeObject:self.tMSDRIVERTEL forKey:kCarrierModelTMSDRIVERTEL];
    }
    if(self.tMSFLEETIDX != nil){
        [aCoder encodeObject:self.tMSFLEETIDX forKey:kCarrierModelTMSFLEETIDX];
    }
    if(self.tMSFLEETNAME != nil){
        [aCoder encodeObject:self.tMSFLEETNAME forKey:kCarrierModelTMSFLEETNAME];
    }
    if(self.tMSPLATENUMBER != nil){
        [aCoder encodeObject:self.tMSPLATENUMBER forKey:kCarrierModelTMSPLATENUMBER];
    }
    if(self.tMSVEHICLEIDX != nil){
        [aCoder encodeObject:self.tMSVEHICLEIDX forKey:kCarrierModelTMSVEHICLEIDX];
    }
    if(self.tMSVEHICLESIZE != nil){
        [aCoder encodeObject:self.tMSVEHICLESIZE forKey:kCarrierModelTMSVEHICLESIZE];
    }
    if(self.tMSVEHICLETYPE != nil){
        [aCoder encodeObject:self.tMSVEHICLETYPE forKey:kCarrierModelTMSVEHICLETYPE];
    }
    if(self.ordOrgIdx != nil){
        [aCoder encodeObject:self.ordOrgIdx forKey:kCarrierModelOrdOrgIdx];
    }
    if(self.orgDesc != nil){
        [aCoder encodeObject:self.orgDesc forKey:kCarrierModelOrgDesc];
    }
    
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    self.tMSDRIVERIDX = [aDecoder decodeObjectForKey:kCarrierModelTMSDRIVERIDX];
    self.tMSDRIVERNAME = [aDecoder decodeObjectForKey:kCarrierModelTMSDRIVERNAME];
    self.tMSDRIVERTEL = [aDecoder decodeObjectForKey:kCarrierModelTMSDRIVERTEL];
    self.tMSFLEETIDX = [aDecoder decodeObjectForKey:kCarrierModelTMSFLEETIDX];
    self.tMSFLEETNAME = [aDecoder decodeObjectForKey:kCarrierModelTMSFLEETNAME];
    self.tMSPLATENUMBER = [aDecoder decodeObjectForKey:kCarrierModelTMSPLATENUMBER];
    self.tMSVEHICLEIDX = [aDecoder decodeObjectForKey:kCarrierModelTMSVEHICLEIDX];
    self.tMSVEHICLESIZE = [aDecoder decodeObjectForKey:kCarrierModelTMSVEHICLESIZE];
    self.tMSVEHICLETYPE = [aDecoder decodeObjectForKey:kCarrierModelTMSVEHICLETYPE];
    self.ordOrgIdx = [aDecoder decodeObjectForKey:kCarrierModelOrdOrgIdx];
    self.orgDesc = [aDecoder decodeObjectForKey:kCarrierModelOrgDesc];
    return self;
    
}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
    CarrierModel *copy = [CarrierModel new];
    
    copy.tMSDRIVERIDX = [self.tMSDRIVERIDX copy];
    copy.tMSDRIVERNAME = [self.tMSDRIVERNAME copy];
    copy.tMSDRIVERTEL = [self.tMSDRIVERTEL copy];
    copy.tMSFLEETIDX = [self.tMSFLEETIDX copy];
    copy.tMSFLEETNAME = [self.tMSFLEETNAME copy];
    copy.tMSPLATENUMBER = [self.tMSPLATENUMBER copy];
    copy.tMSVEHICLEIDX = [self.tMSVEHICLEIDX copy];
    copy.tMSVEHICLESIZE = [self.tMSVEHICLESIZE copy];
    copy.tMSVEHICLETYPE = [self.tMSVEHICLETYPE copy];
    copy.ordOrgIdx = [self.ordOrgIdx copy];
    copy.orgDesc = [self.orgDesc copy];
    
    return copy;
}

@end
