//
//  AddBottleViewController.m
//  Order
//
//  Created by 凯东源 on 2017/11/22.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "AddBottleViewController.h"
#import "BottleAddressListModel.h"
#import "GetReturnPartyListService.h"
#import "Tools.h"
#import "AppDelegate.h"
#import "CarrierViewController.h"
#import "CarrierModel.h"
#import "GetReturnProductListService.h"
#import "ImportToOrderListService.h"
#import <MBProgressHUD.h>
#import "BottleListViewController.h"
#import "FactoryViewController.h"
#import "PlateNumberViewController.h"
#import "PlateNumberModel.h"
#import "AddBottleTableViewCell.h"

@interface AddBottleViewController ()<GetReturnPartyListDelegate, GetReturnProductListDelegate, ImportToOrderListDelegate, AddBottleTableViewCellDelegate>

// 客户名称
@property (weak, nonatomic) IBOutlet UILabel *customer_NAME;
// 客户地址
@property (weak, nonatomic) IBOutlet UILabel *customer_ADDRESS;
// 客户联系人
@property (weak, nonatomic) IBOutlet UILabel *customer_PERSON;
// 客户电话
@property (weak, nonatomic) IBOutlet UILabel *customer_TEL;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *customerViewHeight;

// 厂商信息
@property (strong, nonatomic) BottleAddressModel *factory;
@property (strong, nonatomic) BottleAddressListModel *bottleAddressListM;
// 供应商名称
@property (weak, nonatomic) IBOutlet UILabel *PARTY_NAME;
// 供应商地址
@property (weak, nonatomic) IBOutlet UILabel *PARTY_ADDRESS;
@property (weak, nonatomic) IBOutlet UIButton *modifyFactoryBtn;
@property (strong, nonatomic) AppDelegate *app;
@property (weak, nonatomic) IBOutlet UIView *factoryView;
@property (weak, nonatomic) IBOutlet UIView *addFactoryView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *factoryViewHeight;

// 承运信息
@property (strong, nonatomic) CarrierModel *carrierM;
@property (weak, nonatomic) IBOutlet UIView *carrierInfoView;
@property (weak, nonatomic) IBOutlet UIView *carrierInfoAddView;
@property (weak, nonatomic) IBOutlet UIButton *modifyCarrierBtn;
// 车辆类型
@property (weak, nonatomic) IBOutlet UILabel *TMS_VEHICLE_TYPE;
// 司机姓名
@property (weak, nonatomic) IBOutlet UILabel *TMS_DRIVER_NAME;
// 司机联系电话
@property (weak, nonatomic) IBOutlet UILabel *TMS_DRIVER_TEL;
// 承运商名称
@property (weak, nonatomic) IBOutlet UILabel *TMS_FLEET_NAME;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *carrierViewHeight;

// 车牌信息
@property (weak, nonatomic) IBOutlet UIView *plateNumberView;
@property (weak, nonatomic) IBOutlet UIView *addPlateNumberView;
@property (weak, nonatomic) IBOutlet UIButton *modifyPlateNumberBtn;
@property (strong, nonatomic) PlateNumberModel *plateNumber;
@property (weak, nonatomic) IBOutlet UILabel *TMS_PLATE_NUMBER;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *plateNumberViewHeight;

// 瓶子信息
@property (strong, nonatomic) BottleInfoListModel *bottleInfoListM;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (assign, nonatomic) CGFloat bottleTotal;
@property (weak, nonatomic) IBOutlet UILabel *bottleTotalLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottleViewHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottleViewPromptHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottleTotalViewHeight;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *scrollContentViewHeight;

@end

#define kCellHeight 44

#define kCellName @"AddBottleTableViewCell"

@implementation AddBottleViewController

- (instancetype)init {
    
    if(self = [super init]) {
        
        _app = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    }
    return self;
}


- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"添加回瓶单";
    
    [self registerCell];
    
    [self initUI];
    [self addNotification];
    
    // 获取厂商信息
    GetReturnPartyListService *service = [[GetReturnPartyListService alloc] init];
    service.delegate = self;
    [service GetReturnPartyList:_app.business.BUSINESS_IDX];
    
    // 获取瓶子信息
    GetReturnProductListService *service_bottle = [[GetReturnProductListService alloc] init];
    service_bottle.delegate = self;
    [service_bottle GetReturnProductList:_app.business.BUSINESS_IDX];
}


