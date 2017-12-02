//
//  PlateNumberViewController.m
//  Order
//
//  Created by 凯东源 on 2017/12/2.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "PlateNumberViewController.h"
#import "PlateNumberTableViewCell.h"
#import <MBProgressHUD.h>
#import "UITableView+NoDataPrompt.h"
#import "GetPlateListService.h"

@interface PlateNumberViewController () <UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate, GetPlateListServiceDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) GetPlateListService *service;

@property (strong, nonatomic) PlateListModel *plateListM;

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@end


#define kCellHeight 44

#define kCellName @"PlateNumberTableViewCell"

// 温馨提示
#define kPrompt @"您还没有订单哦"

@implementation PlateNumberViewController

- (instancetype)init {
    
    if(self = [super init]) {
        
        _service = [[GetPlateListService alloc] init];
        _service.delegate = self;
    }
    return self;
}


- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"选择车牌";
    
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
    
    return _plateListM.plateNumberModel.count;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return kCellHeight;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // 处理界面
    static NSString *cellId = kCellName;
    PlateNumberTableViewCell *cell = (PlateNumberTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    
    PlateNumberModel *m = _plateListM.plateNumberModel[indexPath.row];
    
    cell.plateNumberM = m;
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [_tableView deselectRowAtIndexPath:indexPath animated:YES];
    PlateNumberModel *m = _plateListM.plateNumberModel[indexPath.row];
    [[NSNotificationCenter defaultCenter] postNotificationName:kBottleViewController_Notification object:nil userInfo:@{@"PlateNumber" : m}];
    [self.navigationController popViewControllerAnimated:YES];
}


#pragma mark - UISearchBarDelegate

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
    
    NSLog(@"%@", searchBar.text);
//    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    
    [_service GetPlateList:_fleetId andstrPlateNumber:searchBar.text];
}


#pragma mark - GetPlateListServiceDelegate

- (void)successOfGetPlateList:(PlateListModel *)plateListM {
    
//    [MBProgressHUD hideHUDForView:self.view animated:YES];
    
    _plateListM = plateListM;
    
    [_tableView removeNoOrderPrompt];
    [_tableView reloadData];
}


- (void)successOfGetPlateList_NoData {
    
//    [MBProgressHUD hideHUDForView:self.view animated:YES];
    _plateListM.plateNumberModel = nil;
    [_tableView noData:kPrompt andImageName:LM_NoResult_noOrder];
    [_tableView reloadData];
}


- (void)failureOfGetPlateList:(NSString *)msg {
    
//    [MBProgressHUD hideHUDForView:self.view animated:YES];
    _plateListM.plateNumberModel = nil;
    [_tableView reloadData];
    [_tableView noData:msg andImageName:LM_NoResult_noOrder];
}

@end
