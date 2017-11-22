//
//  GetReturnProductListService.h
//  Order
//
//  Created by 凯东源 on 2017/11/22.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BottleInfoListModel.h"

@protocol GetReturnProductListDelegate <NSObject>

/// 获取瓶子信息 成功
@optional
- (void)successOfGetReturnProductList:(BottleInfoListModel * _Nullable )bottleInfoListM;

/// 获取瓶子信息 没有数据
@optional
- (void)successOfGetReturnProductList_NoData;

/// 获取瓶子信息 失败
@optional
- (void)failureOfGetReturnProductList:(NSString * _Nullable)msg;

@end

@interface GetReturnProductListService : NSObject

@property (weak, nonatomic, nullable)id <GetReturnProductListDelegate> delegate;

- (void)GetReturnProductList:(nullable NSString *)strBusinessId;

@end
