//
//  CarrierListModel.m
//  Order
//
//  Created by 凯东源 on 2017/11/22.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "CarrierListModel.h"


NSString *const kCarrierListModelCarrierModel = @"result";
NSString *const kCarrierListModelMsg = @"msg";
NSString *const kCarrierListModelType = @"type";


@implementation CarrierListModel

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if(dictionary[kCarrierListModelCarrierModel] != nil && [dictionary[kCarrierListModelCarrierModel] isKindOfClass:[NSArray class]]){
        NSArray * carrierModelDictionaries = dictionary[kCarrierListModelCarrierModel];
        NSMutableArray * carrierModelItems = [NSMutableArray array];
        for(NSDictionary * carrierModelDictionary in carrierModelDictionaries){
            CarrierModel * carrierModelItem = [[CarrierModel alloc] initWithDictionary:carrierModelDictionary];
            [carrierModelItems addObject:carrierModelItem];
        }
        self.carrierModel = carrierModelItems;
    }
    if(![dictionary[kCarrierListModelMsg] isKindOfClass:[NSNull class]]){
        self.msg = dictionary[kCarrierListModelMsg];
    }
    if(![dictionary[kCarrierListModelType] isKindOfClass:[NSNull class]]){
        self.type = dictionary[kCarrierListModelType];
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    if(self.carrierModel != nil){
        NSMutableArray * dictionaryElements = [NSMutableArray array];
        for(CarrierModel * carrierModelElement in self.carrierModel){
            [dictionaryElements addObject:[carrierModelElement toDictionary]];
        }
        dictionary[kCarrierListModelCarrierModel] = dictionaryElements;
    }
    if(self.msg != nil){
        dictionary[kCarrierListModelMsg] = self.msg;
    }
    if(self.type != nil){
        dictionary[kCarrierListModelType] = self.type;
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
    if(self.carrierModel != nil){
        [aCoder encodeObject:self.carrierModel forKey:kCarrierListModelCarrierModel];
    }
    if(self.msg != nil){
        [aCoder encodeObject:self.msg forKey:kCarrierListModelMsg];
    }
    if(self.type != nil){
        [aCoder encodeObject:self.type forKey:kCarrierListModelType];
    }
    
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    self.carrierModel = [aDecoder decodeObjectForKey:kCarrierListModelCarrierModel];
    self.msg = [aDecoder decodeObjectForKey:kCarrierListModelMsg];
    self.type = [aDecoder decodeObjectForKey:kCarrierListModelType];
    return self;
    
}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
    CarrierListModel *copy = [CarrierListModel new];
    
    copy.carrierModel = [self.carrierModel copy];
    copy.msg = [self.msg copy];
    copy.type = [self.type copy];
    
    return copy;
}

@end
