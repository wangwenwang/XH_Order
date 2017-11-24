//
//  BottleOrderListModel.m
//  Order
//
//  Created by 凯东源 on 2017/11/24.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "BottleOrderListModel.h"


NSString *const kBottleOrderListModelBottleOrderModel = @"List";


@implementation BottleOrderListModel

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if(dictionary[kBottleOrderListModelBottleOrderModel] != nil && [dictionary[kBottleOrderListModelBottleOrderModel] isKindOfClass:[NSArray class]]){
        NSArray * bottleOrderModelDictionaries = dictionary[kBottleOrderListModelBottleOrderModel];
        NSMutableArray * bottleOrderModelItems = [NSMutableArray array];
        for(NSDictionary * bottleOrderModelDictionary in bottleOrderModelDictionaries){
            BottleOrderModel * bottleOrderModelItem = [[BottleOrderModel alloc] initWithDictionary:bottleOrderModelDictionary];
            [bottleOrderModelItems addObject:bottleOrderModelItem];
        }
        self.bottleOrderModel = bottleOrderModelItems;
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    if(self.bottleOrderModel != nil){
        NSMutableArray * dictionaryElements = [NSMutableArray array];
        for(BottleOrderModel * bottleOrderModelElement in self.bottleOrderModel){
            [dictionaryElements addObject:[bottleOrderModelElement toDictionary]];
        }
        dictionary[kBottleOrderListModelBottleOrderModel] = dictionaryElements;
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
    if(self.bottleOrderModel != nil){
        [aCoder encodeObject:self.bottleOrderModel forKey:kBottleOrderListModelBottleOrderModel];
    }
    
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    self.bottleOrderModel = [aDecoder decodeObjectForKey:kBottleOrderListModelBottleOrderModel];
    return self;
    
}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
    BottleOrderListModel *copy = [BottleOrderListModel new];
    
    copy.bottleOrderModel = [self.bottleOrderModel copy];
    
    return copy;
}

@end
