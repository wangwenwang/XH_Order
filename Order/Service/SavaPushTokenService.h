//
//  SavaPushTokenService.h
//  Order
//
//  Created by wenwang wang on 2017/12/16.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SavaPushTokenServiceDelegate <NSObject>

/// 上传Token 成功
@optional
- (void)successOfSavaPushToken:(NSString * _Nullable )msg;

/// 上传Token 失败
@optional
- (void)failureOfSavaPushToken:(NSString * _Nullable)msg;

@end

@interface SavaPushTokenService : NSObject

@property (weak, nonatomic, nullable)id <SavaPushTokenServiceDelegate> delegate;

- (void)SavaPushToken:(nullable NSString *)strUserId andstrCID:(nullable NSString *)strCID andstrToken:(nullable NSString *)strToken;

@end