- (void)updateViewConstraints {
    
    [super updateViewConstraints];
    
    _scrollContentViewHeight.constant =
    _customerViewHeight.constant +
    _factoryViewHeight.constant +
    _bottleViewHeight.constant +
    _carrierViewHeight.constant +
    _plateNumberViewHeight.constant +
    70;
}


- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
}


- (void)dealloc {
    
    [self removeNotification];
}


#pragma mark - 函数

// 注册Cell
- (void)registerCell {
    
    [_tableView registerNib:[UINib nibWithNibName:kCellName bundle:nil] forCellReuseIdentifier:kCellName];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}

- (void)initUI {
    
    _customer_NAME.text = _partyM.PARTY_NAME;
    _customer_ADDRESS.text = _addressM.ADDRESS_INFO;
    _customer_PERSON.text = _addressM.CONTACT_PERSON;
    _customer_TEL.text = _addressM.CONTACT_TEL;
    
    _PARTY_NAME.text = @" ";
    _PARTY_ADDRESS.text = @" ";
    
    _bottleTotalLabel.text = @"0";
    
    // 客户名称换行
    CGFloat oneLine = [Tools getHeightOfString:@"fds" fontSize:15 andWidth:MAXFLOAT];
    CGFloat mulLine = [Tools getHeightOfString:_customer_NAME.text fontSize:15 andWidth:(ScreenWidth - 12 - 46 - 3 + 2)];
    _customerViewHeight.constant += (mulLine - oneLine);
    
    // 客户地址换行
    oneLine = [Tools getHeightOfString:@"fds" fontSize:15 andWidth:MAXFLOAT];
    mulLine = [Tools getHeightOfString:_customer_ADDRESS.text fontSize:15 andWidth:(ScreenWidth - 12 - 46 - 3 + 2)];
    _customerViewHeight.constant += (mulLine - oneLine);
}


- (void)fullFactory {
    
    _factoryView.hidden = NO;
    _addFactoryView.hidden = YES;
    _PARTY_NAME.text = _factory.pARTYNAME;
    _PARTY_ADDRESS.text = _factory.aDDRESSINFO;
    
    // 厂家名称换行
    CGFloat oneLine = [Tools getHeightOfString:@"fds" fontSize:15 andWidth:MAXFLOAT];
    CGFloat mulLine = [Tools getHeightOfString:_PARTY_NAME.text fontSize:15 andWidth:(ScreenWidth - 12 - 46 - 3 + 2)];
    _factoryViewHeight.constant += (mulLine - oneLine);
    
    // 厂家地址换行
    oneLine = [Tools getHeightOfString:@"fds" fontSize:15 andWidth:MAXFLOAT];
    mulLine = [Tools getHeightOfString:_PARTY_ADDRESS.text fontSize:15 andWidth:(ScreenWidth - 12 - 46 - 3 + 2)];
    _factoryViewHeight.constant += (mulLine - oneLine);
}


#pragma mark - 手势、事件

- (IBAction)factoryOnclick {
    
    FactoryViewController *vc = [[FactoryViewController alloc] init];
    vc.bottleAddressListM = _bottleAddressListM;
    [self.navigationController pushViewController:vc animated:YES];
}


