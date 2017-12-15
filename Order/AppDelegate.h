//
//  AppDelegate.h
//  Order
//
//  Created by 凯东源 on 16/9/26.
//  Copyright © 2016年 凯东源. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserModel.h"
#import "BusinessModel.h"
#import <GTSDK/GeTuiSdk.h>

#define kGtAppId @"taIKzBvN4W8lV7w2EOa4w3"
#define kGtAppKey @"fsambVKLAG8Y1L44ewdUR7"
#define kGtAppSecret @"CoqTYyK66jAD0U9Vrmg9H7"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UserModel *user;

@property (strong, nonatomic) BusinessModel *business;

@property (assign, nonatomic) int lastPayloadIndex;

// 上传token, cid
@property (copy, nonatomic) NSString *token;

@property (copy, nonatomic) NSString *cid;

@end

