//
//  PlateListModel.m
//  Order
//
//  Created by 凯东源 on 2017/12/2.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "PlateListModel.h"


NSString *const kPlateListModelPlateNumberModel = @"result";
NSString *const kPlateListModelMsg = @"msg";
NSString *const kPlateListModelType = @"type";


@implementation PlateListModel

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if(dictionary[kPlateListModelPlateNumberModel] != nil && [dictionary[kPlateListModelPlateNumberModel] isKindOfClass:[NSArray class]]){
        NSArray * plateNumberModelDictionaries = dictionary[kPlateListModelPlateNumberModel];
        NSMutableArray * plateNumberModelItems = [NSMutableArray array];
        for(NSDictionary * plateNumberModelDictionary in plateNumberModelDictionaries){
            PlateNumberModel * plateNumberModelItem = [[PlateNumberModel alloc] initWithDictionary:plateNumberModelDictionary];
            [plateNumberModelItems addObject:plateNumberModelItem];
        }
        self.plateNumberModel = plateNumberModelItems;
    }
    if(![dictionary[kPlateListModelMsg] isKindOfClass:[NSNull class]]){
        self.msg = dictionary[kPlateListModelMsg];
    }
    if(![dictionary[kPlateListModelType] isKindOfClass:[NSNull class]]){
        self.type = dictionary[kPlateListModelType];
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    if(self.plateNumberModel != nil){
        NSMutableArray * dictionaryElements = [NSMutableArray array];
        for(PlateNumberModel * plateNumberModelElement in self.plateNumberModel){
            [dictionaryElements addObject:[plateNumberModelElement toDictionary]];
        }
        dictionary[kPlateListModelPlateNumberModel] = dictionaryElements;
    }
    if(self.msg != nil){
        dictionary[kPlateListModelMsg] = self.msg;
    }
    if(self.type != nil){
        dictionary[kPlateListModelType] = self.type;
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
    if(self.plateNumberModel != nil){
        [aCoder encodeObject:self.plateNumberModel forKey:kPlateListModelPlateNumberModel];
    }
    if(self.msg != nil){
        [aCoder encodeObject:self.msg forKey:kPlateListModelMsg];
    }
    if(self.type != nil){
        [aCoder encodeObject:self.type forKey:kPlateListModelType];
    }
    
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    self.plateNumberModel = [aDecoder decodeObjectForKey:kPlateListModelPlateNumberModel];
    self.msg = [aDecoder decodeObjectForKey:kPlateListModelMsg];
    self.type = [aDecoder decodeObjectForKey:kPlateListModelType];
    return self;
    
}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
    PlateListModel *copy = [PlateListModel new];
    
    copy.plateNumberModel = [self.plateNumberModel copy];
    copy.msg = [self.msg copy];
    copy.type = [self.type copy];
    
    return copy;
}

@end