- (IBAction)carrierOnclick {
    
    CarrierViewController *vc = [[CarrierViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}


- (IBAction)plateNumberOnclick {
    
    if(_carrierM) {
        
        PlateNumberViewController *vc = [[PlateNumberViewController alloc] init];
        vc.fleetId = _carrierM.tMSFLEETIDX;
        [self.navigationController pushViewController:vc animated:YES];
    } else {
        
        [Tools showAlert:self.view andTitle:@"请填写承运信息"];
    }
}


- (IBAction)commitOnclick {
    
    // 剔除数量为0的实体
    NSMutableArray *bottleInfoListM = [[NSMutableArray alloc] init];
    _bottleTotal = 0;
    for (BottleInfoModel *m in _bottleInfoListM.bottleInfoModel) {
        CGFloat qty = [m.pOQTY floatValue];
        if(qty > 0) {
            [bottleInfoListM addObject:m];
            _bottleTotal += qty;
        }
    }
    // 补全实体字段
    for (int i = 0; i < bottleInfoListM.count; i++) {
        
        BottleInfoModel *m = bottleInfoListM[i];
        m.pRODUCTIDX = m.iDX;
        m.eNTIDX = @"9008";
        m.lINENO = [NSString stringWithFormat:@"%d", i + 1];
    }
    // 实体转字典
    NSMutableArray *bottleInfoListDict = [[NSMutableArray alloc] init];
    for (BottleInfoModel *m in bottleInfoListM) {
        NSDictionary *dict = [m toDictionary];
        [bottleInfoListDict addObject:dict];
    }
    
    if(_factory) {
        if(bottleInfoListDict.count > 0) {
            if(_carrierM) {
                if(_plateNumber) {
                    NSDictionary *json = @{
                                           @"ORG_IDX":_carrierM.ordOrgIdx ? _carrierM.ordOrgIdx : @"",
                                           @"BUSINESS_IDX":_app.business.BUSINESS_IDX ? _app.business.BUSINESS_IDX : @"",
                                           @"FROM_IDX":_addressM.IDX ? _addressM.IDX : @"",
                                           @"TO_IDX":_factory.iDX ? _factory.iDX : @"",
                                           @"TOTAL_QTY":@(_bottleTotal),
                                           @"TMS_FLEET_IDX":_carrierM.tMSFLEETIDX ? _carrierM.tMSFLEETIDX : @"",
                                           @"TMS_FLEET_NAME":_carrierM.tMSFLEETNAME ? _carrierM.tMSFLEETNAME : @"",
                                           @"TMS_VEHICLE_IDX":_plateNumber.tMSVEHICLEIDX ? _plateNumber.tMSVEHICLEIDX : @"",
                                           @"TMS_PLATE_NUMBER":_plateNumber.tMSPLATENUMBER ? _plateNumber.tMSPLATENUMBER : @"",
                                           @"TMS_VEHICLE_TYPE":_plateNumber.tMSVEHICLETYPE ? _plateNumber.tMSVEHICLETYPE : @"",
                                           @"TMS_VEHICLE_SIZE":_plateNumber.tMSVEHICLESIZE ? _plateNumber.tMSVEHICLESIZE : @"",
                                           @"TMS_DRIVER_IDX":_carrierM.tMSDRIVERIDX ? _carrierM.tMSDRIVERIDX : @"",
                                           @"TMS_DRIVER_NAME":_carrierM.tMSDRIVERNAME ? _carrierM.tMSDRIVERNAME : @"",
                                           @"TMS_DRIVER_TEL":_carrierM.tMSDRIVERTEL ? _carrierM.tMSDRIVERTEL : @"",
                                           @"ENT_IDX":@9008,
                                           @"OrderDetails":bottleInfoListDict ? bottleInfoListDict : @""
                                           };
                    
                    NSString *jsonStr = [Tools JsonStringWithDictonary:json];
                    ImportToOrderListService *service_commit = [[ImportToOrderListService alloc] init];
                    service_commit.delegate = self;
                    [MBProgressHUD showHUDAddedTo:_app.window animated:YES];
                    [service_commit ImportToOrderList:jsonStr];
                } else {
                    
                    [Tools showAlert:self.view andTitle:@"车牌不能为空哦"];
                }
            } else {
                
                [Tools showAlert:self.view andTitle:@"承运信息不能为空哦"];
            }
        } else {
            
            [Tools showAlert:self.view andTitle:@"物品数量不能都为空哦"];
        }
    } else {
        
        [Tools showAlert:self.view andTitle:@"厂商信息不能为空哦"];
    }
}


#pragma mark - UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _bottleInfoListM.bottleInfoModel.count;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return kCellHeight;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // 处理界面
    static NSString *cellId = kCellName;
    AddBottleTableViewCell *cell = (AddBottleTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    cell.delegate = self;
    
    BottleInfoModel *m = _bottleInfoListM.bottleInfoModel[indexPath.row];
    
    cell.bottleInfoM = m;
    
    return cell;
}


#pragma mark - GetReturnPartyListDelegate 获取厂商信息

- (void)successOfGetReturnPartyList:(BottleAddressListModel *)bottleAddressListM {
    
    _bottleAddressListM = bottleAddressListM;
    
    if(bottleAddressListM.bottleAddressModel.count == 1) {
        
        _factory = bottleAddressListM.bottleAddressModel[0];
        [self fullFactory];
    } else if(bottleAddressListM.bottleAddressModel.count > 1) {
        
        _addFactoryView.hidden = NO;
        _factoryView.hidden = YES;
    } else {
        
        _addFactoryView.hidden = YES;
        _factoryView.hidden = NO;
        [Tools showAlert:self.view andTitle:@"请配置供应商信息"];
    }
}


- (void)successOfGetReturnPartyList_NoData {
    
    [Tools showAlert:self.view andTitle:@"没有厂商数据"];
}


- (void)failureOfGetReturnPartyList:(NSString *)msg {
    
    [Tools showAlert:self.view andTitle:msg];
}


#pragma mark - GetReturnProductListDelegate 获取瓶子信息

- (void)successOfGetReturnProductList:(BottleInfoListModel *)bottleInfoListM {
    
    _bottleInfoListM = bottleInfoListM;
    _bottleViewHeight.constant = _bottleInfoListM.bottleInfoModel.count * kCellHeight + _bottleViewPromptHeight.constant + _bottleTotalViewHeight.constant;
    [_tableView reloadData];
}


- (void)successOfGetReturnProductList_NoData {
    
    [Tools showAlert:self.view andTitle:@"没有瓶子信息"];
}


- (void)failureOfGetReturnProductList:(NSString *)msg {
    
    [Tools showAlert:self.view andTitle:msg];
}


#pragma mark - ImportToOrderListDelegate 提交订单

- (void)successOfImportToOrderList:(NSString *)msg {
    
    [MBProgressHUD hideHUDForView:_app.window animated:YES];
    
    // 告诉列表需要刷新
    NSArray *array = self.navigationController.viewControllers;
    for(int i = 0; i < array.count; i++) {
        
        UIViewController *vc = array[i];
        if([vc isKindOfClass:[BottleListViewController class]]) {
            
            BottleListViewController *LMVC = (BottleListViewController *)vc;
            [[NSNotificationCenter defaultCenter] postNotificationName:kBottleListViewController_receiveMsg object:nil userInfo:@{@"msg":msg}];
            [self.navigationController popToViewController:LMVC animated:YES];
        }
    }
}


- (void)failureOfImportToOrderList:(NSString *)msg {
    
    [MBProgressHUD hideHUDForView:_app.window animated:YES];
    [Tools showAlert:self.view andTitle:msg];
}


#pragma mark - 通知  承运信息

- (void)addNotification {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reloadAddress:) name:kBottleViewController_Notification object:nil];
}


