//
//  ViewController.m
//  SDC
//
//  Created by zmit on 2018/5/15.
//  Copyright © 2018年 zmit. All rights reserved.
//

#import "ViewController.h"
#import "SDCycleScrollView.h"
//#import "CustomCollectionViewCell.h"
//#import "UIImageView+WebCache.h"
@interface ViewController ()<SDCycleScrollViewDelegate>

@end

@implementation ViewController
{
    NSArray *_imagesURLStrings;
    SDCycleScrollView *_customCellScrollViewDemo;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor colorWithRed:0.98 green:0.98 blue:0.98 alpha:0.99];
    UIImageView *backgroundView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"001.jpg"]];
    backgroundView.frame=self.view.bounds;
    [self.view addSubview:backgroundView];
    
    UIScrollView *demoContainerView=[[UIScrollView alloc] initWithFrame:self.view.frame];
    demoContainerView.contentSize=CGSizeMake(self.view.frame.size.width,1200);
    [self.view addSubview:demoContainerView];
    self.title=@"轮播Demo";


    //情景一：采用本地图片
    //NSArray *imageNames=@[@"th-1.jpg",@"th-2.jpg",@"th-3.jpg"];
    //情景二：采用网络图片
    NSArray *imagesURLStrings =@[@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1526639647054&di=2b67cb5b8480bfb53b774b63fadd0a49&imgtype=0&src=http%3A%2F%2Fa.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F10dfa9ec8a136327f216788d9d8fa0ec09fac791.jpg",@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1526639647054&di=4da496b44d8e131d46498fd186492caa&imgtype=0&src=http%3A%2F%2Fb.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F314e251f95cad1c85e377d83733e6709c83d5182.jpg",@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1526639647053&di=d7d316a7cbf8f5865014f0d49f92f0b8&imgtype=0&src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2Fc2cec3fdfc039245a92696b68b94a4c27c1e25f3.jpg",@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1526639647052&di=56606b4161aa9e699d5c896e3610d364&imgtype=0&src=http%3A%2F%2Fd.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F29381f30e924b899fac5f18162061d950b7bf68a.jpg"];
    _imagesURLStrings=imagesURLStrings;
    //情景三：图片配文字
    NSArray *titles=@[@"1",@"2",@"3",@"4"];
    CGFloat w=self.view.bounds.size.width;
    
//>>>>>>>>>>>>>>>>>demo图片轮播一>>>>>>>>>>>>>>>>>>>>
      //本地加载 -- 创建不带标题的图片轮播器
   // SDCycleScrollView *cycleScrollView=[SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 64, w, 180) shouldInfiniteLoop:YES imageNamesGroup:imageNames];
   // cycleScrollView.delegate=self;
   // cycleScrollView.titlesGroup=titles;
   // cycleScrollView.pageControlStyle=SDCycleScrollViewPageContolStyleAnimated;
    //[demoContainerView addSubview:cycleScrollView];

    //cycleScrollView.scrollDirection=UICollectionViewScrollDirectionHorizontal;
    //轮播时间间隔默认1秒，可自定义
   // cycleScrollView.autoScrollTimeInterval=4.0;
//>>>>>>>>>>>>>>>demo图片轮播二>>>>>>>>>>>>>>>>>>>>>>>
    //网络加载  -- 创建带标题的图片轮播器
    SDCycleScrollView *cycleScrollView2=[SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 280, w, 180) delegate:self placeholderImage:[UIImage imageNamed: @"placeholder"]];
    cycleScrollView2.pageControlAliment=SDCycleScrollViewPageContolAlimentRight;
    cycleScrollView2.titlesGroup=titles;
    cycleScrollView2.currentPageDotColor=[UIColor whiteColor];
    [demoContainerView addSubview:cycleScrollView2];
    //     --模拟加载延迟
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.3*NSEC_PER_SEC)),dispatch_get_main_queue(),^{
        cycleScrollView2.imageURLStringsGroup=imagesURLStrings;
    });

    // block监听点击方式
    // cycleScrollView2.clickItemOperationBlock=^(NSInteger index){
    // NSLog(@">>>>>>  %ld",(long)index);
    // };
    

//>>>>>>>>>>>>>>>>>>>>demo图片轮播三>>>>>>>>>>>>>>>>
   //网络加载 -- 创建自定义图片的pageControDot的图片轮播器
    //SDCycleScrollView *cycleStrollView3=[SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 500, w, 180) delegate:self placeholderImage:[UIImage imageNamed:@"placeholder"]];
    //cycleStrollView3.currentPageDotImage=[UIImage imageNamed:@"pageControlCurrentDot"];
    //cycleStrollView3.pageDotImage=[UIImage imageNamed:@"pageControlDot"];
   // cycleStrollView3.imageURLStringsGroup=imagesURLStrings;
   // [demoContainerView addSubview:cycleStrollView3];
    
//>>>>>>>>>>>>>>>>>>>demo图片轮播四>>>>>>>>>>>>>>>>>>>>.
    //网络加载  --  创建只上下滚动展示文字的轮播器
    //
    //SDCycleScrollView *cycleStrollView4=[SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 750, w, 40) delegate:self placeholderImage:nil];
    //cycleStrollView4.scrollDirection=UICollectionViewScrollDirectionVertical;
    //cycleStrollView4.onlyDisplayText=YES;
    
    //NSMutableArray *titlesArray=[NSMutableArray new];
    //[titlesArray addObject:@"纯文字上下滚动播放"];
   // [titlesArray addObject:@"纯文字上下滚动播放 --- demo图片轮播四"];
    //[titlesArray addObjectsFromArray:titles];
    //cycleStrollView4.titlesGroup=[titlesArray copy];
    //[cycleStrollView4 disableScrollGesture];
    //[demoContainerView addSubview:cycleStrollView4];
    
//>>>>>>>>>>>>>>>>>demo图片轮播五 自定义cell的轮播图>>>>>>>>>>>>
    //如果要实现自定义cell的轮播图，必须先实现customCollectionViewCellClassForCycleScrollView:和setupCustomCell:forIndex:代理方法
   // _customCellScrollViewDemo=[SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 820, w, 120) delegate:self placeholderImage:[UIImage imageNamed:@"placeholder"]];
    //_customCellScrollViewDemo.currentPageDotImage=[UIImage imageNamed:@"pageControlCurrentDot"];
    //_customCellScrollViewDemo.pageDotImage=[UIImage imageNamed:@"pageControlDot"];
   // _customCellScrollViewDemo.imageURLStringsGroup=imagesURLStrings;
    //[demoContainerView addSubview:_customCellScrollViewDemo];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
     //Dispose of any resources that can be recreated.
}
//-(void)viewWillAppear:(BOOL)animated{
    //[super viewWillAppear: animated];
    // 如果你发现你的CycleScrollview会在viewWillAppear时图片卡在中间位置，你可以调用此方法调整图片位置
//}
#pragma mark --SDCycleScrollViewDelegate
//-(void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didScrollToIndex:(NSInteger)index{
    //NSLog(@"---点击了第%ld张图片",(long)index);
    //[self.navigationController pushViewController:[NSClassFromString(@"DemoVCWithXib")new] animated:YES];
   
    //滚到第几张图回调
    //-(void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didScrollToIndex:(NSInteger)index{
    //NSLog(@">>>>>> 滚动到第%id张图",(long)index);
    //}
    
    

@end
