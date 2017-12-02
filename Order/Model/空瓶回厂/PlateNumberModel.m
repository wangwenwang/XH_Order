//
//  PlateNumberModel.m
//  Order
//
//  Created by 凯东源 on 2017/12/2.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "PlateNumberModel.h"


NSString *const kPlateNumberModelTMSPLATENUMBER = @"TMS_PLATE_NUMBER";
NSString *const kPlateNumberModelTMSVEHICLEIDX = @"TMS_VEHICLE_IDX";


@implementation PlateNumberModel

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if(![dictionary[kPlateNumberModelTMSPLATENUMBER] isKindOfClass:[NSNull class]]){
        self.tMSPLATENUMBER = dictionary[kPlateNumberModelTMSPLATENUMBER];
    }
    if(![dictionary[kPlateNumberModelTMSVEHICLEIDX] isKindOfClass:[NSNull class]]){
        self.tMSVEHICLEIDX = dictionary[kPlateNumberModelTMSVEHICLEIDX];
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    if(self.tMSPLATENUMBER != nil){
        dictionary[kPlateNumberModelTMSPLATENUMBER] = self.tMSPLATENUMBER;
    }
    if(self.tMSVEHICLEIDX != nil){
        dictionary[kPlateNumberModelTMSVEHICLEIDX] = self.tMSVEHICLEIDX;
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
    if(self.tMSPLATENUMBER != nil){
        [aCoder encodeObject:self.tMSPLATENUMBER forKey:kPlateNumberModelTMSPLATENUMBER];
    }
    if(self.tMSVEHICLEIDX != nil){
        [aCoder encodeObject:self.tMSVEHICLEIDX forKey:kPlateNumberModelTMSVEHICLEIDX];
    }
    
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    self.tMSPLATENUMBER = [aDecoder decodeObjectForKey:kPlateNumberModelTMSPLATENUMBER];
    self.tMSVEHICLEIDX = [aDecoder decodeObjectForKey:kPlateNumberModelTMSVEHICLEIDX];
    return self;
    
}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
    PlateNumberModel *copy = [PlateNumberModel new];
    
    copy.tMSPLATENUMBER = [self.tMSPLATENUMBER copy];
    copy.tMSVEHICLEIDX = [self.tMSVEHICLEIDX copy];
    
    return copy;
}

@end