- (void)removeNotification {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:kBottleViewController_Notification object:nil];
}


- (void)reloadAddress:(NSNotification *)aNotify {
    
    CarrierModel *carrierM = aNotify.userInfo[@"Carrier"];
    BottleAddressModel *factory = aNotify.userInfo[@"Factory"];
    PlateNumberModel *plateNumber = aNotify.userInfo[@"PlateNumber"];
    if(carrierM) {
        _carrierM = carrierM;
        _carrierInfoAddView.hidden = YES;
        _carrierInfoView.hidden = NO;
        _modifyCarrierBtn.hidden = NO;
        _TMS_PLATE_NUMBER.text = _carrierM.tMSPLATENUMBER;
        _TMS_VEHICLE_TYPE.text = _carrierM.tMSVEHICLETYPE;
        _TMS_DRIVER_NAME.text = _carrierM.tMSDRIVERNAME;
        _TMS_DRIVER_TEL.text = _carrierM.tMSDRIVERTEL;
        _TMS_FLEET_NAME.text = _carrierM.tMSFLEETNAME;
        // 更换承运商，车牌必然要置空
        _plateNumber = nil;
        _plateNumberView.hidden = YES;
        _addPlateNumberView.hidden = NO;
        _modifyPlateNumberBtn.hidden = YES;
        _TMS_PLATE_NUMBER.text = @"";
    }
    
    if(factory) {
        _factory = factory;
        _modifyFactoryBtn.hidden = NO;
        [self fullFactory];
    }
    
    if(plateNumber) {
        
        _plateNumber = plateNumber;
        _plateNumberView.hidden = NO;
        _addPlateNumberView.hidden = YES;
        _modifyPlateNumberBtn.hidden = NO;
        _TMS_PLATE_NUMBER.text = _plateNumber.tMSPLATENUMBER;
    }
}


#pragma mark - AddBottleTableViewCellDelegate

- (void)productQTYChange {
    
    _bottleTotal = 0;
    for (BottleInfoModel *m in _bottleInfoListM.bottleInfoModel) {
        CGFloat qty = [m.pOQTY floatValue];
        if(qty > 0) {
            _bottleTotal += qty;
        }
    }
    _bottleTotalLabel.text = [NSString stringWithFormat:@"%.1f", _bottleTotal];
}

@end
