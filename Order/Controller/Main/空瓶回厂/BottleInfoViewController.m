
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
#import "BottleInfoTableViewCell.h"
#import "CheckOrderPathViewController.h"
#import "CheckSignatureService.h"
#import "CheckSignatureViewController.h"

@interface BottleInfoViewController ()<GetReturnBottleInfoDelegate, ReturnOrderCancelDelegate, CheckSignatureServiceDelegate>

@property (strong, nonatomic) BottleDetailModel *bottleDetailM;

@property (weak, nonatomic) IBOutlet UIButton *cancenOrConfirmBtn;
@property (weak, nonatomic) IBOutlet UIButton *checkPathBtn;
@property (weak, nonatomic) IBOutlet UIButton *checkPictureBtn;

@property (strong, nonatomic) AppDelegate *app;

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
@property (weak, nonatomic) IBOutlet UILabel *ORD_DATE_ADD;

// 货物信息
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *goodsViewHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *scrollContentViewHeight;

@end


#define kCellHeight 44

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
    
    [self registerCell];
    
    [self initUI];
    
    GetReturnBottleInfoService *service = [[GetReturnBottleInfoService alloc] init];
    service.delegate = self;
    [service GetReturnBottleInfo:_orderIDX];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - 函数

- (void)initUI {
    
    _ORD_FROM_NAME.text = @" ";
    _ORD_FROM_ADDRESS.text = @" ";
    _ORD_FROM_CNAME.text = @" ";
    _ORD_FROM_CTEL.text = @" ";
    
    _ORD_TO_NAME.text = @" ";
    _ORD_TO_ADDRESS.text = @" ";
    
    _ORD_WORKFLOW.text = @" ";
    _ORD_DATE_ADD.text = @" ";
}


// 注册Cell
- (void)registerCell {
    
    [_tableView registerNib:[UINib nibWithNibName:kCellName bundle:nil] forCellReuseIdentifier:kCellName];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}


#pragma mark - 事件

- (IBAction)checkPath {
    
    CheckOrderPathViewController *vc = [[CheckOrderPathViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
    vc.orderIDX = _bottleDetailM.bottleDetailInfoModel.iDX;
}


- (IBAction)checkPicture {
    
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    CheckSignatureService *service = [[CheckSignatureService alloc] init] ;
    service.delegate = self;
    [service getAutographAndPictureData:_bottleDetailM.bottleDetailInfoModel.iDX];
}


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


#pragma mark - UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _bottleDetailM.bottleDetailItemModel.count;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return kCellHeight;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // 处理界面
    static NSString *cellId = kCellName;
    BottleInfoTableViewCell *cell = (BottleInfoTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    
    BottleDetailItemModel *m = _bottleDetailM.bottleDetailItemModel[indexPath.row];
    
    cell.ORD_WORKFLOW = _bottleDetailM.bottleDetailInfoModel.oRDWORKFLOW;
    cell.bottleDetailItemM = m;
    
    return cell;
}


#pragma mark - GetReturnBottleInfoDelegate

- (void)successOfGetReturnBottleInfo:(BottleDetailModel *)bottleDetailM {
    
    [MBProgressHUD hideHUDForView:self.view animated:YES];
    _bottleDetailM = bottleDetailM;
    
    _goodsViewHeight.constant = 30 + bottleDetailM.bottleDetailItemModel.count * kCellHeight;
    _scrollContentViewHeight.constant += (_goodsViewHeight.constant - 100);
    [_tableView reloadData];
    
    _ORD_FROM_NAME.text = bottleDetailM.bottleDetailInfoModel.oRDFROMNAME;
    _ORD_FROM_ADDRESS.text = bottleDetailM.bottleDetailInfoModel.oRDFROMADDRESS;
    _ORD_FROM_CNAME.text = bottleDetailM.bottleDetailInfoModel.oRDFROMCNAME;
    _ORD_FROM_CTEL.text = bottleDetailM.bottleDetailInfoModel.oRDFROMCTEL;
    
    _ORD_TO_NAME.text = bottleDetailM.bottleDetailInfoModel.oRDTONAME;
    _ORD_TO_ADDRESS.text = bottleDetailM.bottleDetailInfoModel.oRDTOADDRESS;
    
    _ORD_WORKFLOW.text = bottleDetailM.bottleDetailInfoModel.oRDWORKFLOW;
    _ORD_DATE_ADD.text = bottleDetailM.bottleDetailInfoModel.oRDDATEADD;
    
    if([_bottleDetailM.bottleDetailInfoModel.oRDWORKFLOW isEqualToString:@"已确认"]) {
        
        _cancenOrConfirmBtn.hidden = NO;
        [_cancenOrConfirmBtn setTitle:@"取消订单" forState:UIControlStateNormal];
    } else if([_bottleDetailM.bottleDetailInfoModel.oRDWORKFLOW isEqualToString:@"已出库"]) {
        
        _cancenOrConfirmBtn.hidden = NO;
        [_cancenOrConfirmBtn setTitle:@"确认订单" forState:UIControlStateNormal];
        _checkPathBtn.hidden = NO;
        _checkPictureBtn.hidden = NO;
    } else if([_bottleDetailM.bottleDetailInfoModel.oRDWORKFLOW isEqualToString:@"已交付"]) {
        
        _checkPathBtn.hidden = NO;
        _checkPictureBtn.hidden = NO;
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


#pragma mark - CheckSignatureServiceDelegate 查看图片

- (void)successOfCheckSignature:(NSMutableArray *)signatures {
    
    [MBProgressHUD hideHUDForView:self.view animated:YES];
    
    CheckSignatureViewController *vc = [[CheckSignatureViewController alloc] init];
    vc.signatures = signatures;
    
    [self.navigationController pushViewController:vc animated:YES];
    
}


- (void)failureOfCheckSignature:(NSString *)msg {
    
    [MBProgressHUD hideHUDForView:self.view animated:YES];
    [Tools showAlert:self.view andTitle:msg ? msg : @"获取签名失败"];
}

@end
