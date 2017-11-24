//
//  BottleListViewController.m
//  Order
//
//  Created by 凯东源 on 2017/11/22.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "BottleListViewController.h"
#import "CustomerListViewController.h"
#import "AppDelegate.h"
#import "BottleListTableViewCell.h"
#import "BottleInfoViewController.h"


@interface BottleListViewController ()<GetReturnBottleListDelegate, UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) GetReturnBottleListService *service;

@property (strong, nonatomic) BottleOrderListModel *bottleOrderListM;

@property (strong, nonatomic) AppDelegate *app;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end


#define kCellHeight 82

#define kCellName @"BottleListTableViewCell"

@implementation BottleListViewController

- (instancetype)init {
    
    if(self = [super init]) {
        
        _service = [[GetReturnBottleListService alloc] init];
        _service.delegate = self;
        
        _app = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    }
    return self;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"回瓶单列表";
    
    [self registerCell];
    
    [_service GetReturnBottleList:_app.business.BUSINESS_IDX andORD_ORG_IDX:@"" andTMS_DRIVER_IDX:@"" andstrType:@"NPLY" andstrPage:1 andstrPageCount:999];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 功能函数

// 注册Cell
- (void)registerCell {
    
    [_tableView registerNib:[UINib nibWithNibName:kCellName bundle:nil] forCellReuseIdentifier:kCellName];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}


- (IBAction)addBottleOnclick {
    
    CustomerListViewController *vc = [[CustomerListViewController alloc] init];
    vc.vcClass = NSStringFromClass([self class]);
    vc.functionName = @"空瓶回厂";
    [self.navigationController pushViewController:vc animated:YES];
}


#pragma mark - UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _bottleOrderListM.bottleOrderModel.count;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return kCellHeight;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // 处理界面
    static NSString *cellId = kCellName;
    BottleListTableViewCell *cell = (BottleListTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    
    BottleOrderModel *m = _bottleOrderListM.bottleOrderModel[indexPath.row];
    
    cell.bottleOrderM = m;
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    BottleOrderModel *m = _bottleOrderListM.bottleOrderModel[indexPath.row];
    
    BottleInfoViewController *vc = [[BottleInfoViewController alloc] init];
    vc.orderIDX = m.iDX;
    
    [self.navigationController pushViewController:vc animated:YES];
}


#pragma mark - GetReturnBottleListDelegate

- (void)successOfGetReturnBottleList:(BottleOrderListModel *)bottleOrderListM {
    
    _bottleOrderListM = bottleOrderListM;
    [_tableView reloadData];
}

- (void)failureOfGetReturnBottleList:(NSString *)msg {
    
    
}

@end
