//
//  GetReturnPartyListService.h
//  Order
//
//  Created by 凯东源 on 2017/11/21.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BottleAddressListModel.h"

@protocol GetReturnPartyListDelegate <NSObject>

/// 厂商列表 成功
@optional
- (void)successOfGetReturnPartyList:(BottleAddressListModel * _Nullable )bottleAddressListM;

/// 厂商列表 没有数据
@optional
- (void)successOfGetReturnPartyList_NoData;

/// 厂商列表 失败
@optional
- (void)failureOfGetReturnPartyList:(NSString * _Nullable)msg;

@end

@interface GetReturnPartyListService : NSObject

@property (weak, nonatomic, nullable)id <GetReturnPartyListDelegate> delegate;

- (void)GetReturnPartyList:(nullable NSString *)strUserId andstrType:(nullable NSString *)strType;

@end
