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

// 数量
@property (weak, nonatomic) IBOutlet UILabel *qtyLabel;

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
    _qtyLabel.text = bottleDetailItemM.pRODUCTNAME;
}

@end
