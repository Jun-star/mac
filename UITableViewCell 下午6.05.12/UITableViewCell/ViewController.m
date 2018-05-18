//
//  ViewController.m
//  UITableViewCell
//
//  Created by zmit on 2018/5/16.
//  Copyright © 2018年 zmit. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,retain)UITableView *tableView;
@property (nonatomic,retain)NSMutableArray *_userList;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //NSString *dataPath=[[NSBundle mainBundle]pathForResource:@"Property List.plist" ofType:@"plist"];
    //__userList=[NSMutableArray arrayWithContentsOfFile:dataPath];
    //初始化tableView，设置其大小
    self.tableView=[[UITableView alloc] initWithFrame:CGRectMake(0, 60, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    //设置分割线类型
    self.tableView.separatorStyle=UITableViewCellSeparatorStyleNone;
    self.tableView.dataSource=self;
    self.tableView.delegate=self;
    [self.view addSubview:self.tableView];
    //顶部标签，显示文本
    UILabel *label1=[[UILabel alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 40)];
    label1.text=@"商品列表";
    label1.font=[UIFont systemFontOfSize:25];
    [label1 setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:label1];
    //顶部设置返回按钮
    UIButton *button3=[[UIButton alloc] initWithFrame:CGRectMake(20, 30, 15, 20)];
    UIImage *image1=[UIImage imageNamed:@"icon_login_back"];
    [button3 setBackgroundImage:image1 forState:UIControlStateNormal];
    [self.view addSubview:button3];
}
//读取plist
//-(void)getDataFormList{
    //NSString *plistPath = [[NSBundle mainBundle]pathForResource:@"PropertyList" ofType:@"plist"];
   // NSMutableDictionary *dataDic=[[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    //NSLog(@"%@",dataDic);
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    //设置特定分区有1行
    return 3;
}
//配置特定行中单元格
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *ID = @"cell";
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if(!cell){
        //设置单元格格式UITableViewCellStyleDefault
        cell=[[TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    return cell;
}
//设置单元格的高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //这里设置成150
    return 150;
}

@end
