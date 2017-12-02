//
//  AddBottleTableViewCell.h
//  Order
//
//  Created by 凯东源 on 2017/12/2.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BottleInfoModel.h"


@protocol AddBottleTableViewCellDelegate <NSObject>

@optional
- (void)productQTYChange;

@end

@interface AddBottleTableViewCell : UITableViewCell

@property (strong, nonatomic) BottleInfoModel *bottleInfoM;

@property (weak, nonatomic) id <AddBottleTableViewCellDelegate> delegate;

@end
