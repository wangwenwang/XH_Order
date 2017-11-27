//
//  BottleInfoViewController.m
//  Order
//
//  Created by 凯东源 on 2017/11/24.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "BottleInfoViewController.h"
#import "GetReturnBottleInfoService.h"
#import <MBProgressHUD.h>
#import "Tools.h"
#import "PayBottleViewController.h"
#import "ReturnOrderCancelService.h"
#import "AppDelegate.h"

@interface BottleInfoViewController ()<GetReturnBottleInfoDelegate, ReturnOrderCancelDelegate>

@property (strong, nonatomic) BottleDetailModel *bottleDetailM;

@property (weak, nonatomic) IBOutlet UIButton *cancenOrConfirmBtn;

@property (strong, nonatomic) AppDelegate *app;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

// 客户名称
@property (weak, nonatomic) IBOutlet UILabel *ORD_FROM_NAME;
// 客户地址
@property (weak, nonatomic) IBOutlet UILabel *ORD_FROM_ADDRESS;
// 联系姓名
@property (weak, nonatomic) IBOutlet UILabel *ORD_FROM_CNAME;
// 联系电话
@property (weak, nonatomic) IBOutlet UILabel *ORD_FROM_CTEL;

// 厂家名称
@property (weak, nonatomic) IBOutlet UILabel *ORD_TO_NAME;
// 厂家地址
@property (weak, nonatomic) IBOutlet UILabel *ORD_TO_ADDRESS;

// 物流状态
@property (weak, nonatomic) IBOutlet UILabel *ORD_WORKFLOW;

@end


#define kCellHeight 82

#define kCellName @"BottleInfoTableViewCell"

@implementation BottleInfoViewController


- (instancetype)init {
    
    if(self = [super init]) {
        
        _app = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    }
    return self;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"订单详情";
    
    GetReturnBottleInfoService *service = [[GetReturnBottleInfoService alloc] init];
    service.delegate = self;
    [service GetReturnBottleInfo:_orderIDX];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - 事件

- (IBAction)commitOnclick {
    
    if([_bottleDetailM.bottleDetailInfoModel.oRDWORKFLOW isEqualToString:@"已确认"]) {
        
        [MBProgressHUD showHUDAddedTo:self.view animated:YES];
        ReturnOrderCancelService *service = [[ReturnOrderCancelService alloc] init];
        service.delegate = self;
        [service ReturnOrderCancel:_bottleDetailM.bottleDetailInfoModel.iDX andstrUserIdx:_app.user.IDX];
    } else if([_bottleDetailM.bottleDetailInfoModel.oRDWORKFLOW isEqualToString:@"已出库"]) {
        
        PayBottleViewController *vc = [[PayBottleViewController alloc] init];
        vc.orderIdx = _bottleDetailM.bottleDetailInfoModel.iDX;
        [self.navigationController pushViewController:vc animated:YES];
    }
}


#pragma mark - GetReturnBottleInfoDelegate

- (void)successOfGetReturnBottleInfo:(BottleDetailModel *)bottleDetailM {
    
    [MBProgressHUD hideHUDForView:self.view animated:YES];
    _bottleDetailM = bottleDetailM;
    
    if([_bottleDetailM.bottleDetailInfoModel.oRDWORKFLOW isEqualToString:@"已确认"]) {
        
        _cancenOrConfirmBtn.hidden = NO;
        [_cancenOrConfirmBtn setTitle:@"取消订单" forState:UIControlStateNormal];
    } else if([_bottleDetailM.bottleDetailInfoModel.oRDWORKFLOW isEqualToString:@"已出库"]) {
        
        _cancenOrConfirmBtn.hidden = NO;
        [_cancenOrConfirmBtn setTitle:@"取消订单" forState:UIControlStateNormal];
    }
}


- (void)failureOfGetReturnBottleInfo:(NSString *)msg {
    
    [MBProgressHUD hideHUDForView:self.view animated:YES];
    [Tools showAlert:self.view andTitle:@"请求失败"];
}


#pragma mark - OrderCancelDelegate

- (void)successOfReturnOrderCancel:(NSString *)msg {
    
    [MBProgressHUD hideHUDForView:self.view animated:YES];
    [Tools showAlert:self.view andTitle:msg];
}


- (void)failureOfReturnOrderCancel:(NSString *)msg {
    
    [MBProgressHUD hideHUDForView:self.view animated:YES];
    [Tools showAlert:self.view andTitle:msg];
}

@end
