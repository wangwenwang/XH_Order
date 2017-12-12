//
//  ScanCodeViewController.m
//  Order
//
//  Created by 凯东源 on 2017/12/12.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "ScanCodeViewController.h"
#import <SGQRCodeScanManager.h>

@interface ScanCodeViewController ()

@end

@implementation ScanCodeViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    /// 扫描二维码创建
    SGQRCodeScanManager *scanManager = [SGQRCodeScanManager sharedManager];
    NSArray *arr = @[AVMetadataObjectTypeQRCode, AVMetadataObjectTypeEAN13Code, AVMetadataObjectTypeEAN8Code, AVMetadataObjectTypeCode128Code];
    // AVCaptureSessionPreset1920x1080 推荐使用，对于小型的二维码读取率较高
    [scanManager setupSessionPreset:AVCaptureSessionPreset1920x1080 metadataObjectTypes:arr currentController:self];
    scanManager.delegate = self;
    
    
    /// 从相册中读取二维码方法
    SGQRCodeAlbumManager *albumManager = [SGQRCodeAlbumManager sharedManager];
    [albumManager readQRCodeFromAlbumWithCurrentController:self];
    albumManager.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
