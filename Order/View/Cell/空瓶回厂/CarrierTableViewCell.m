//
//  CarrierTableViewCell.m
//  Order
//
//  Created by 凯东源 on 2017/11/22.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "CarrierTableViewCell.h"

@interface CarrierTableViewCell ()

// 承运商
@property (weak, nonatomic) IBOutlet UILabel *TMS_FLEET_NAME;

// 司机姓名
@property (weak, nonatomic) IBOutlet UILabel *TMS_DRIVER_NAME;

// 司机联系电话
@property (weak, nonatomic) IBOutlet UILabel *TMS_DRIVER_TEL;

@end

@implementation CarrierTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void)setCarrierM:(CarrierModel *)carrierM {
    
    _TMS_FLEET_NAME.text = carrierM.tMSFLEETNAME;
    _TMS_DRIVER_NAME.text = carrierM.tMSDRIVERNAME;
    _TMS_DRIVER_TEL.text = carrierM.tMSDRIVERTEL;
}

@end
