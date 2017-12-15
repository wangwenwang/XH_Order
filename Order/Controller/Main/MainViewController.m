//
//  MainViewController.m
//  Order
//
//  Created by 凯东源 on 16/9/27.
//  Copyright © 2016年 凯东源. All rights reserved.
//

#import "MainViewController.h"
#import "SDCycleScrollView.h"
#import "MaincollectionViewCell.h"
#import "SearchOrderPathViewController.h"
#import "NewsViewController.h"
#import "HotProductViewController.h"
#import "ChartService.h"
#import "ChartViewController.h"
#import <MBProgressHUD.h>
#import "Tools.h"
#import "GetStockListViewController.h"
#import "AppDelegate.h"
#import "GetFeeListViewController.h"
#import "CustomerListViewController.h"
#import "BottleListViewController.h"
#import "ScanCodeViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface MainViewController ()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, ChartServiceDelegate>

/// Cell ID
@property (copy, nonatomic) NSString *cellID;

/// myCollectionView 数据
@property (strong, nonatomic) NSMutableArray *myCollectionDataArrM;

@property (weak, nonatomic) IBOutlet SDCycleScrollView *cycleScrollView;
@property (weak, nonatomic) IBOutlet UICollectionView *myCollectionView;

@property (strong, nonatomic) ChartService *chartService;

@property (strong, nonatomic) AppDelegate *app;

// 扫码数组
@property (strong, nonatomic) NSArray *qrCodeArray;

@end


#define kIntoFactory @"进厂"
#define kIntoPlatform @"进月台"
#define kOutPlatform @"出月台"
#define kOutFactory @"出厂"
#define kReturnIntoFactory @"返物进工厂"
#define kReturnIntoPlatform @"返物进月台"

@implementation MainViewController

- (instancetype)init {
    if(self = [super init]) {
        self.title = @"首页";
        self.tabBarItem.image = [UIImage imageNamed:@"menu_index_unselected"];
        _cellID = @"myCollectionViewCellID";
        _myCollectionDataArrM = [[NSMutableArray alloc] init];
        _chartService = [[ChartService alloc] init];
        _chartService.delegate = self;
        _app = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    }
    return self;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    //获取plist数据
    [self getPlistData];
    
    //注册Cell
    [self registerCell];
    
    // 注册通知
    [self addNotification];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    //添加广告轮播
    [self addCycleScrollView];
}


- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    self.navigationController.navigationBar.topItem.title = @"首页";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (void)dealloc {
    
    [self removeNotification];
}


#pragma mark - 通知

- (void)addNotification {
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receiveMsg:) name:kMainViewController_receiveMsg object:nil];
}


- (void)removeNotification {
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:kMainViewController_receiveMsg object:nil];
}


- (void)receiveMsg:(NSNotification *)aNotify{
    
    NSString *msg = aNotify.userInfo[@"msg"];
    [Tools showAlert:self.view andTitle:msg andTime:2.5];
}


#pragma mark - 私有方法

- (void)addCycleScrollView {
    
    NSArray *images = [NSArray arrayWithObjects:@"ad_pic_0.jpg", @"ad_pic_1.jpg", @"ad_pic_2.jpg", @"ad_pic_3.jpg", nil];
    
    // 本地加载图片的轮播器
    SDCycleScrollView *_cycleScrollView1 = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, ScreenWidth, CGRectGetHeight(_cycleScrollView.frame)) imageNamesGroup:images];
    [self.view addSubview:_cycleScrollView1];
}


- (void)registerCell {
    [self.myCollectionView registerNib:[UINib nibWithNibName:@"MainCollectionViewCell"bundle:nil]forCellWithReuseIdentifier:_cellID];
}


- (void)getPlistData {
    
    NSString *dataPath = [[NSBundle mainBundle]pathForResource:@"MainCollection.plist" ofType:nil];
    _myCollectionDataArrM = [NSMutableArray arrayWithContentsOfFile:dataPath];
    NSArray *plisArray = [_myCollectionDataArrM copy];
    
    // 客户，没有扫码功能
    if([Tools PARTY]) {
        
        if(_myCollectionDataArrM.count >= 7) {
            
            [_myCollectionDataArrM removeObjectAtIndex:6];
        }
    }
    
    // 门卫，除了扫码没有任何功能
    else if([Tools GUARD]) {
        for (NSDictionary *dic in plisArray) {
            
            if(![dic[@"title"] isEqualToString:@"扫二维码"]) {
                
                [_myCollectionDataArrM removeObject:dic];
            }
        }
    }
}


