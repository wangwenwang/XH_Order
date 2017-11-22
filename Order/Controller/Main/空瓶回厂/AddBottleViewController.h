//
//  AddBottleViewController.h
//  Order
//
//  Created by 凯东源 on 2017/11/22.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PartyModel.h"
#import "AddressModel.h"

@interface AddBottleViewController : UIViewController

// 客户信息
@property (strong, nonatomic) PartyModel *partyM;

// 客户地址
@property (strong, nonatomic) AddressModel *addressM;

@end
