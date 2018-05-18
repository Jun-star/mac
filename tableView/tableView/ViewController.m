//
//  ViewController.m
//  tableView
//
//  Created by zmit on 2018/5/9.
//  Copyright © 2018年 zmit. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _tableView=[[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];//设置视图样式
    _tableView.delegate=self;//设置代理
    _tableView.dataSource=self;//设置数据源
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"reuse"];
    [self.view addSubview:_tableView];
}
//返回多少组
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}
//每组返回多少行
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if(section==0){
        return 3;
    }else if (section==1){
        return 2;
    }else{
        return 1;
    }
}
//每一行显示什么内容，返回单元格
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"reuse" forIndexPath:indexPath];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
