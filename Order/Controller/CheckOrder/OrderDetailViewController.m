//
//  OrderDetailViewController.m
//  Order
//
//  Created by 凯东源 on 16/9/30.
//  Copyright © 2016年 凯东源. All rights reserved.
//

#import "OrderDetailViewController.h"
#import "Tools.h"
#import "OrderDetailTableViewCell.h"
#import "TransportInformationViewController.h"
#import "TransportInformationService.h"
#import <MBProgressHUD.h>
#import "OrderCancelService.h"
#import "AppDelegate.h"
#import "LM_alert.h"

@interface OrderDetailViewController ()<UITableViewDelegate, UITableViewDataSource, TransportInformationServiceDelegate, OrderCancelServiceDelegate>


@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;

// 订单编号
@property (weak, nonatomic) IBOutlet UILabel *orderNoLabel;
// 创建时间
@property (weak, nonatomic) IBOutlet UILabel *createTimeLabel;
// 客户名称
@property (weak, nonatomic) IBOutlet UILabel *customerNameLabel;
// 客户地址
@property (weak, nonatomic) IBOutlet UILabel *customerAddressLabel;
// 起始地址
@property (weak, nonatomic) IBOutlet UILabel *beginAddressLabel;
// 数量
@property (weak, nonatomic) IBOutlet UILabel *orderNumberLabel;
// 总重
@property (weak, nonatomic) IBOutlet UILabel *orderTotalWeigthLabel;
// 体积
@property (weak, nonatomic) IBOutlet UILabel *orderVolumeLabel;
// 订单流程
@property (weak, nonatomic) IBOutlet UILabel *orderProcessLabel;
// 订单状态
@property (weak, nonatomic) IBOutlet UILabel *orderStatusLabel;
// 付款方式
@property (weak, nonatomic) IBOutlet UILabel *payMethodLabel;
// 订单信息高度
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *orderInfoViewHeight;

// 货物信息
@property (strong, nonatomic) NSMutableArray *arrGoods;
// 货物信息
@property (weak, nonatomic) IBOutlet UITableView *orderTableView;
// 货物信息高度
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *orderNrViewHeight;

// 赠品
@property (strong, nonatomic) NSMutableArray *arrGitfs;
// 提示无赠品
@property (weak, nonatomic) IBOutlet UILabel *giftsPromptLabel;
// 赠品信息
@property (weak, nonatomic) IBOutlet UITableView *giftTableView;
// 赠品信息高度
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *orderGfViewHeight;

// 现价
@property (weak, nonatomic) IBOutlet UILabel *nowPriceLabel;
// 满减
@property (weak, nonatomic) IBOutlet UILabel *OnSaleLabel;
// 付款价
@property (weak, nonatomic) IBOutlet UILabel *payPriceLabel;
// 备注信息
@property (weak, nonatomic) IBOutlet UILabel *reMarkLabel;
// 尾部View高度
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tailViewHeight;

// 时间节点
@property (weak, nonatomic) IBOutlet UIView *timePointView;
// 时间节点信息
@property (weak, nonatomic) IBOutlet UIView *timePointInfoView;
// 时间节点下拉提示
@property (weak, nonatomic) IBOutlet UIButton *timePointPromptBtn;
// 时间节点高度
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *timePointViewHeight;
// 时间节点提示高度
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *timePointPromptViewHeight;


// 查看物流信息
@property (weak, nonatomic) IBOutlet UIView *bottomView;
// 查看物流信息按钮
@property (weak, nonatomic) IBOutlet UIButton *tailBtn;

// ContentView高度
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *scrollContentViewHeight;

// 获取物流信息
@property (strong, nonatomic) TransportInformationService *transortService;
// 获取订单详情
@property (strong, nonatomic) OrderCancelService *service;
// 全局变量
@property (strong, nonatomic) AppDelegate *app;

@end


#define kCellHeight 100.0

@implementation OrderDetailViewController

#pragma mark - 生命周期

- (instancetype)init {
    
    if(self = [super init]) {
        
        _arrGoods = [[NSMutableArray alloc] init];
        _arrGitfs = [[NSMutableArray alloc] init];
        _transortService = [[TransportInformationService alloc] init];
        _transortService.delegate = self;
        _service = [[OrderCancelService alloc] init];
        _service.delegate = self;
        _app = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    }
    return self;
}


- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"订单详情";
    
//    _order.ORD_TO_NAME = @"dsfsdfsafsafsdfsdafsdafsdfhsdalfisjkfskda;lfjs;adjfkl;sjfl;skadjfkl;sdajjfklsjfkl;sdjfkl;sjflk;jsflk;sjdfklsjdflkjsdlfk;jsafl;kjsdalk;fjf";
//
//    _order.ORD_TO_ADDRESS = @"dsfsdfsafsafsdfsdafsdafsdfhsdalfisjkfskda;lfjs;adjfkl;sjfl;skfskda;lfjs;adjfkl;sjfl;skadjfkl;sdajjfklsjfkl;sdjfkl;sjflk;jsflk;sjdfklsjdflkjsdlfk;jsafl;kjsdalk;fadjfkl;sdajf";
//
//    _order.ORD_FROM_NAME = @"dsfsdfsafsafsdfsdafsdafsdfhsdalfisjkfskda;lfjs;adjfkl;sjfl;skfskda;lfjs;adjfkl;sjfl;skadjfkl;sdajjfklsjfkl;sdjfkl;sjflk;jsflk;sjdfklsjdflkjsdlfk;jsafl;kjsdalk;fadjfkl;sdajf";
    
//    _order.ORD_REMARK_CONSIGNEE = @"dsfsdfsafsafsdfsdafsdafsdfhsdalfisjkfskda;lfjs;adjfkl;sjfl;skfskda;lfjs;adjfkl;sjfl;skadjfkl;sdajjfklsjfkl;sdjfkl;sjflk;jsflk;sjdfklsjdflkjsdlfk;jsafl;kjsdalk;fadjfkl;sdajf";
    
    [self initUI];
    
    [self fullData];
    
    [self dealWithData];
    
    [self registerCell];
}


- (void)updateViewConstraints {
    
    [super updateViewConstraints];
    
    // 总高度
    _scrollContentViewHeight.constant = _orderInfoViewHeight.constant + _orderNrViewHeight.constant + _orderGfViewHeight.constant + _tailViewHeight.constant + _timePointViewHeight.constant;
}


#pragma mark - 功能函数

// 初始化UI
- (void)initUI {
    
//    if([_order.ORD_STATE isEqualToString:@"PENDING"] == YES) {
//        
//        [_tailBtn setTitle:@"取消订单" forState:UIControlStateNormal];
//    } else {
    
        [_tailBtn setTitle:@"查看物流信息" forState:UIControlStateNormal];
//    }
    
    [_timePointPromptBtn setImage:[UIImage imageNamed:@"recyclingView"] forState:UIControlStateSelected];
    _timePointViewHeight.constant = _timePointPromptViewHeight.constant;
    [_timePointInfoView setHidden:YES];
    
}


