//
//  FactoryTableViewCell.m
//  Order
//
//  Created by 凯东源 on 2017/12/2.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "FactoryTableViewCell.h"

@interface FactoryTableViewCell ()

// 供应商名称
@property (weak, nonatomic) IBOutlet UILabel *PARTY_NAME;

// 供应商地址
@property (weak, nonatomic) IBOutlet UILabel *PARTY_ADDRESS;

@end

@implementation FactoryTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void)setBottleAddressM:(BottleAddressModel *)bottleAddressM {
    
    _PARTY_NAME.text = bottleAddressM.pARTYNAME;
    _PARTY_ADDRESS.text = bottleAddressM.aDDRESSINFO;
}

@end
