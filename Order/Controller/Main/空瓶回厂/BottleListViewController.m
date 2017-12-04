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
#import "GetReturnOrderListService.h"
#import "Tools.h"
#import <MJRefresh.h>
#import "UITableView+NoDataPrompt.h"
#import "LMTitleView.h"


@interface BottleListViewController ()<GetReturnOrderListDelegate, UITableViewDataSource, UITableViewDelegate, LMTitleViewDataSource, LMTitleViewDelegate>

@property (strong, nonatomic) GetReturnOrderListService *service;

@property (strong, nonatomic) AppDelegate *app;

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (assign, nonatomic) BOOL isReloadTableView;
@property (assign, nonatomic) int page;
@property (strong, nonatomic) NSMutableArray *orders;
@property (strong, nonatomic) NSString *strState;
@property (weak, nonatomic) IBOutlet UIButton *addBottleBtn;

// TitleView
@property (strong, nonatomic) LMTitleView *lmTitleView;
@property (strong, nonatomic) NSArray *menuTexts;

@end

#define kPageCount 20

#define kCellHeight 115

#define kCellName @"BottleListTableViewCell"

// 温馨提示
#define kPrompt @"您还没有订单哦"

@implementation BottleListViewController


#pragma mark - 生命周期

- (instancetype)init {
    
    if(self = [super init]) {
        
        _service = [[GetReturnOrderListService alloc] init];
        _service.delegate = self;
        
        _app = (AppDelegate *)[[UIApplication sharedApplication] delegate];
        
        _orders = [[NSMutableArray alloc] init];
        _strState = @"NPLY";
    }
    return self;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"回瓶单列表";
    
    [self addNotification];
    
    [self registerCell];
    
    // 下拉刷新
    MJRefreshGifHeader *header = [MJRefreshGifHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadMoreDataDown)];
    header.lastUpdatedTimeLabel.hidden = YES;
    _tableView.mj_header = header;
    
    // 上拉分页加载
    _tableView.mj_footer = [MJRefreshAutoNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(loadMoreDataUp)];
    _tableView.mj_footer.hidden = YES;
    
    [_tableView.mj_header beginRefreshing];
    
    // TitleView
    _lmTitleView = [[LMTitleView alloc] initLMTitleView:self andUINavigationItem:self.navigationItem];
    _lmTitleView.dataSource = self;
    _lmTitleView.dalegate = self;
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    _menuTexts = @[@"未交付", @"已交付", @"已取消"];
    _lmTitleView.titleText = _menuTexts[0];
    _lmTitleView.menuCount = _menuTexts.count;
}


- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    if([_app.user.USER_TYPE isEqualToString:kFACTORY]) {
        
        _addBottleBtn.hidden = YES;
    }
}


- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    
    if(_isReloadTableView) {
        
        _lmTitleView.titleText = _menuTexts[0];
        [self setStrState_LM];
        [_tableView.mj_header beginRefreshing];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)dealloc {
    
    [self removeNotification];
}


#pragma mark - 通知

- (void)addNotification {
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receiveMsg:) name:kBottleListViewController_receiveMsg object:nil];
}


- (void)removeNotification {
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:kBottleListViewController_receiveMsg object:nil];
}


