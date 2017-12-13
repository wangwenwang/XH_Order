//
//  SetOidsToFactoryService.h
//  Order
//
//  Created by wenwang wang on 2017/12/13.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SetOidsToFactoryServiceDelegate <NSObject>

/// 记录入厂时间 成功
@optional
- (void)successOfSetOidsToFactory:(NSString * _Nullable)msg;

/// 记录入厂时间 失败
@optional
- (void)failureOfSetOidsToFactory:(NSString * _Nullable)msg;

@end

@interface SetOidsToFactoryService : NSObject

@property (weak, nonatomic, nullable)id <SetOidsToFactoryServiceDelegate> delegate;

- (void)SetOidsToFactory:(nullable NSString *)stridxs andAPI:(nullable NSString *)API andstrUserName:(nullable NSString *)strUserName;

@end
