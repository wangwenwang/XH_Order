//
//  FactoryViewController.m
//  Order
//
//  Created by 凯东源 on 2017/12/2.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "FactoryViewController.h"
#import "FactoryTableViewCell.h"

@interface FactoryViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end


#define kCellHeight 52

#define kCellName @"FactoryTableViewCell"

@implementation FactoryViewController


#pragma mark - 生命周期

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"选择厂商";
    
    [self registerCell];
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
    
    return _bottleAddressListM.bottleAddressModel.count;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return kCellHeight;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // 处理界面
    static NSString *cellId = kCellName;
    FactoryTableViewCell *cell = (FactoryTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    
    BottleAddressModel *m = _bottleAddressListM.bottleAddressModel[indexPath.row];
    
    cell.bottleAddressM = m;
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [_tableView deselectRowAtIndexPath:indexPath animated:YES];
    BottleAddressModel *m = _bottleAddressListM.bottleAddressModel[indexPath.row];
    [[NSNotificationCenter defaultCenter] postNotificationName:kBottleViewController_Notification object:nil userInfo:@{@"Factory" : m}];
    [self.navigationController popViewControllerAnimated:YES];
}

@end
