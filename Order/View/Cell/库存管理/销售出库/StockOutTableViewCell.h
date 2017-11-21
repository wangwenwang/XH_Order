//
//  StockOutTableViewCell.h
//  Order
//
//  Created by 凯东源 on 16/10/14.
//  Copyright © 2016年 凯东源. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProductModel.h"

@protocol StockOutTableViewCellDelegate <NSObject>

@optional
- (void)delNumberOnclick:(double)price andIndexRow:(int)indexRow andSection:(NSInteger)section;

@optional
- (void)addNumberOnclick:(double)price andIndexRow:(int)indexRow andSection:(NSInteger)section;

@optional
- (void)productNumberOnclick:(double)price andIndexRow:(int)indexRow andSelectedNumber:(long long)selectedNumber andSection:(NSInteger)section;

@optional
- (void)noStockOfStockOutTableViewCell;

@end

@interface StockOutTableViewCell : UITableViewCell

@property (weak, nonatomic) id<StockOutTableViewCellDelegate> delegate;


@property (weak, nonatomic) IBOutlet UITableView *myTableView;

/// 产品图片
@property (weak, nonatomic) IBOutlet UIImageView *productImageView;

/// 产品名称
@property (weak, nonatomic) IBOutlet UILabel *productNameLabel;

/// 产品规格
@property (weak, nonatomic) IBOutlet UILabel *productFormatLabel;

/// 产品价格
@property (weak, nonatomic) IBOutlet UILabel *productPriceLabel;

/// 减少产品数量
- (IBAction)delNumberOnclick:(UIButton *)sender;

/// 将要下单的产品数量
@property (weak, nonatomic) IBOutlet UIButton *productNumberButton;

/// 增加产品数量
- (IBAction)addNumberOnclick:(UIButton *)sender;

/// 显示促销提示View
@property (weak, nonatomic) IBOutlet UIView *policyPromptView;

/// 显示促销提示imageView
@property (weak, nonatomic) IBOutlet UIImageView *PolicyPromptImageView;

/// 促销tableView的父View
@property (weak, nonatomic) IBOutlet UIView *policyTableviewSuperView;

/// 库存
@property (weak, nonatomic) IBOutlet UILabel *inventoryLabel;

/// 自定义输入数量
- (IBAction)productNumberOnclick:(UIButton *)sender;

/// 促销array
@property (strong, nonatomic) NSMutableArray *policys;

/// 产品模型
@property (strong, nonatomic) ProductModel *product;

/// Cell高度
@property (assign, nonatomic) float cellHeight;

/// 自己的高度
@property (assign, nonatomic) float selfHeight;

@property (assign, nonatomic) NSInteger section;

// 产品规格距下
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *productFormatLabel_bottom;

/// 库存数量
@property (weak, nonatomic) IBOutlet UILabel *STOCK_QTY;

/// 库存数量 提示
@property (weak, nonatomic) IBOutlet UILabel *STOCK_QTY_Label;

/// 点击事件下标
@property (assign, nonatomic) NSInteger didselectIndex;

@end
