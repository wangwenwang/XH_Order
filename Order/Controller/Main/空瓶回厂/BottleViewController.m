//
//  BottleViewController.m
//  Order
//
//  Created by 凯东源 on 2017/8/24.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "BottleViewController.h"
#import "BottleAddressListModel.h"
#import "SupplierViewController.h"

@interface BottleViewController ()

// 客户信息
@property (strong, nonatomic) BottleAddressListModel *customer;
@property (weak, nonatomic) IBOutlet UIView *customerInfoView;
@property (weak, nonatomic) IBOutlet UIView *customerInfoAddView;
// 客户名称
@property (weak, nonatomic) IBOutlet UILabel *customer_NAME;
// 客户地址
@property (weak, nonatomic) IBOutlet UILabel *customer_ADDRESS;
// 客户联系人
@property (weak, nonatomic) IBOutlet UILabel *customer_PERSON;
// 客户电话
@property (weak, nonatomic) IBOutlet UILabel *customer_TEL;
@property (weak, nonatomic) IBOutlet UIButton *modifyCustomerBtn;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *customerViewHeight;
@property (assign, nonatomic) CGFloat customerViewHeight_static;

// 厂商信息
@property (strong, nonatomic) BottleAddressListModel *factory;
@property (weak, nonatomic) IBOutlet UIView *factoryInfoView;
@property (weak, nonatomic) IBOutlet UIView *factoryInfoAddView;
// 供应商名称
@property (weak, nonatomic) IBOutlet UILabel *PARTY_NAME;
// 供应商地址
@property (weak, nonatomic) IBOutlet UILabel *PARTY_ADDRESS;
@property (weak, nonatomic) IBOutlet UIButton *modifyFactoryBtn;

// 承运信息
@property (strong, nonatomic) BottleAddressListModel *carrier;
@property (weak, nonatomic) IBOutlet UIView *carrierInfoView;
@property (weak, nonatomic) IBOutlet UIView *carrierInfoAddView;

@end

@implementation BottleViewController

#pragma mark - 生命周期

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"空瓶回厂";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - 手势
 
- (IBAction)customerOnclick {
    
}

// 添加厂商信息
- (IBAction)factoryOnclick {
    [self addFactory];
}

// 添加承运信息
- (IBAction)carrierOnclick {
    
}

#pragma mark - 函数

- (void)addFactory {
    SupplierViewController *vc = [[SupplierViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
