//
//  DriverOrderImageService.h
//  Order
//
//  Created by 凯东源 on 2017/11/24.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <Foundation/Foundation.h>

/// 交付订单 回调协议
@protocol DriverOrderImageDelegate <NSObject>

/// 交付订单成功
@optional
- (void)successOfDriverPay;

/// 交付订单失败
@optional
- (void)failureOfDriverPay:(NSString *)msg;

@end

@interface DriverOrderImageService : NSObject

@property (nonatomic, weak) id<DriverOrderImageDelegate> delegate;

- (void)DriverPay:(NSString *)OrderId andPictureFile1:(NSString *)PictureFile1 andPictureFile2:(NSString *)PictureFile2 andAutographFile:(NSString *)AutographFile;

@end
