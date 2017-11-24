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

@interface AddBottleViewController ()<GetReturnPartyListDelegate, GetReturnProductListDelegate, ImportToOrderListDelegate>

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
// 供应商名称
@property (weak, nonatomic) IBOutlet UILabel *PARTY_NAME;
// 供应商地址
@property (weak, nonatomic) IBOutlet UILabel *PARTY_ADDRESS;
@property (weak, nonatomic) IBOutlet UIButton *modifyFactoryBtn;
@property (strong, nonatomic) AppDelegate *app;

// 承运信息
@property (strong, nonatomic) CarrierModel *carrierM;
@property (weak, nonatomic) IBOutlet UIView *carrierInfoView;
@property (weak, nonatomic) IBOutlet UIView *carrierInfoAddView;
@property (weak, nonatomic) IBOutlet UIButton *modifyCarrierBtn;
// 车牌号
@property (weak, nonatomic) IBOutlet UILabel *TMS_PLATE_NUMBER;
// 车辆类型
@property (weak, nonatomic) IBOutlet UILabel *TMS_VEHICLE_TYPE;
// 司机姓名
@property (weak, nonatomic) IBOutlet UILabel *TMS_DRIVER_NAME;
// 司机联系电话
@property (weak, nonatomic) IBOutlet UILabel *TMS_DRIVER_TEL;
// 承运商名称
@property (weak, nonatomic) IBOutlet UILabel *TMS_FLEET_NAME;

// 瓶子信息
@property (strong, nonatomic) BottleInfoListModel *bottleInfoListM;
// 小瓶
@property (weak, nonatomic) IBOutlet UITextField *littleF;
// 中瓶
@property (weak, nonatomic) IBOutlet UITextField *midF;
// 大瓶
@property (weak, nonatomic) IBOutlet UITextField *maxF;
// 托盘
@property (weak, nonatomic) IBOutlet UITextField *trayF;
@property (assign, nonatomic) CGFloat bottleTotal;
@property (weak, nonatomic) IBOutlet UILabel *bottleTatalLabel;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *scrollContentViewHeight;

@end

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


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)dealloc {
    
    [self removeNotification];
}


#pragma mark - 函数

- (void)initUI {
    
    _customer_NAME.text = _partyM.PARTY_NAME;
    _customer_ADDRESS.text = _addressM.ADDRESS_INFO;
    _customer_PERSON.text = _addressM.CONTACT_PERSON;
    _customer_TEL.text = _addressM.CONTACT_TEL;
    
    // 名称换行
    
    // 地址换行
    CGFloat oneLine = [Tools getHeightOfString:@"fds" fontSize:15 andWidth:MAXFLOAT];
    CGFloat mulLine = [Tools getHeightOfString:_customer_ADDRESS.text fontSize:15 andWidth:(ScreenWidth - 12 - 46 - 3 + 2)];
    _customerViewHeight.constant += (mulLine - oneLine);
    _scrollContentViewHeight.constant += (mulLine - oneLine);
}


#pragma mark - 手势、事件

