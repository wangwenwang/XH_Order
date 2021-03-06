
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
#import "CheckSignatureViewController.h"
#import "LM_alert.h"
#import "SetPartyBottleQTYService.h"
#import "OrderJiaoWorkflowService.h"

@interface BottleInfoViewController ()<GetReturnBottleInfoDelegate, ReturnOrderCancelDelegate, SetPartyBottleQTYServiceDelegate, OrderJiaoWorkflowServiceDelegate>

@property (strong, nonatomic) BottleDetailModel *bottleDetailM;

@property (weak, nonatomic) IBOutlet UIButton *cancelOrConfirmBtn;
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
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *customerInfoViewHeight;

// 厂家名称
@property (weak, nonatomic) IBOutlet UILabel *ORD_TO_NAME;
// 厂家地址
@property (weak, nonatomic) IBOutlet UILabel *ORD_TO_ADDRESS;
// 供应商联系人
@property (weak, nonatomic) IBOutlet UILabel *ORD_TO_CNAME;
// 供应商联系方式
@property (weak, nonatomic) IBOutlet UILabel *ORD_TO_CTEL;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *factoryInfoViewHeight;

// 物流状态
@property (weak, nonatomic) IBOutlet UILabel *ORD_WORKFLOW;
@property (weak, nonatomic) IBOutlet UILabel *ORD_DATE_ADD;

// 货物信息
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *goodsViewHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *scrollContentViewHeight;

// 承运信息
@property (weak, nonatomic) IBOutlet UILabel *TMS_PLATE_NUMBER;
@property (weak, nonatomic) IBOutlet UILabel *TMS_VEHICLE_TYPE;
@property (weak, nonatomic) IBOutlet UILabel *TMS_DRIVER_NAME;
@property (weak, nonatomic) IBOutlet UILabel *TMS_DRIVER_TEL;
@property (weak, nonatomic) IBOutlet UILabel *TMS_FLEET_NAME;

// 修改数量成功次数
@property (assign, nonatomic) NSUInteger requestSuccessCount;

@end


#define kCellHeight 104

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
    [MBProgressHUD showHUDAddedTo:_app.window animated:YES];
    [service GetReturnBottleInfo:_orderIDX];
}


- (void)updateViewConstraints {
    
    [super updateViewConstraints];
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
    _ORD_TO_CNAME.text = @" ";
    _ORD_TO_CTEL.text = @" ";
    
    _ORD_WORKFLOW.text = @" ";
    _ORD_DATE_ADD.text = @" ";
    
    _TMS_PLATE_NUMBER.text = @" ";
    _TMS_VEHICLE_TYPE.text = @" ";
    _TMS_DRIVER_NAME.text = @" ";
    _TMS_DRIVER_TEL.text = @" ";
    _TMS_FLEET_NAME.text = @" ";
}


// 注册Cell
- (void)registerCell {
    
    [_tableView registerNib:[UINib nibWithNibName:kCellName bundle:nil] forCellReuseIdentifier:kCellName];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}


#pragma mark - 事件

