//
//  TableViewCell.m
//  UItableView
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


//初始化一个UITableViewCell对象
-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self=[super initWithStyle:style reuseIdentifier:reuseIdentifier]){
//>>>>>>>>>>>>>>>>>>>第一行单元格>>>>>>>>>>>>>>>>>>
        //设置UIButton的类型：UIButtonTypeRoundedRect
        UIButton *button1 = [UIButton buttonWithType:(UIButtonTypeRoundedRect)];
        //设置button的frame
        button1.frame=CGRectMake(20, 20, 150, 130);
        //button的正常态标题设为Yes，被选择态设为No
       // [button setTitle:@"Yes" forState:UIControlStateNormal];
        //[button setTitle:@"No" forState:(UIControlStateSelected)];
        //设置button的响应点击事件的方法是buttonPressed：
        //[button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
        //添加到cell
        //[self addSubview:button];
        [button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button1 setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        //创建imageView到cell中
        UIImageView *imageView1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"th-2.jpg"]];
        imageView1.frame=CGRectMake(20, 20, 150, 130);
        [self addSubview:imageView1];
        [self addSubview:button1];
        //
        
        
        //设置“特价“信息
        UIButton *button2 = [UIButton buttonWithType:(UIButtonTypeRoundedRect)];
        //设置button2的frame
        button2.frame=CGRectMake(160, 20, 150, 30);
        [button2 setTitle:@"【特价】手表降价" forState:UIControlStateNormal];
        [button2 setTitle:@"【特价】手表降价" forState:UIControlStateHighlighted];
        [button2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button2 setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        [self addSubview:button2];

        
        UILabel *label2=[[UILabel alloc] initWithFrame:CGRectMake(180, 90,60, 30)];
        [label2 setText:@"688.00"];
        
        [self addSubview:label2];
        UILabel *label3=[[UILabel alloc] initWithFrame:CGRectMake(180, 120, 200, 30)];
        [label3 setText:@"市场价：888.00"];
        [self addSubview:label3];
        
    }
    return  self;
}
//buttonPressed:方法
-(void)buttonPressed:(UIButton *)button{
    //实现按钮状态切换
    button.selected = !button.selected;
}
@end
