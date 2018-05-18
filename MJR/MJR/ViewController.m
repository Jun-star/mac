//
//  ViewController.m
//  MJR
//
//  Created by zmit on 2018/5/14.
//  Copyright © 2018年 zmit. All rights reserved.
//

#import "ViewController.h"
#import "MJRefresh.h"
@interface ViewController ()

@end


@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//>>>>>>>>>>>>>>>>>>>>>下拉刷新01-默认>>>>>>>>>>>>>>>>>>>>>>
    self.tableView.mj_header=[MJRefreshNormalHeader headerWithRefreshingBlock:^{
        //调用此块当自动进入刷新状态
    }];
    //或：设置回调（一旦进入刷新状态，就会调用目标的动作，即调用[self loadNewData]）
    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector ( loadNewData)];
    [self.tableView.mj_header beginRefreshing];
    
//>>>>>>>>>>>>>>>>>>>>>>下拉刷新02-动画图像>>>>>>>>>>>>>>>>>>
    //设置回调（一旦你进入刷新状态，就会调用目标的动作，即调用[self laodNewData]）
    MJRefreshGifHeader *header=[MJRefreshGifHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadNewData)];
    //设置动画图像的普通状态
    [header setImages: idleImages: forState:MJRefreshStateIdle];
    //设置动画图像的拉动状态（松开后立即输入刷新状态）
    [header setImages:pullingImages: forState:MJRefreshStatePulling];
    //设置动画图像的刷新状态
    [header setImages:refreshingImages: forState:MJRefreshStateRefreshing];
    //设置标题
    self.tableView.mj_header=header;
//>>>>>>>>>>>>>>>>>>>>>>下拉刷新03-隐藏时间和状态>>>>>>>>>>>>>>>>>>
    //隐藏时间
    header.lastUpdatedTimeLabel.hidden=YES;
    //隐藏状态
    header.stateLabel.hidden=YES;
//>>>>>>>>>>>>>>>>>>>>>>下拉刷新04-DIY标题>>>>>>>>>>>>>>>>>>>>
    //设置标题
    [header setTitle:@"Pull down to refresh" forState:MJRefreshStateIdle];
    [header setTitle:@"Release to refresh" forState:MJRefreshStatePulling];
    [header setTitle:@"loading..." forState:MJRefreshStateRefreshing];
    //设置字体字号
    header.stateLabel.font=[UIFont systemFontOfSize:15];
    header.lastUpdatedTimeLabel.font=[UIFont systemFontOfSize:14];
    //设置text颜色
    header.stateLabel.textColor=[UIColor redColor];
    header.lastUpdatedTimeLabel.textColor=[UIColor blueColor];
//>>>>>>>>>>>>>>>>>>>>>>>>下拉刷新05-DIY刷新的控制>>>>>>>>>>>>>>>>>>>>>>>
    self.tableView.mj_header = [MJDIYHeader headerWithRefreshingTarget: self refreshingAction:@selector (loadNewData)];
    //实现引用MJDIYHeader.h和MJDIYHeader.m
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