- (IBAction)commitOnclick {
    
    if([_bottleDetailM.bottleDetailInfoModel.oRDWORKFLOW isEqualToString:@"已确认"]) {
        
        [LM_alert showLMAlertViewWithTitle:@"" message:@"是否取消订单" cancleButtonTitle:@"否" okButtonTitle:@"是" okClickHandle:^{
            
            [MBProgressHUD showHUDAddedTo:_app.window animated:YES];
            ReturnOrderCancelService *service = [[ReturnOrderCancelService alloc] init];
            service.delegate = self;
            [service ReturnOrderCancel:_bottleDetailM.bottleDetailInfoModel.iDX andstrUserIdx:_app.user.IDX];
        } cancelClickHandle:nil];
    } else if([_bottleDetailM.bottleDetailInfoModel.oRDWORKFLOW isEqualToString:@"已出库"]) {
        
        [MBProgressHUD showHUDAddedTo:_app.window animated:YES];
        SetPartyBottleQTYService *service = [[SetPartyBottleQTYService alloc] init];
        service.delegate = self;
        for (BottleDetailItemModel *item in _bottleDetailM.bottleDetailItemModel) {
            
            CGFloat QTY_MISSING = [item.iSSUEQTY floatValue] - [item.qTYDELIVERY floatValue] - [item.qTYREJECT floatValue];
            [service SetPartyBottleQTY:item.iDX andQTY_DELIVERY:item.qTYDELIVERY andQTY_REJECT:item.qTYREJECT andQTY_MISSING:QTY_MISSING];
        }
    } else if([_bottleDetailM.bottleDetailInfoModel.oRDWORKFLOW isEqualToString:@"已交付"]) {
        
        CheckOrderPathViewController *vc = [[CheckOrderPathViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
        vc.orderIDX = _bottleDetailM.bottleDetailInfoModel.iDX;
    }
}


#pragma mark - UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _bottleDetailM.bottleDetailItemModel.count;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    BottleDetailItemModel *m = _bottleDetailM.bottleDetailItemModel[indexPath.row];
    return m.cellHeight;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // 处理界面
    static NSString *cellId = kCellName;
    BottleInfoTableViewCell *cell = (BottleInfoTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    
    BottleDetailItemModel *m = _bottleDetailM.bottleDetailItemModel[indexPath.row];
    cell.USER_TYPE = _app.user.USER_TYPE;
    cell.ORD_WORKFLOW = _bottleDetailM.bottleDetailInfoModel.oRDWORKFLOW;
    cell.bottleDetailItemM = m;
    
    return cell;
}


#pragma mark - GetReturnBottleInfoDelegate

- (void)successOfGetReturnBottleInfo:(BottleDetailModel *)bottleDetailM {
    
    [MBProgressHUD hideHUDForView:_app.window animated:YES];
    _bottleDetailM = bottleDetailM;
    
    // Cell 高度
    CGFloat tableViewHeight = 0;
    for (BottleDetailItemModel *m in _bottleDetailM.bottleDetailItemModel) {
        
        CGFloat oneLine = [Tools getHeightOfString:@"fds" fontSize:15 andWidth:MAXFLOAT];
        CGFloat mulLine = [Tools getHeightOfString:m.pRODUCTNAME fontSize:15 andWidth:(ScreenWidth - 8 - 69.5 - 3)];
        m.cellHeight = kCellHeight + (mulLine - oneLine);
        tableViewHeight += m.cellHeight;
    }
    
    // 货物信息
    _goodsViewHeight.constant = 30 + tableViewHeight;
    _scrollContentViewHeight.constant += (_goodsViewHeight.constant - 100);
    [_tableView reloadData];
    
    // 客户信息
    _ORD_FROM_NAME.text = bottleDetailM.bottleDetailInfoModel.oRDFROMNAME;
    _ORD_FROM_ADDRESS.text = bottleDetailM.bottleDetailInfoModel.oRDFROMADDRESS;
    _ORD_FROM_CNAME.text = bottleDetailM.bottleDetailInfoModel.oRDFROMCNAME;
    _ORD_FROM_CTEL.text = bottleDetailM.bottleDetailInfoModel.oRDFROMCTEL;
    
    // 厂家信息
    _ORD_TO_NAME.text = bottleDetailM.bottleDetailInfoModel.oRDTONAME;
    _ORD_TO_ADDRESS.text = bottleDetailM.bottleDetailInfoModel.oRDTOADDRESS;
    _ORD_TO_CNAME.text = bottleDetailM.bottleDetailInfoModel.oRDTOCNAME;
    _ORD_TO_CTEL.text = bottleDetailM.bottleDetailInfoModel.oRDTOCTEL;
    
    // 物流信息
    _ORD_WORKFLOW.text = bottleDetailM.bottleDetailInfoModel.oRDWORKFLOW;
    _ORD_DATE_ADD.text = bottleDetailM.bottleDetailInfoModel.oRDDATEADD;
    
    // 承运信息
    _TMS_PLATE_NUMBER.text = bottleDetailM.bottleDetailInfoModel.tMSPLATENUMBER;
    _TMS_VEHICLE_TYPE.text = bottleDetailM.bottleDetailInfoModel.tMSVEHICLETYPE;
    _TMS_DRIVER_NAME.text = bottleDetailM.bottleDetailInfoModel.tMSDRIVERNAME;
    _TMS_DRIVER_TEL.text = bottleDetailM.bottleDetailInfoModel.tMSDRIVERTEL;
    _TMS_FLEET_NAME.text = bottleDetailM.bottleDetailInfoModel.tMSFLEETNAME;
    
    // 客户地址换行
    CGFloat oneLine = [Tools getHeightOfString:@"fds" fontSize:15 andWidth:MAXFLOAT];
    CGFloat mulLine = [Tools getHeightOfString:_ORD_FROM_NAME.text fontSize:15 andWidth:(ScreenWidth - 8 - 46 + 2 - 3)];
    _customerInfoViewHeight.constant += (mulLine - oneLine);
    _scrollContentViewHeight.constant += (mulLine - oneLine);
    
    // 客户名称换行
    mulLine = [Tools getHeightOfString:_ORD_FROM_ADDRESS.text fontSize:15 andWidth:(ScreenWidth - 8 - 46 + 2 - 3)];
    _customerInfoViewHeight.constant += (mulLine - oneLine);
    _scrollContentViewHeight.constant += (mulLine - oneLine);
    
    // 厂家名称换行
    mulLine = [Tools getHeightOfString:_ORD_TO_NAME.text fontSize:15 andWidth:(ScreenWidth - 8 - 46 + 2 - 3)];
    _factoryInfoViewHeight.constant += (mulLine - oneLine);
    _scrollContentViewHeight.constant += (mulLine - oneLine);
    
    // 厂家地址换行
    mulLine = [Tools getHeightOfString:_ORD_TO_ADDRESS.text fontSize:15 andWidth:(ScreenWidth - 8 - 46 + 2 - 3)];
    _factoryInfoViewHeight.constant += (mulLine - oneLine);
    _scrollContentViewHeight.constant += (mulLine - oneLine);
    
    if([_bottleDetailM.bottleDetailInfoModel.oRDWORKFLOW isEqualToString:@"已确认"]) {
    
        if([Tools PARTY]) {
            _cancelOrConfirmBtn.hidden = NO;
            [_cancelOrConfirmBtn setTitle:@"取消订单" forState:UIControlStateNormal];
        }
    } else if([_bottleDetailM.bottleDetailInfoModel.oRDWORKFLOW isEqualToString:@"已出库"]) {
        
        if([Tools FACTORY]) {
            
            _cancelOrConfirmBtn.hidden = NO;
            [_cancelOrConfirmBtn setTitle:@"确认订单" forState:UIControlStateNormal];
        }
    } else if([_bottleDetailM.bottleDetailInfoModel.oRDWORKFLOW isEqualToString:@"已交付"]) {
        
        [_cancelOrConfirmBtn setTitle:@"查看轨迹" forState:UIControlStateNormal];
    } else {
        
        _cancelOrConfirmBtn.hidden = YES;
    }
}


- (void)failureOfGetReturnBottleInfo:(NSString *)msg {
    
    [MBProgressHUD hideHUDForView:_app.window animated:YES];
    [Tools showAlert:_app.window andTitle:@"请求失败"];
}


#pragma mark - OrderCancelDelegate

- (void)successOfReturnOrderCancel:(NSString *)msg {
    
    [MBProgressHUD hideHUDForView:_app.window animated:YES];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:kBottleListViewController_receiveMsg object:nil userInfo:@{@"msg":msg}];
    [self.navigationController popViewControllerAnimated:YES];
}


- (void)failureOfReturnOrderCancel:(NSString *)msg {
    
    [MBProgressHUD hideHUDForView:_app.window animated:YES];
    [Tools showAlert:_app.window andTitle:msg];
}


#pragma mark - SetPartyBottleQTYServiceDelegate

- (void)successOfSetPartyBottleQTY:(NSString *)msg {
    
    _requestSuccessCount ++;
    if(_requestSuccessCount == _bottleDetailM.bottleDetailItemModel.count) {
        
        OrderJiaoWorkflowService *service =  [[OrderJiaoWorkflowService alloc] init];
        service.delegate = self;
        [service OrderJiaoWorkflow:_orderIDX andADUT_USER:_app.user.USER_NAME];
    }
}


- (void)failureOfSetPartyBottleQTY:(NSString *)msg {
    
    [MBProgressHUD hideHUDForView:_app.window animated:YES];
    [Tools showAlert:_app.window andTitle:msg];
}


#pragma mark - OrderJiaoWorkflowServiceDelegate

- (void)successOfOrderJiaoWorkflow:(NSString *)msg {
    
    [MBProgressHUD hideHUDForView:_app.window animated:YES];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:kBottleListViewController_receiveMsg object:nil userInfo:@{@"msg":msg}];
    [self.navigationController popViewControllerAnimated:YES];
}


- (void)failureOfOrderJiaoWorkflow:(NSString *)msg {
    
    [MBProgressHUD hideHUDForView:_app.window animated:YES];
    [Tools showAlert:_app.window andTitle:msg];
}

@end
