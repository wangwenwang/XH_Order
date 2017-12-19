//
//  BottleListTableViewCell.m
//  Order
//
//  Created by 凯东源 on 2017/11/24.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "BottleListTableViewCell.h"

@interface BottleListTableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *ORD_NO;

@property (weak, nonatomic) IBOutlet UILabel *ORD_WORKFLOW;

@property (weak, nonatomic) IBOutlet UILabel *ORD_DATE_ADD;

@property (weak, nonatomic) IBOutlet UILabel *TMS_DATE_ISSUE;

@property (weak, nonatomic) IBOutlet UILabel *ORD_TO_ADDRESS;

@end

@implementation BottleListTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void)setBottleOrderM:(BottleOrderModel *)bottleOrderM {
    
    _ORD_NO.text = bottleOrderM.oRDNO;
    _ORD_WORKFLOW.text = bottleOrderM.oRDWORKFLOW;
    _ORD_DATE_ADD.text = bottleOrderM.oRDDATEADD;
    _TMS_DATE_ISSUE.text = bottleOrderM.tMSDATEISSUE;
    _ORD_TO_ADDRESS.text = bottleOrderM.oRDTOADDRESS;
}

@end
