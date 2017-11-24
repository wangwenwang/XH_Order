//
//  ReturnOrderCancelService.h
//  Order
//
//  Created by 凯东源 on 2017/11/24.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ReturnOrderCancelDelegate <NSObject>

/// 取消回瓶单 成功
@optional
- (void)successOfReturnOrderCancel:(NSString * _Nullable)msg;

/// 取消回瓶单 失败
@optional
- (void)failureOfReturnOrderCancel:(NSString * _Nullable)msg;

@end

@interface ReturnOrderCancelService : NSObject

@property (weak, nonatomic, nullable)id <ReturnOrderCancelDelegate> delegate;

- (void)ReturnOrderCancel:(nullable NSString *)strOrderIdx andstrUserIdx:(nullable NSString *)strUserIdx;

@end
