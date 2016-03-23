//
//  CustomTableViewCell.m
//  HorizontalMultiViewDemo
//
//  Created by james on 16/3/23.
//  Copyright © 2016年 kfvnx. All rights reserved.
//

#import "CustomTableViewCell.h"

@interface CustomTableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *saveMoneyLabel;
@property (weak, nonatomic) IBOutlet UIImageView *tagImageView;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *widthConstraint;
@end

@implementation CustomTableViewCell

- (void)setTitle:(NSString *)title saveMoney:(NSString *)money {
    
    _titleLabel.text = title;
    _saveMoneyLabel.text = money;
    
    CGSize moneySize = [money sizeWithAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:12]}];
    
    _widthConstraint.constant = moneySize.width + 15;
}

@end
