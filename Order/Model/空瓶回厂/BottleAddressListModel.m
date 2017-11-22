//
//  BottleAddressListModel.m
//  Order
//
//  Created by 凯东源 on 2017/11/21.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "BottleAddressListModel.h"


NSString *const kBottleAddressListModelBottleAddressModel = @"result";
NSString *const kBottleAddressListModelMsg = @"msg";
NSString *const kBottleAddressListModelType = @"type";


@implementation BottleAddressListModel

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if(dictionary[kBottleAddressListModelBottleAddressModel] != nil && [dictionary[kBottleAddressListModelBottleAddressModel] isKindOfClass:[NSArray class]]){
        NSArray * bottleAddressModelDictionaries = dictionary[kBottleAddressListModelBottleAddressModel];
        NSMutableArray * bottleAddressModelItems = [NSMutableArray array];
        for(NSDictionary * bottleAddressModelDictionary in bottleAddressModelDictionaries){
            BottleAddressModel * bottleAddressModelItem = [[BottleAddressModel alloc] initWithDictionary:bottleAddressModelDictionary];
            [bottleAddressModelItems addObject:bottleAddressModelItem];
        }
        self.bottleAddressModel = bottleAddressModelItems;
    }
    if(![dictionary[kBottleAddressListModelMsg] isKindOfClass:[NSNull class]]){
        self.msg = dictionary[kBottleAddressListModelMsg];
    }
    if(![dictionary[kBottleAddressListModelType] isKindOfClass:[NSNull class]]){
        self.type = dictionary[kBottleAddressListModelType];
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    if(self.bottleAddressModel != nil){
        NSMutableArray * dictionaryElements = [NSMutableArray array];
        for(BottleAddressModel * bottleAddressModelElement in self.bottleAddressModel){
            [dictionaryElements addObject:[bottleAddressModelElement toDictionary]];
        }
        dictionary[kBottleAddressListModelBottleAddressModel] = dictionaryElements;
    }
    if(self.msg != nil){
        dictionary[kBottleAddressListModelMsg] = self.msg;
    }
    if(self.type != nil){
        dictionary[kBottleAddressListModelType] = self.type;
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
    if(self.bottleAddressModel != nil){
        [aCoder encodeObject:self.bottleAddressModel forKey:kBottleAddressListModelBottleAddressModel];
    }
    if(self.msg != nil){
        [aCoder encodeObject:self.msg forKey:kBottleAddressListModelMsg];
    }
    if(self.type != nil){
        [aCoder encodeObject:self.type forKey:kBottleAddressListModelType];
    }
    
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    self.bottleAddressModel = [aDecoder decodeObjectForKey:kBottleAddressListModelBottleAddressModel];
    self.msg = [aDecoder decodeObjectForKey:kBottleAddressListModelMsg];
    self.type = [aDecoder decodeObjectForKey:kBottleAddressListModelType];
    return self;
    
}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
    BottleAddressListModel *copy = [BottleAddressListModel new];
    
    copy.bottleAddressModel = [self.bottleAddressModel copy];
    copy.msg = [self.msg copy];
    copy.type = [self.type copy];
    
    return copy;
}

@end