// 处理数据
- (void)dealWithData {
    
    // 分类，正常产品、赠品
    for(int i = 0; i < _order.OrderDetails.count; i++) {
        
        OrderDetailModel *m = _order.OrderDetails[i];
        
        if([m.PRODUCT_TYPE isEqualToString:@"NR"]) {
            
            [_arrGoods addObject:m];
        } else if([m.PRODUCT_TYPE isEqualToString:@"GF"]) {
            
            [_arrGitfs addObject:m];
        }
    }
    
    // Cell高度
    for(int i = 0; i < _order.OrderDetails.count; i++) {
        
        OrderDetailModel *m = _order.OrderDetails[i];
        
        CGFloat contentWidth = ScreenWidth - 4 - 6 - 60 - 60 - 2 - 3 - 4;
        
        // Label 单行高度
        CGFloat oneLineHeight = [Tools getHeightOfString:@"fds" fontSize:13 andWidth:999.9];
        
        CGFloat overflowHeight = [Tools getHeightOfString:m.PRODUCT_NAME fontSize:13 andWidth:contentWidth] - oneLineHeight;
        
        if(overflowHeight > 0) {
            
            m.cellHeight = kCellHeight + overflowHeight;
        } else {
            
            m.cellHeight = kCellHeight;
        }
    }
    
    // 客户名称换行
    CGFloat oneLine = [Tools getHeightOfString:@"fds" fontSize:_customerNameLabel.font.pointSize andWidth:MAXFLOAT];
    CGFloat mulLine = [Tools getHeightOfString:_customerNameLabel.text fontSize:_customerNameLabel.font.pointSize andWidth:(ScreenWidth - 10 - 66.5 - 3)];
    mulLine = mulLine ? mulLine : oneLine;
    _orderInfoViewHeight.constant += (mulLine - oneLine);
    
    // 客户地址换行
    mulLine = [Tools getHeightOfString:_customerAddressLabel.text fontSize:_customerAddressLabel.font.pointSize andWidth:(ScreenWidth - 10 - 66.5 - 3)];
    mulLine = mulLine ? mulLine : oneLine;
    _orderInfoViewHeight.constant += (mulLine - oneLine);
    
    // 起始地址换行
    mulLine = [Tools getHeightOfString:_beginAddressLabel.text fontSize:_beginAddressLabel.font.pointSize andWidth:(ScreenWidth - 10 - 66.5 - 3)];
    mulLine = mulLine ? mulLine : oneLine;
    _orderInfoViewHeight.constant += (mulLine - oneLine);
    
    // 产品高度
    CGFloat tableViewHeight = 0;
    for (OrderDetailModel *m in _arrGoods) {
        
        tableViewHeight += m.cellHeight;
    }
    _orderNrViewHeight.constant = tableViewHeight + 30;
    
    // 赠品高度
    tableViewHeight = 0;
    if(_arrGitfs.count > 0) {
        
        for (OrderDetailModel *m in _arrGitfs) {
            
            tableViewHeight += m.cellHeight;
        }
        _giftTableView.hidden = NO;
        _giftsPromptLabel.hidden = YES;
        _orderGfViewHeight.constant = 30 + tableViewHeight;
    } else {
        
        // 如果没有赠品,提示无赠品
        _giftTableView.hidden = YES;
        _giftsPromptLabel.hidden = NO;
        _orderGfViewHeight.constant = 30 + 50;
    }
    
    // 汇总信息高度
    mulLine = [Tools getHeightOfString:_reMarkLabel.text fontSize:_reMarkLabel.font.pointSize andWidth:(ScreenWidth - 10 - 65 - 3)];
    mulLine = mulLine ? mulLine : oneLine;
    _tailViewHeight.constant += (mulLine - oneLine);
    
    [self updateViewConstraints];
}


// 填充数据
- (void)fullData {
    _orderNoLabel.text = _order.ORD_NO;
    _createTimeLabel.text = _order.ORD_DATE_ADD;
    _customerNameLabel.text = _order.ORD_TO_NAME;
    _customerAddressLabel.text = _order.ORD_TO_ADDRESS;
    _beginAddressLabel.text = _order.ORD_FROM_NAME;
    _orderNumberLabel.text = [NSString stringWithFormat:@"%.1f箱", _order.ORD_QTY];
    _orderTotalWeigthLabel.text = [NSString stringWithFormat:@"%@吨", _order.ORD_WEIGHT];
    _orderVolumeLabel.text = [NSString stringWithFormat:@"%@m³", _order.ORD_VOLUME];
    _orderProcessLabel.text = _order.ORD_WORKFLOW;
    _orderStatusLabel.text = [Tools getOrderStatus:_order.ORD_STATE];
    _payMethodLabel.text = [Tools getPaymentType:_order.PAYMENT_TYPE];
    _nowPriceLabel.text = [NSString stringWithFormat:@"￥%.1f", _order.ACT_PRICE];
    
    if(_order.MJ_REMARK == nil || [_order.MJ_REMARK isEqualToString:@""] || [_order.MJ_REMARK isEqualToString:@"+|+"]) {
        _OnSaleLabel.text = @"无";
        _payPriceLabel.text = [NSString stringWithFormat:@"￥%.1f", _order.ACT_PRICE];
    }else {
        _OnSaleLabel.text = [NSString stringWithFormat:@"满减总计 - ￥%.f", _order.MJ_PRICE];
        _payPriceLabel.text = [NSString stringWithFormat:@"￥%.f", _order.ACT_PRICE - _order.MJ_PRICE];
    }
    
    _reMarkLabel.text = [_order.ORD_REMARK_CONSIGNEE isEqualToString:@""] ? @"无" : _order.ORD_REMARK_CONSIGNEE;
}


