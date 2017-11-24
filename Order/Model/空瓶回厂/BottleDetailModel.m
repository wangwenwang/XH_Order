//
//  BottleDetailModel.m
//  Order
//
//  Created by 凯东源 on 2017/11/24.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "BottleDetailModel.h"


NSString *const kBottleDetailModelBottleDetailInfoModel = @"Info";
NSString *const kBottleDetailModelBottleDetailItemModel = @"List";


@implementation BottleDetailModel

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if(![dictionary[kBottleDetailModelBottleDetailInfoModel] isKindOfClass:[NSNull class]]){
        self.bottleDetailInfoModel = [[BottleDetailInfoModel alloc] initWithDictionary:dictionary[kBottleDetailModelBottleDetailInfoModel]];
    }
    
    if(dictionary[kBottleDetailModelBottleDetailItemModel] != nil && [dictionary[kBottleDetailModelBottleDetailItemModel] isKindOfClass:[NSArray class]]){
        NSArray * bottleDetailItemModelDictionaries = dictionary[kBottleDetailModelBottleDetailItemModel];
        NSMutableArray * bottleDetailItemModelItems = [NSMutableArray array];
        for(NSDictionary * bottleDetailItemModelDictionary in bottleDetailItemModelDictionaries){
            BottleDetailItemModel * bottleDetailItemModelItem = [[BottleDetailItemModel alloc] initWithDictionary:bottleDetailItemModelDictionary];
            [bottleDetailItemModelItems addObject:bottleDetailItemModelItem];
        }
        self.bottleDetailItemModel = bottleDetailItemModelItems;
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    if(self.bottleDetailInfoModel != nil){
        dictionary[kBottleDetailModelBottleDetailInfoModel] = [self.bottleDetailInfoModel toDictionary];
    }
    if(self.bottleDetailItemModel != nil){
        NSMutableArray * dictionaryElements = [NSMutableArray array];
        for(BottleDetailItemModel * bottleDetailItemModelElement in self.bottleDetailItemModel){
            [dictionaryElements addObject:[bottleDetailItemModelElement toDictionary]];
        }
        dictionary[kBottleDetailModelBottleDetailItemModel] = dictionaryElements;
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
    if(self.bottleDetailInfoModel != nil){
        [aCoder encodeObject:self.bottleDetailInfoModel forKey:kBottleDetailModelBottleDetailInfoModel];
    }
    if(self.bottleDetailItemModel != nil){
        [aCoder encodeObject:self.bottleDetailItemModel forKey:kBottleDetailModelBottleDetailItemModel];
    }
    
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    self.bottleDetailInfoModel = [aDecoder decodeObjectForKey:kBottleDetailModelBottleDetailInfoModel];
    self.bottleDetailItemModel = [aDecoder decodeObjectForKey:kBottleDetailModelBottleDetailItemModel];
    return self;
    
}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
    BottleDetailModel *copy = [BottleDetailModel new];
    
    copy.bottleDetailInfoModel = [self.bottleDetailInfoModel copy];
    copy.bottleDetailItemModel = [self.bottleDetailItemModel copy];
    
    return copy;
}

@end