- (IBAction)carrierOnclick {
    
    CarrierViewController *vc = [[CarrierViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}


- (IBAction)commitOnclick {
    CGFloat little = [[_littleF textTrim] floatValue];
    CGFloat mid = [[_midF textTrim] floatValue];
    CGFloat max = [[_maxF textTrim] floatValue];
    CGFloat tray = [[_trayF textTrim] floatValue];
    _bottleTotal = little + mid + max + tray;
    
    if(little || mid || max || tray) {
        
        NSMutableArray *OrderDetails = [[NSMutableArray alloc] init];
        for (int i = 0; i < _bottleInfoListM.bottleInfoModel.count; i++) {
            
            BottleInfoModel *m = _bottleInfoListM.bottleInfoModel[i];
            
            NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                        m.iDX,@"PRODUCT_IDX",
                                        @9008,@"ENT_IDX",
                                        m.pRODUCTNO,@"PRODUCT_NO",
                                        m.pRODUCTNAME,@"PRODUCT_NAME",
                                        m.pRODUCTDESC,@"PRODUCT_DESC",
                                        m.pRODUCTBARCODE,@"PRODUCT_BARCODE",
                                        m.pRODUCTSTATE,@"PRODUCT_STATE",
                                        @(i + 1),@"LINE_NO",
                                        nil];
            if([m.pRODUCTNAME isEqualToString:@"小瓶"]) {
                [dic setValue:@(little) forKey:@"PO_QTY"];
            } else if([m.pRODUCTNAME isEqualToString:@"中瓶"]) {
                [dic setValue:@(mid) forKey:@"PO_QTY"];
            } else if([m.pRODUCTNAME isEqualToString:@"大瓶"]) {
                [dic setValue:@(max) forKey:@"PO_QTY"];
            } else if([m.pRODUCTNAME isEqualToString:@"托盘"]) {
                [dic setValue:@(tray) forKey:@"PO_QTY"];
            }
            CGFloat qty = [dic[@"PO_QTY"] floatValue];
            if(qty) {
                [OrderDetails addObject:dic];
            }
        }
        
        if(_factory) {
            if(_carrierM) {
                NSDictionary *json = @{
                                       @"ORG_IDX":_carrierM.ordOrgIdx,
                                       @"BUSINESS_IDX":_app.business.BUSINESS_IDX,
                                       @"FROM_IDX":_addressM.IDX,
                                       @"TO_IDX":_factory.iDX,
                                       @"TOTAL_QTY":@(_bottleTotal),
                                       @"TMS_FLEET_IDX":_carrierM.tMSFLEETIDX,
                                       @"TMS_FLEET_NAME":_carrierM.tMSFLEETNAME,
                                       @"TMS_VEHICLE_IDX":_carrierM.tMSVEHICLEIDX,
                                       @"TMS_PLATE_NUMBER":_carrierM.tMSPLATENUMBER,
                                       @"TMS_VEHICLE_TYPE":_carrierM.tMSVEHICLETYPE,
                                       @"TMS_VEHICLE_SIZE":_carrierM.tMSVEHICLESIZE,
                                       @"TMS_DRIVER_IDX":_carrierM.tMSDRIVERIDX,
                                       @"TMS_DRIVER_NAME":_carrierM.tMSDRIVERNAME,
                                       @"TMS_DRIVER_TEL":_carrierM.tMSDRIVERTEL,
                                       @"ENT_IDX":@9008,
                                       @"OrderDetails":OrderDetails
                                       };
                
                
                NSString *jsonStr = [Tools JsonStringWithDictonary:json];
                ImportToOrderListService *service_commit = [[ImportToOrderListService alloc] init];
                service_commit.delegate = self;
                [service_commit ImportToOrderList:jsonStr];
            } else {
                
                [Tools showAlert:self.view andTitle:@"承运信息不能为空哦"];
            }
        } else {
            
            [Tools showAlert:self.view andTitle:@"厂商信息不能为空哦"];
        }
    } else {
        
        [Tools showAlert:self.view andTitle:@"物品数量不能都为空哦"];
    }
}


#pragma mark - GetReturnPartyListDelegate 获取厂商信息

- (void)successOfGetReturnPartyList:(BottleAddressListModel *)bottleAddressListM {
    
    if(bottleAddressListM.bottleAddressModel.count == 1) {
        
        _factory = bottleAddressListM.bottleAddressModel[0];
        dispatch_async(dispatch_get_main_queue(), ^{
            BottleAddressModel *bottleAddressM = bottleAddressListM.bottleAddressModel[0];
            _PARTY_NAME.text = bottleAddressM.pARTYNAME;
            _PARTY_ADDRESS.text = [NSString stringWithFormat:@"%@", bottleAddressM.aDDRESSINFO];
        });
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
}


- (void)successOfGetReturnProductList_NoData {
    
    [Tools showAlert:self.view andTitle:@"没有瓶子信息"];
}


- (void)failureOfGetReturnProductList:(NSString *)msg {
    
    [Tools showAlert:self.view andTitle:msg];
}


#pragma mark - ImportToOrderListDelegate 提交订单

- (void)successOfImportToOrderList:(NSString *)msg {
    
    [MBProgressHUD hideHUDForView:self.view animated:YES];
    [Tools showAlert:self.view andTitle:msg];
}


- (void)failureOfImportToOrderList:(NSString *)msg {
    
    [MBProgressHUD hideHUDForView:self.view animated:YES];
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
    
    _carrierM = aNotify.userInfo[@"Carrier"];
    if(_carrierM) {
        _carrierInfoAddView.hidden = true;
        _carrierInfoView.hidden = false;
        _modifyCarrierBtn.hidden = false;
        _TMS_PLATE_NUMBER.text = _carrierM.tMSPLATENUMBER;
        _TMS_VEHICLE_TYPE.text = _carrierM.tMSVEHICLETYPE;
        _TMS_DRIVER_NAME.text = _carrierM.tMSDRIVERNAME;
        _TMS_DRIVER_TEL.text = _carrierM.tMSDRIVERTEL;
        _TMS_FLEET_NAME.text = _carrierM.tMSFLEETNAME;
    }
}


- (IBAction)textChange {
    
    CGFloat little = [[_littleF textTrim] floatValue];
    CGFloat mid = [[_midF textTrim] floatValue];
    CGFloat max = [[_maxF textTrim] floatValue];
    CGFloat tray = [[_trayF textTrim] floatValue];
    _bottleTotal = little + mid + max + tray;
    _bottleTatalLabel.text = [NSString stringWithFormat:@"%.1f", _bottleTotal];
}

@end
