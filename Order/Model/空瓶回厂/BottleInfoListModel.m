//
//  BottleInfoListModel.m
//  Order
//
//  Created by 凯东源 on 2017/11/22.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "BottleInfoListModel.h"


NSString *const kBottleInfoListModelBottleInfoModel = @"result";
NSString *const kBottleInfoListModelMsg = @"msg";
NSString *const kBottleInfoListModelType = @"type";


@implementation BottleInfoListModel

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if(dictionary[kBottleInfoListModelBottleInfoModel] != nil && [dictionary[kBottleInfoListModelBottleInfoModel] isKindOfClass:[NSArray class]]){
        NSArray * bottleInfoModelDictionaries = dictionary[kBottleInfoListModelBottleInfoModel];
        NSMutableArray * bottleInfoModelItems = [NSMutableArray array];
        for(NSDictionary * bottleInfoModelDictionary in bottleInfoModelDictionaries){
            BottleInfoModel * bottleInfoModelItem = [[BottleInfoModel alloc] initWithDictionary:bottleInfoModelDictionary];
            [bottleInfoModelItems addObject:bottleInfoModelItem];
        }
        self.bottleInfoModel = bottleInfoModelItems;
    }
    if(![dictionary[kBottleInfoListModelMsg] isKindOfClass:[NSNull class]]){
        self.msg = dictionary[kBottleInfoListModelMsg];
    }
    if(![dictionary[kBottleInfoListModelType] isKindOfClass:[NSNull class]]){
        self.type = dictionary[kBottleInfoListModelType];
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    if(self.bottleInfoModel != nil){
        NSMutableArray * dictionaryElements = [NSMutableArray array];
        for(BottleInfoModel * bottleInfoModelElement in self.bottleInfoModel){
            [dictionaryElements addObject:[bottleInfoModelElement toDictionary]];
        }
        dictionary[kBottleInfoListModelBottleInfoModel] = dictionaryElements;
    }
    if(self.msg != nil){
        dictionary[kBottleInfoListModelMsg] = self.msg;
    }
    if(self.type != nil){
        dictionary[kBottleInfoListModelType] = self.type;
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
    if(self.bottleInfoModel != nil){
        [aCoder encodeObject:self.bottleInfoModel forKey:kBottleInfoListModelBottleInfoModel];
    }
    if(self.msg != nil){
        [aCoder encodeObject:self.msg forKey:kBottleInfoListModelMsg];
    }
    if(self.type != nil){
        [aCoder encodeObject:self.type forKey:kBottleInfoListModelType];
    }
    
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    self.bottleInfoModel = [aDecoder decodeObjectForKey:kBottleInfoListModelBottleInfoModel];
    self.msg = [aDecoder decodeObjectForKey:kBottleInfoListModelMsg];
    self.type = [aDecoder decodeObjectForKey:kBottleInfoListModelType];
    return self;
    
}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
    BottleInfoListModel *copy = [BottleInfoListModel new];
    
    copy.bottleInfoModel = [self.bottleInfoModel copy];
    copy.msg = [self.msg copy];
    copy.type = [self.type copy];
    
    return copy;
}

@end
