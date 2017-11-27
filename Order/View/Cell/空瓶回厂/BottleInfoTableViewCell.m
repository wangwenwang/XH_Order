//
//  BottleInfoTableViewCell.m
//  Order
//
//  Created by 凯东源 on 2017/11/27.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "BottleInfoTableViewCell.h"

@interface BottleInfoTableViewCell ()

// 种类
@property (weak, nonatomic) IBOutlet UILabel *PRODUCT_NAME;

// 下单数量
@property (weak, nonatomic) IBOutlet UILabel *ORDER_QTY;

// 实收数量
@property (weak, nonatomic) IBOutlet UILabel *ISSUE_QTY;

@end

@implementation BottleInfoTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void)setBottleDetailItemM:(BottleDetailItemModel *)bottleDetailItemM {
    
    _PRODUCT_NAME.text = bottleDetailItemM.pRODUCTNAME;
    _ORDER_QTY.text = bottleDetailItemM.oRDERQTY;
    _ISSUE_QTY.text = ([_ORD_WORKFLOW isEqualToString:@"已出库"] || [_ORD_WORKFLOW isEqualToString:@"已交付"]) ? bottleDetailItemM.iSSUEQTY : @"尚未收货";
}

@end
