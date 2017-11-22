//
//  ImportToOrderListService.h
//  Order
//
//  Created by 凯东源 on 2017/11/22.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ImportToOrderListDelegate <NSObject>

/// 下单回瓶 成功
@optional
- (void)successOfImportToOrderList:(NSString * _Nullable)msg;

/// 下单回瓶 失败
@optional
- (void)failureOfImportToOrderList:(NSString * _Nullable)msg;

@end

@interface ImportToOrderListService : NSObject

@property (weak, nonatomic, nullable)id <ImportToOrderListDelegate> delegate;

- (void)ImportToOrderList:(nullable NSString *)strOrderInfo;

@end