// 注册Cell
- (void)registerCell {
    
    [_orderTableView registerNib:[UINib nibWithNibName:@"OrderDetailTableViewCell" bundle:nil] forCellReuseIdentifier:@"OrderDetailTableViewCell"];
    _orderTableView.separatorStyle = NO;
    
    [_giftTableView registerNib:[UINib nibWithNibName:@"OrderDetailTableViewCell" bundle:nil] forCellReuseIdentifier:@"OrderDetailTableViewCell"];
    _giftTableView.separatorStyle = NO;
}


#pragma mark - UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if(tableView.tag == 1001) {
        
        return _arrGoods.count;
    } else if(tableView.tag == 1002) {
        
        return _arrGitfs.count;
    } else {
        
        return 0;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // 处理界面
    static NSString *cellID = @"OrderDetailTableViewCell";
    OrderDetailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    
    // 处理数据
    OrderDetailModel *m = nil;
    if(tableView.tag == 1001) {
        
        m = _arrGoods[indexPath.row];
    } else if(tableView.tag == 1002) {
        
        m = _arrGitfs[indexPath.row];
    }
    
    // 填充数据
    cell.orderDetailM = m;
    
    // 返回Cell
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // 处理数据
    OrderDetailModel *m = nil;
    if(tableView.tag == 1001) {
        
        m = _arrGoods[indexPath.row];
    } else if(tableView.tag == 1002) {
        
        m = _arrGitfs[indexPath.row];
    }
    return m.cellHeight;
}


#pragma mark - 手势

- (IBAction)timePointOnclick:(UIButton *)sender {
    
    [Tools showAlert:self.view andTitle:@"功能建设中..."];
    return;
    
    if(sender.selected) {
        
        _timePointViewHeight.constant = _timePointPromptViewHeight.constant;
    } else {
        
        _timePointViewHeight.constant = 260;
        [_timePointInfoView setHidden:NO];
        
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            
            usleep(200);
            dispatch_async(dispatch_get_main_queue(), ^{
                CGFloat offset =  _scrollContentViewHeight.constant - _myScrollView.bounds.size.height;
                if (offset > 0) {
                    
                    [_myScrollView setContentOffset:CGPointMake(0, offset) animated:YES];
                }
            });
        });
    }
    
    [UIView animateWithDuration:0.5 animations:^{
        
        [self updateViewConstraints];
        
        [self.view layoutIfNeeded];
    } completion:^(BOOL finished) {
        
        if(sender.selected) {
            
            [_timePointInfoView setHidden:YES];
        }
        sender.selected = !sender.selected;
    }];
}

#pragma mark - 事件

- (IBAction)checkTransportinfoOnclick:(UIButton *)sender {
    
//    if([_order.ORD_STATE isEqualToString:@"PENDING"] == YES) {
//        
//        [LM_alert showLMAlertViewWithTitle:@"" message:@"是否要取消此订单" cancleButtonTitle:@"否" okButtonTitle:@"是" okClickHandle:^{
//            
//            [MBProgressHUD showHUDAddedTo:self.view animated:YES];
//            [_service OrderCancel:_order.IDX andstrUserIdx:_app.user.IDX];
//        } cancelClickHandle:nil];
//        
//    } else {
    
        [MBProgressHUD showHUDAddedTo:self.view animated:YES];
        [_transortService getTransInformationData:_order.IDX];
//    }
}


#pragma mark - TransportInformationServiceDelegate

- (void)successOfTransportInformation:(OrderTmsModel *)product {
    
    [MBProgressHUD hideHUDForView:self.view animated:YES];
    TransportInformationViewController *vc = [[TransportInformationViewController alloc] init];
    vc.tmsInformtions = product;
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)failureOfTransportInformation:(NSString *)msg {
    
    [MBProgressHUD hideHUDForView:self.view animated:YES];
    [Tools showAlert:self.view andTitle:msg ? msg : @"获取信息失败"];
}


#pragma mark - OrderCancelServiceDelegate

- (void)successOfOrderCancel:(NSString *)msg {
    
    [MBProgressHUD hideHUDForView:self.view animated:YES];
    [[NSNotificationCenter defaultCenter] postNotificationName:kOrderingViewController_receiveMsg object:nil userInfo:@{@"msg" : msg}];
    [self.navigationController popViewControllerAnimated:YES];
    
}


- (void)failureOfOrderCancel:(NSString *)msg {
    
    [MBProgressHUD hideHUDForView:self.view animated:YES];
    [Tools showAlert:self.view andTitle:msg];
}

@end