#pragma mark - UICollectionViewDelegate

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return _myCollectionDataArrM.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    MainCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:_cellID forIndexPath:indexPath];
    
    cell.titleLabel.text = _myCollectionDataArrM[indexPath.row][@"title"];
    cell.imageView.image = [UIImage imageNamed:_myCollectionDataArrM[indexPath.row][@"imageName"]];
    
    return cell;
}


#pragma mark - UICollectionViewDelegateFlowLayout

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CGFloat cellW = (ScreenWidth - 2) / 3;
    return CGSizeMake(cellW, cellW * 0.9);
}


- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    
    return 1;
}


- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    
    return 1;
}


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"%ld, %ld", (long)indexPath.section, (long)indexPath.row);
    
    NSString *title =  _myCollectionDataArrM[indexPath.row][@"title"];
    
    if([title isEqualToString:@"货物轨迹"]) {
        
        //        SearchOrderPathViewController *sopVC = [[SearchOrderPathViewController alloc] init];
        //        [self.navigationController pushViewController:sopVC animated:YES];
        [Tools showAlert:self.view andTitle:@"正在维护中..."];
    } else if([title isEqualToString:@"最新资讯"]) {
        //        NewsViewController *newsVC = [[NewsViewController alloc] init];
        //        [self.navigationController pushViewController:newsVC animated:YES];
        
        [Tools showAlert:self.view andTitle:@"正在维护中..."];
    } else if([title isEqualToString:@"热销产品"]) {
        
        HotProductViewController *hotVC = [[HotProductViewController alloc] init];
        [self.navigationController pushViewController:hotVC animated:YES];
    } else if([title isEqualToString:@"查看报表"]) {
        
        //        //客户报表   ,,  产品报表
        //        [MBProgressHUD showHUDAddedTo:self.view animated:YES];
        //        [_chartService getChartDataList:API_GET_CUSTOMER_CHART_DATA andTag:mTagGetCustomerChartDataList];
        
        ChartViewController *vc = [[ChartViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    } else if([title isEqualToString:@"查看订单"]) {
        
        self.tabBarController.selectedIndex = 2;
    } else if(indexPath.row == 1005) {
        
        GetStockListViewController *vc = [[GetStockListViewController alloc] init];
        vc.title = title;
        [self.navigationController pushViewController:vc animated:YES];
    } else if([title isEqualToString:@"客户费用"]) {
        
        GetFeeListViewController *vc = [[GetFeeListViewController alloc] init];
        vc.title = title;
        
        //        [self presentViewController:vc animated:YES completion:nil];
        [self.navigationController pushViewController:vc animated:YES];
        
        //        CustomerListViewController *vc = [[CustomerListViewController alloc] init];
        //        vc.title = title;
        //        vc.vcClass = NSStringFromClass([self class]);
        //        [self.navigationController pushViewController:vc animated:YES];
    } else if([title isEqualToString:@"费用帐单"]) {
        
        CustomerListViewController *vc = [[CustomerListViewController alloc] init];
        vc.title = title;
        vc.vcClass = NSStringFromClass([self class]);
        vc.functionName = title;
        [self.navigationController pushViewController:vc animated:YES];
    } else if([title isEqualToString:@"库存管理"]) {
        
        CustomerListViewController *vc = [[CustomerListViewController alloc] init];
        vc.title = title;
        vc.vcClass = NSStringFromClass([self class]);
        vc.functionName = title;
        [self.navigationController pushViewController:vc animated:YES];
    } else if([title isEqualToString:@"空瓶回厂"]) {
        
        BottleListViewController * vc = [[BottleListViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    } else if([title isEqualToString:@"扫二维码"]) {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"请选择扫码类型" message:@"" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:nil];
        alert.delegate = self;
        if([Tools GUARD]) {
            
            [alert addButtonWithTitle:kIntoFactory];
            [alert addButtonWithTitle:kOutFactory];
            _qrCodeArray = @[kIntoFactory, kOutFactory];
        } else if([Tools FACTORY]) {
            
            [alert addButtonWithTitle:kIntoFactory];
            [alert addButtonWithTitle:kIntoPlatform];
            [alert addButtonWithTitle:kOutPlatform];
            [alert addButtonWithTitle:kOutFactory];
            [alert addButtonWithTitle:kReturnIntoFactory];
            [alert addButtonWithTitle:kReturnIntoPlatform];
            _qrCodeArray = @[kIntoFactory, kIntoPlatform, kOutPlatform, kOutFactory, kReturnIntoFactory, kReturnIntoPlatform];
        }
        [alert show];
    }
}


- (void)scanQRCode:(NSString *)API andstrUserName:(NSString *)strUserName {
    
    
    // 1、 获取摄像设备
    AVCaptureDevice *device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    if (device) {
        AVAuthorizationStatus status = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
        if (status == AVAuthorizationStatusNotDetermined) {
            [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
                if (granted) {
                    dispatch_sync(dispatch_get_main_queue(), ^{
                        
                        ScanCodeViewController *vc = [[ScanCodeViewController alloc] init];
                        vc.API = API;
                        vc.strUserName = _app.user.USER_NAME;
                        [self.navigationController pushViewController:vc animated:YES];
                    });
                    // 用户第一次同意了访问相机权限
                    NSLog(@"用户第一次同意了访问相机权限 - - %@", [NSThread currentThread]);
                    
                } else {
                    // 用户第一次拒绝了访问相机权限
                    NSLog(@"用户第一次拒绝了访问相机权限 - - %@", [NSThread currentThread]);
                }
            }];
        } else if (status == AVAuthorizationStatusAuthorized) { // 用户允许当前应用访问相机
            ScanCodeViewController *vc = [[ScanCodeViewController alloc] init];
            vc.API = API;
            vc.strUserName = _app.user.USER_NAME;
            [self.navigationController pushViewController:vc animated:YES];
        } else if (status == AVAuthorizationStatusDenied) { // 用户拒绝当前应用访问相机
            UIAlertController *alertC = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"请去-> [设置 - 隐私 - 相机 - SGQRCodeExample] 打开访问开关" preferredStyle:(UIAlertControllerStyleAlert)];
            UIAlertAction *alertA = [UIAlertAction actionWithTitle:@"确定" style:(UIAlertActionStyleDefault) handler:^(UIAlertAction * _Nonnull action) {
                
            }];
            
            [alertC addAction:alertA];
            [self presentViewController:alertC animated:YES completion:nil];
            
        } else if (status == AVAuthorizationStatusRestricted) {
            NSLog(@"因为系统原因, 无法访问相册");
        }
    } else {
        UIAlertController *alertC = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"未检测到您的摄像头" preferredStyle:(UIAlertControllerStyleAlert)];
        UIAlertAction *alertA = [UIAlertAction actionWithTitle:@"确定" style:(UIAlertActionStyleDefault) handler:^(UIAlertAction * _Nonnull action) {
            
        }];
        
        [alertC addAction:alertA];
        [self presentViewController:alertC animated:YES completion:nil];
    }
}


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    NSLog(@"buttonIndex:%ld", (long)buttonIndex);
    
    if(buttonIndex != 0) {
        NSString *qrCodeType = _qrCodeArray[buttonIndex - 1];
        if([qrCodeType isEqualToString:kIntoFactory]) {
            [self scanQRCode:API_SetOidsToFactory andstrUserName:@""];
        } else if([qrCodeType isEqualToString:kIntoPlatform]) {
            [self scanQRCode:API_SetOidsToMonth andstrUserName:@""];
        } else if([qrCodeType isEqualToString:kOutPlatform]) {
            [self scanQRCode:API_SetOidsMonth andstrUserName:_app.user.USER_NAME];
        } else if([qrCodeType isEqualToString:kOutFactory]) {
            [self scanQRCode:API_SetOidsFactory andstrUserName:@""];
        } else if([qrCodeType isEqualToString:kReturnIntoFactory]) {
            [self scanQRCode:API_StrReToF andstrUserName:@""];
        } else if([qrCodeType isEqualToString:kReturnIntoPlatform]) {
            [self scanQRCode:API_SetReToM andstrUserName:@""];
        }
    }
}

//#pragma mark - ChartServiceDelegate
////获取客户报表回调
//- (void)successOfChartServiceWithCustomer:(NSMutableArray *)customerChart {
//
//    [MBProgressHUD hideHUDForView:self.view animated:YES];
//    ChartViewController *vc = [[ChartViewController alloc] init];
//    vc.arrM = customerChart;
//    [self.navigationController pushViewController:vc animated:YES];
//}
//
//- (void)failureOfChartService:(NSString *)msg {
//
//    [MBProgressHUD hideHUDForView:self.view animated:YES];
//    [Tools showAlert:self.view andTitle:@"没有数据"];
//}

//获取产品报表回调

@end
