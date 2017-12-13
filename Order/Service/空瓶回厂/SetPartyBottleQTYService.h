//
//  SetPartyBottleQTYService.h
//  Order
//
//  Created by 凯东源 on 2017/12/13.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SetPartyBottleQTYServiceDelegate <NSObject>

/// 工厂确认回瓶单数量 成功
@optional
- (void)successOfSetPartyBottleQTY:(NSString * _Nullable )msg;

/// 工厂确认回瓶单数量 失败
@optional
- (void)failureOfSetPartyBottleQTY:(NSString * _Nullable)msg;

@end

@interface SetPartyBottleQTYService : NSObject

@property (weak, nonatomic, nullable)id <SetPartyBottleQTYServiceDelegate> delegate;

- (void)SetPartyBottleQTY:(nullable NSString *)strIdx andStrQty:(nullable NSString *)StrQty;

@end
