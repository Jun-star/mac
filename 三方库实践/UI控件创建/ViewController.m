//
//  ViewController.m
//  UI控件创建
//
//  Created by zmit on 2018/5/7.
//  Copyright © 2018年 zmit. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,retain) NSArray *dataList;
@property (nonatomic,retain) UITableView *myTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //创建lable
    UILabel *lable=[[UILabel alloc] initWithFrame:CGRectMake(50,50,200,400)];
    [self.view addSubview:lable];
    lable.text=@"hi!";//设置文本内容
    lable.font=[UIFont systemFontOfSize:15];//设置字体类型与大小
    lable.textColor=[UIColor lightGrayColor];//设置字体颜色
    lable.textAlignment=NSTextAlignmentLeft;// 设置文本对齐方式（left，right，center）
    lable.lineBreakMode=NSLineBreakByCharWrapping;//  文本省略方式：保留整个单词，以空格为边界：ByWordWrapping=0;保留整个字符：ByCharWrapping;省略开头，以省略号代替：ByTruncatingHead;省略结尾，以省略号代替：ByTruncatingTail;省略中间部分，以省略号代替：ByTruncatingMiddle
    lable.numberOfLines=1;
    [lable sizeToFit];
    lable.adjustsFontSizeToFitWidth=YES;
    //创建button
    UIButton *button=[[UIButton alloc] initWithFrame:CGRectMake(80,80,50,50)];
    [self.view addSubview:button];
    //创建imageview
    UIImageView *imageView=[[UIImageView alloc] initWithFrame:CGRectMake(100,100 ,175,175)];
    [self.view addSubview:imageView];
    UIImage *image=[UIImage imageNamed:@"1.png"];
    imageView.image=image;//根据自身大小改变添加图片的大小
    [self.view addSubview:imageView];
    [self.view addSubview:lable];
    /*
     或者
     */
    UITableView *tableView=[[UITableView alloc] initWithFrame:CGRectMake(50,80,100,100)];
    tableView.tag=10001;
    tableView.rowHeight=92;
    tableView.sectionHeaderHeight=40;
    tableView.sectionFooterHeight=40;
    tableView.estimatedRowHeight=92;
    tableView.estimatedSectionHeaderHeight=40;
    tableView.estimatedSectionFooterHeight=40;
    
    NSArray *list=[NSArray arrayWithObjects:@"1",@"2",@"3",@"4",nil];
    self.dataList=list;
    //UITableView *myTableView=[[[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain]autorelase];
    self.myTableView.dataSource=self;//设置数据源
    self.myTableView.delegate=self;//设置委托
    tableView.backgroundView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1.png"]];
    self.myTableView=tableView;
    [self.view addSubview:_myTableView];
    
   
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}






@end
