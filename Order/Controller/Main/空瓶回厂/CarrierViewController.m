//
//  CarrierViewController.m
//  Order
//
//  Created by 凯东源 on 2017/11/22.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "CarrierViewController.h"
#import <MBProgressHUD.h>
#import "GetShipmentListService.h"
#import "CarrierListModel.h"
#import "CarrierTableViewCell.h"
#import "UITableView+NoDataPrompt.h"

@interface CarrierViewController ()<UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate, GetShipmentListDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) GetShipmentListService *service;

@property (strong, nonatomic) CarrierListModel *carrierListM;

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@property (strong, nonatomic) UIButton *searchButton;

@end


#define kCellHeight 105

#define kCellName @"CarrierTableViewCell"


@implementation CarrierViewController

- (instancetype)init {
    
    if(self = [super init]) {
        
        _service = [[GetShipmentListService alloc] init];
        _service.delegate = self;
    }
    return self;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"选择承运商";
    
    [self registerCell];
}


- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [_searchBar becomeFirstResponder];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - 功能函数

// 注册Cell
- (void)registerCell {
    
    [_tableView registerNib:[UINib nibWithNibName:kCellName bundle:nil] forCellReuseIdentifier:kCellName];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}


#pragma mark - UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _carrierListM.carrierModel.count;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return kCellHeight;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // 处理界面
    static NSString *cellId = kCellName;
    CarrierTableViewCell *cell = (CarrierTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    
    CarrierModel *m = _carrierListM.carrierModel[indexPath.row];
    
    cell.carrierM = m;
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [_tableView deselectRowAtIndexPath:indexPath animated:YES];
    CarrierModel *m = _carrierListM.carrierModel[indexPath.row];
    [[NSNotificationCenter defaultCenter] postNotificationName:kBottleViewController_Notification object:nil userInfo:@{@"Carrier" : m}];
    [self.navigationController popViewControllerAnimated:YES];
}


#pragma mark - UISearchBarDelegate

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    
    NSLog(@"%@", searchBar.text);
    [self.view endEditing:YES];
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    
    [_service GetShipmentList:searchBar.text];
}


#pragma mark - GetShipmentListDelegate

- (void)successOfGetShipmentList:(CarrierListModel *)carrierListM {
    
    [MBProgressHUD hideHUDForView:self.view animated:YES];
    _carrierListM = carrierListM;
    [_tableView removeNoOrderPrompt];
    [_tableView reloadData];
}


- (void)successOfGetShipmentList_NoData {
    
    [MBProgressHUD hideHUDForView:self.view animated:YES];
    _carrierListM = nil;
    [_tableView noData:@"司机不存在" andImageName:LM_NoResult_noResult];
    [_tableView reloadData];
}


- (void)failureOfGetShipmentList:(NSString *)msg {
    
    [MBProgressHUD hideHUDForView:self.view animated:YES];
    _carrierListM = nil;
    [_tableView noData:msg andImageName:LM_NoResult_noResult];
    [_tableView reloadData];
}

@end
