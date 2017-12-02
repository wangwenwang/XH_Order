//
//  AddBottleTableViewCell.m
//  Order
//
//  Created by 凯东源 on 2017/12/2.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "AddBottleTableViewCell.h"

@interface AddBottleTableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *PRODUCT_NAME;

@end

@implementation AddBottleTableViewCell


- (void)awakeFromNib {
    
    [super awakeFromNib];
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    
    [super setSelected:selected animated:animated];
}


- (void)setBottleInfoM:(BottleInfoModel *)bottleInfoM {
    
    _bottleInfoM = bottleInfoM;
    _PRODUCT_NAME.text = bottleInfoM.pRODUCTNAME;
}


- (IBAction)textChange:(UITextField *)sender {
    
    _bottleInfoM.pOQTY = [sender.text trim];
    
    if([_delegate respondsToSelector:@selector(productQTYChange)]) {
        
        [_delegate productQTYChange];
    }
}

@end