- (void)receiveMsg:(NSNotification *)aNotify {
    
    _isReloadTableView = YES;
    
    NSString *msg = aNotify.userInfo[@"msg"];
    [Tools showAlert:self.view andTitle:msg andTime:2.5];
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


- (void)loadMoreDataUp {
    
    if([Tools isConnectionAvailable]) {
        
        _page ++;
        [_service GetReturnOrderList:_app.business.BUSINESS_IDX andstrUserId:_app.user.IDX andstrPartyType:@"" andstrPartyId:@"" andstrState:_strState andstrPage:_page andstrPageCount:kPageCount];
    } else {
        
        [Tools showAlert:self.view andTitle:@"网络连接不可用"];
    }
}


- (void)loadMoreDataDown {
    
    if([Tools isConnectionAvailable]) {
        
        _page = 1;
        [_service GetReturnOrderList:_app.business.BUSINESS_IDX andstrUserId:_app.user.IDX andstrPartyType:@"" andstrPartyId:@"" andstrState:_strState andstrPage:_page andstrPageCount:kPageCount];
    } else {
        
        [Tools showAlert:self.view andTitle:@"网络连接不可用"];
    }
}


- (void)setStrState_LM {
    
    if([_lmTitleView.titleText isEqualToString:@"未交付"]) {
        
        _strState = @"NPLY";
    } else if([_lmTitleView.titleText isEqualToString:@"已交付"]){
        
        _strState = @"YPLY";
    } else if([_lmTitleView.titleText isEqualToString:@"已取消"]){
        
        _strState = @"CANCEL";
    }
}


#pragma mark - UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _orders.count;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    BottleOrderModel *m = _orders[indexPath.row];
    return m.cellHeight;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // 处理界面
    static NSString *cellId = kCellName;
    BottleListTableViewCell *cell = (BottleListTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    
    BottleOrderModel *m = _orders[indexPath.row];
    
    cell.bottleOrderM = m;
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    BottleOrderModel *m = _orders[indexPath.row];
    
    BottleInfoViewController *vc = [[BottleInfoViewController alloc] init];
    vc.orderIDX = m.iDX;
    
    [self.navigationController pushViewController:vc animated:YES];
}


#pragma mark - GetReturnOrderListDelegate

- (void)successOfGetReturnBottleList:(BottleOrderListModel *)bottleOrderListM {
    
    [_tableView.mj_header endRefreshing];
    [_tableView.mj_footer endRefreshing];
    _isReloadTableView = NO;
    
    for (int i = 0; i < bottleOrderListM.bottleOrderModel.count; i++) {
        
        BottleOrderModel *m = bottleOrderListM.bottleOrderModel[i];
        // 收货地址换行
        CGFloat oneLine = [Tools getHeightOfString:@"fds" fontSize:15 andWidth:MAXFLOAT];
        CGFloat mulLine = [Tools getHeightOfString:m.oRDTOADDRESS fontSize:15 andWidth:(ScreenWidth - 8 - 69.5 - 3)];
        m.cellHeight = kCellHeight + (mulLine - oneLine);
    }
    
    // 页数处理
    if(_page == 1) {
        
        _orders = [bottleOrderListM.bottleOrderModel mutableCopy];
        
        if(bottleOrderListM.bottleOrderModel.count == 0) {
            
            [_tableView noData:@"您还没有订单哦" andImageName:LM_NoResult_noResult];
        } else {
            
            [_tableView removeNoOrderPrompt];
        }
    } else {
        for(int i = 0; i < bottleOrderListM.bottleOrderModel.count; i++) {
            
            BottleOrderModel *order = bottleOrderListM.bottleOrderModel[i];
            [_orders addObject:order];
        }
    }
    _tableView.mj_footer.hidden = NO;
    [_tableView reloadData];
}


- (void)successOfGetReturnBottleList_NoData {
    
    [_tableView.mj_header endRefreshing];
    
    if(_page == 1) { // 没有数据
        
        [_orders removeAllObjects];
        _tableView.mj_footer.hidden = YES;
        [_tableView noData:kPrompt andImageName:LM_NoResult_noOrder];
    } else {  // 已加载完毕
        
        [_tableView.mj_footer endRefreshingWithNoMoreData];
        [_tableView removeNoOrderPrompt];
        [_tableView.mj_footer setCount_NoMoreData:_orders.count];
    }
    [_tableView reloadData];
}


- (void)failureOfGetReturnBottleList:(NSString *)msg {
    
    [_tableView.mj_header endRefreshing];
    [_tableView.mj_footer endRefreshing];
}


#pragma mark - LMTitleViewDataSource

- (NSString *)menu:(LMTitleView *)menu titleForRowAtIndexPath:(NSUInteger)indexPath_row {
    
    return _menuTexts[indexPath_row];
}


#pragma mark - LMTitleViewDelegate

- (void)menu:(LMTitleView *)menu didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    _lmTitleView.titleText = _menuTexts[indexPath.row];
    [self setStrState_LM];
    [_tableView.mj_header beginRefreshing];
}


#pragma mark - 事件

// 点击Cell
- (void)LMTitleViewOnclick {
    
    [_lmTitleView LMTitleViewOnclick];
}


// 点击灰色区域取消
- (void)LMTitleViewCoverOnclick {
    
    [_lmTitleView LMTitleViewCoverOnclick];
}

@end
