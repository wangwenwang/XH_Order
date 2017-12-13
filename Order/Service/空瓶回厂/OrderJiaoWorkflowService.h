//
//  OrderJiaoWorkflowService.h
//  Order
//
//  Created by 凯东源 on 2017/12/13.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol OrderJiaoWorkflowServiceDelegate <NSObject>

/// 工厂交付回瓶单 成功
@optional
- (void)successOfOrderJiaoWorkflow:(NSString * _Nullable )msg;

/// 工厂交付回瓶单 失败
@optional
- (void)failureOfOrderJiaoWorkflow:(NSString * _Nullable)msg;

@end

@interface OrderJiaoWorkflowService : NSObject

@property (weak, nonatomic, nullable)id <OrderJiaoWorkflowServiceDelegate> delegate;

- (void)OrderJiaoWorkflow:(nullable NSString *)stridx andADUT_USER:(nullable NSString *)ADUT_USER;

@end
