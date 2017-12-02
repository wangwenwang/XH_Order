//
//  PlateNumberTableViewCell.m
//  Order
//
//  Created by 凯东源 on 2017/12/2.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "PlateNumberTableViewCell.h"

@interface PlateNumberTableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *TMS_PLATE_NUMBER;

@end

@implementation PlateNumberTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void)setPlateNumberM:(PlateNumberModel *)plateNumberM {
    
    _TMS_PLATE_NUMBER.text = plateNumberM.tMSPLATENUMBER;
}

@end
