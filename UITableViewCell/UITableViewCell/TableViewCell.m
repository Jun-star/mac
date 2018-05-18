//
//  TableViewCell.m
//  UITableViewCell
//
//  Created by zmit on 2018/5/16.
//  Copyright © 2018年 zmit. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self=[super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        //设置UIButton的类型：UIButtonTypeRoundedRect
        UIButton *button = [UIButton buttonWithType:(UIButtonTypeRoundedRect)];
        //设置button的frame
        button.frame=CGRectMake(20, 20, 50, 50);
        //button的正常态标题设为Yes，被选择态设为No
        [button setTitle:@"Yes" forState:UIControlStateNormal];
        [button setTitle:@"No" forState:(UIControlStateSelected)];
        //设置button的响应点击事件的方法是buttonPressed：
        [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
        //添加到cell
        [self addSubview:button];
        //创建imageView到cell中
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"001.jpg"]];
        imageView.frame=CGRectMake(20, 20, 150, 100);
        [self addSubview:imageView];
    }
    return  self;
}
//buttonPressed:方法
-(void)buttonPressed:(UIButton *)button{
    //实现按钮状态切换
    button.selected = !button.selected;
}
@end
