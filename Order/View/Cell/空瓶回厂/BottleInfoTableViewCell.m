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

// 司机实运数量
@property (weak, nonatomic) IBOutlet UILabel *ISSUE_QTY;

// 工厂实收数量
@property (weak, nonatomic) IBOutlet UITextField *QTY_DELIVERY;
@property (weak, nonatomic) IBOutlet UIView *QTY_DELIVERY_line;

// 短少数量
@property (weak, nonatomic) IBOutlet UILabel *QTY_MISSING;

// 不合格数量
@property (weak, nonatomic) IBOutlet UITextField *QTY_REJECT;
@property (weak, nonatomic) IBOutlet UIView *QTY_REJECT_line;

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
    
    _bottleDetailItemM = bottleDetailItemM;
    
    _PRODUCT_NAME.text = _bottleDetailItemM.pRODUCTNAME;
    _ORDER_QTY.text = _bottleDetailItemM.oRDERQTY;
//    _ISSUE_QTY.text = ([_ORD_WORKFLOW isEqualToString:@"已出库"] || [_ORD_WORKFLOW isEqualToString:@"已交付"]) ? _bottleDetailItemM.iSSUEQTY : @"尚未收货";
    _ISSUE_QTY.text = _bottleDetailItemM.iSSUEQTY;
    _QTY_MISSING.text = _bottleDetailItemM.qTYMISSING;
    if([_ORD_WORKFLOW isEqualToString:@"已出库"] && [_USER_TYPE isEqualToString:kFACTORY]) {
        
        _QTY_DELIVERY.enabled = YES;
        _QTY_DELIVERY_line.hidden = NO;
        _QTY_REJECT.enabled = YES;
        _QTY_REJECT_line.hidden = NO;
        _bottleDetailItemM.qTYDELIVERY = _bottleDetailItemM.iSSUEQTY;
        _bottleDetailItemM.qTYREJECT = @"0";
    } else {
        _QTY_DELIVERY.enabled = NO;
        _QTY_DELIVERY_line.hidden = YES;
        _QTY_REJECT.enabled = NO;
        _QTY_REJECT_line.hidden = YES;
    }
    _QTY_DELIVERY.text = _bottleDetailItemM.qTYDELIVERY;
    _QTY_REJECT.text = _bottleDetailItemM.qTYREJECT;
}


- (IBAction)changeOnclick:(UITextField *)sender {
    
    if(sender.tag == 1001) {
        
        _bottleDetailItemM.qTYDELIVERY = sender.text;
    } else if(sender.tag == 1002) {
        
        _bottleDetailItemM.qTYREJECT = sender.text;
    }
}

@end
