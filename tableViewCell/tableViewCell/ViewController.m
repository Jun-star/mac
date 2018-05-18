//
//  ViewController.m
//  tableViewCell
//
//  Created by zmit on 2018/5/17.
//  Copyright © 2018年 zmit. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray *_userList;
    UITableView *_tableView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //初始化tableView，设置其大小
    _tableView=[[UITableView alloc] initWithFrame:CGRectMake(0, 60, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    //设置分割线类型
    _tableView.separatorStyle=UITableViewCellSeparatorStyleNone;
    _tableView.dataSource=self;
    _tableView.delegate=self;
    [self.view addSubview:_tableView];
    
    //设置pilst文件路径
    NSString *dataPath = [[NSBundle mainBundle] pathForResource:@"shoping.plist" ofType:nil];
    //填充数组内容
    _userList =[NSMutableArray arrayWithContentsOfFile:dataPath];
    
    
    //顶部标签，显示文本
    UILabel *label1=[[UILabel alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 40)];
    label1.text=@"特价商品列表";
    label1.font=[UIFont systemFontOfSize:25];
    [label1 setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:label1];
    //顶部设置返回按钮
    UIButton *button1=[[UIButton alloc] initWithFrame:CGRectMake(20, 30, 15, 20)];
    UIImage *image1=[UIImage imageNamed:@"icon_login_back"];
    [button1 setBackgroundImage:image1 forState:UIControlStateNormal];
    [self.view addSubview:button1];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    //设置有多少分区
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    //设置特定分区有多少行
    return _userList.count;
}
//配置特定行中单元格
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //static NSString *ID = @"cell";
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    NSDictionary *dic = [_userList objectAtIndex:indexPath.row];
    NSString *image = [dic valueForKey:@"image"];
    NSString *la=[dic valueForKey:@"la"];
    NSString *la1=[dic valueForKey:@"la-price1"];
    NSString *la2=[dic valueForKey:@"la-price2"];
    //设置”特价“的红色字体和字号及所处位置
    UILabel *label2=[[UILabel alloc] initWithFrame:CGRectMake(105,8,80,25)];
    label2.text=@"【特价】";
    label2.textColor=[UIColor redColor];
    label2.font=[UIFont systemFontOfSize:15];
    [cell.contentView addSubview:label2];
    //设置描述商品文本字体大小及其所处位置
    UILabel *label3=[[UILabel alloc] initWithFrame:CGRectMake(160, 0, 200, 60)];
    [label3 setNumberOfLines:2];
    label3.text=la;
    //label3.textColor=[UIColor lightGrayColor];
    label3.font=[UIFont systemFontOfSize:15];
    [cell.contentView addSubview:label3];
    //设置当前金额
    UILabel *label4=[[UILabel alloc] initWithFrame:CGRectMake(115, 65, 80, 20)];
    label4.text=la1;
    label4.textColor=[UIColor redColor];
    label4.font=[UIFont systemFontOfSize:15];
    [cell.contentView addSubview:label4];
    //设置市场价金额
    UILabel *label5=[[UILabel alloc] initWithFrame:CGRectMake(110, 70, 180, 60)];
    label5.text=la2;
    label5.textColor=[UIColor lightGrayColor];
    label5.font=[UIFont systemFontOfSize:12];
    [cell.contentView addSubview:label5];
    //输出下划线
    UILabel *label6=[[UILabel alloc] initWithFrame:CGRectMake(160, 65, 300, 60)];
    label6.text=@"_________";
    label6.textColor=[UIColor lightGrayColor];
    label6.font=[UIFont systemFontOfSize:12];
    [cell.contentView addSubview:label6];
    //设置图片大小位置
    UIImageView *imageView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:image]];
    imageView.frame=CGRectMake(0,0,110,110);
    [cell.contentView addSubview:imageView];
    //详细标签文本颜色
    cell.detailTextLabel.textColor=[UIColor grayColor];
    
    
    return cell;
}
//设置单元格的高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //这里设置成120
    return 120;
}



@end
