//
//  BottleListViewController.m
//  Order
//
//  Created by 凯东源 on 2017/11/22.
//  Copyright © 2017年 凯东源. All rights reserved.
//

#import "BottleListViewController.h"
#import "CustomerListViewController.h"

@interface BottleListViewController ()

@end

@implementation BottleListViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"回瓶单列表";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)addBottleOnclick {
    
    CustomerListViewController *vc = [[CustomerListViewController alloc] init];
    vc.vcClass = NSStringFromClass([self class]);
    vc.functionName = @"空瓶回厂";
    [self.navigationController pushViewController:vc animated:YES];
}

@end
