//
//  SupplierViewController.m
//  Order
//
//  Created by wenwang wang on 2017/11/22.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "SupplierViewController.h"
#import <MBProgressHUD.h>
#import "GetReturnPartyListService.h"
#import "AppDelegate.h"
#include "SupplierTableViewCell.h"

@interface SupplierViewController ()<GetReturnPartyListDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) AppDelegate *app;

@end

#define kCellHeight 95

#define kCellName @"SupplierTableViewCell"

@implementation SupplierViewController

- (instancetype)init {
    
    if(self = [super init]) {
        
        _app = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"选择厂商";
    
    [self registerCell];
    
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    GetReturnPartyListService *service = [[GetReturnPartyListService alloc] init];
    service.delegate = self;
    [service GetReturnPartyList:_app.user.IDX andstrType:@"Supplier"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - 功能函数

- (void)registerCell {
    
    [_tableView registerNib:[UINib nibWithNibName:kCellName bundle:nil] forCellReuseIdentifier:kCellName];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}


#pragma mark - GetReturnPartyListDelegate

- (void)successOfGetReturnPartyList:(BottleAddressListModel *)bottleAddressListM {
    
    [MBProgressHUD hideHUDForView:self.view animated:YES];
}


- (void)successOfGetReturnPartyList_NoData {
    
    [MBProgressHUD hideHUDForView:self.view animated:YES];
}


- (void)failureOfGetReturnPartyList:(NSString *)msg {
    
    [MBProgressHUD hideHUDForView:self.view animated:YES];
}

@end
