//
//  ViewController.m
//  Home Page
//
//  Created by zmit on 2018/5/19.
//  Copyright © 2018年 zmit. All rights reserved.
//

#import "ViewController.h"
#import "SDCycleScrollView.h"
@interface ViewController ()<SDCycleScrollViewDelegate,UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray *_userList;
    UITableView *_tableView;
}

@end

@implementation ViewController{
    NSArray *_imagesURLStrings;
    SDCycleScrollView *_customCellScrollViewDemo;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor colorWithRed:0.98 green:0.98 blue:0.98 alpha:0.99];
    //UIImageView *backgroundView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"001.jpg"]];
    //backgroundView.frame=self.view.bounds;
    //[self.view addSubview:backgroundView];
    
    UIScrollView *demoContainerView=[[UIScrollView alloc] initWithFrame:self.view.frame];
    demoContainerView.contentSize=CGSizeMake(self.view.frame.size.width,160);
    [self.view addSubview:demoContainerView];
    //self.title=@"轮播Demo";
    
    
    //情景一：采用本地图片
    //NSArray *imageNames=@[@"th-1.jpg",@"th-2.jpg",@"th-3.jpg"];
    //情景二：采用网络图片
    NSArray *imagesURLStrings =@[@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1526715958808&di=33049770466aeebbb752e713838526ea&imgtype=0&src=http%3A%2F%2Fpic.58pic.com%2F58pic%2F14%2F20%2F58%2F95a58PICXQp_1024.jpg",@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1527310667&di=d7754121c194ce608be3f7c617f51da6&imgtype=jpg&er=1&src=http%3A%2F%2Fpic.58pic.com%2F58pic%2F13%2F88%2F78%2F85m58PICVPp_1024.jpg",@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1526715948725&di=47013d06c15b8bb2ba1660e42deb8cff&imgtype=0&src=http%3A%2F%2Fpic.qiantucdn.com%2F58pic%2F25%2F93%2F28%2F587fb7e5a17a3_1024.jpg",@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1526715948725&di=13e1535f68f231efde3a76a7e03b1d8c&imgtype=0&src=http%3A%2F%2Fpic.58pic.com%2F58pic%2F13%2F88%2F50%2F63m58PICZAa_1024.jpg"];
    _imagesURLStrings=imagesURLStrings;
    //情景三：图片配文字
    //NSArray *titles=@[@"1",@"2",@"3",@"4"];
    CGFloat w=self.view.bounds.size.width;
    
    //网络加载  -- 创建图片轮播器
    SDCycleScrollView *cycleScrollView2=[SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, w, 200) delegate:self placeholderImage:[UIImage imageNamed: @"placeholder"]];
    cycleScrollView2.pageControlAliment=SDCycleScrollViewPageContolAlimentRight;
    //cycleScrollView2.titlesGroup=titles;
    cycleScrollView2.currentPageDotColor=[UIColor whiteColor];
    [demoContainerView addSubview:cycleScrollView2];
    //     --模拟加载延迟
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.3*NSEC_PER_SEC)),dispatch_get_main_queue(),^{
        cycleScrollView2.imageURLStringsGroup=imagesURLStrings;
    });
    //设置左上方logo
    UIImageView *imageView1=[[UIImageView alloc]init]; imageView1.frame=CGRectMake(20,40,100,40);
    //使用文件中图片并显示
    UIImage *image1=[UIImage imageNamed:@"icon_logo.png"];
    imageView1.image=image1;
    [self.view addSubview:imageView1];
    //设置搜索框
    UITextField *text4 = [[UITextField alloc] initWithFrame:CGRectMake(150, 40, 215, 40)];
    [self.view addSubview:text4];
    text4.backgroundColor=[UIColor blackColor];
    text4.alpha=0.4;
    text4.layer.cornerRadius=16;
    text4.layer.masksToBounds=YES;
    //设置搜索图标
    UIImageView *imageView2=[[UIImageView alloc]init]; imageView2.frame=CGRectMake(330,45,28,28);
    //使用文件中图片并显示
    UIImage *image2=[UIImage imageNamed:@"icon_glass.png"];
    imageView2.image=image2;
    [self.view addSubview:imageView2];
    //设置左侧“水果分类标签”
    UIImageView *imageView3=[[UIImageView alloc]init]; imageView3.frame=CGRectMake(20,220,160,60);
    //使用文件中图片并显示
    UIImage *image3=[UIImage imageNamed:@"images_coconut.png"];
    imageView3.image=image3;
    [self.view addSubview:imageView3];
    //设置右侧“水果小知识”标签
    UIImageView *imageView4=[[UIImageView alloc]init]; imageView4.frame=CGRectMake(200,220,160,62);
    //使用文件中图片并显示
    UIImage *image4=[UIImage imageNamed:@"images_orange.png"];
    imageView4.image=image4;
    [self.view addSubview:imageView4];
    
    //设置标签“推荐产品”
    UILabel *lable1 = [[UILabel alloc]initWithFrame:CGRectMake(20,286,80,20)];
    [self.view addSubview:lable1];
    lable1.text=@"推荐产品";
    
    //设置“查看更多”
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(260,286,100,20)];
    label.text=@"查看更多";
    label.textColor=[UIColor grayColor];
    [self.view addSubview:label];
    
    
    //设置向右图标
    UIButton *button2 = [[UIButton alloc]initWithFrame:CGRectMake(338,288,20,20)];
    UIImageView *imageView5 = [[UIImageView alloc]init]; imageView5.frame=CGRectMake(338,288,20,20);
    UIImage *image5 = [UIImage imageNamed:@"icon_arrow_right.png"];
    [button2 setBackgroundImage:image5 forState:UIControlStateNormal];
    [self.view addSubview:button2];
    
   
    
    
    //自定义tableView的大小
    _tableView=[[UITableView alloc] initWithFrame:CGRectMake(0, 320, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    //设置分割线类型
    _tableView.separatorStyle=UITableViewCellSeparatorStyleNone;
    _tableView.dataSource=self;
    _tableView.delegate=self;
    [self.view addSubview:_tableView];
    
    //设置pilst文件路径
    NSString *dataPath = [[NSBundle mainBundle] pathForResource:@"Fruit.plist" ofType:nil];
    //填充数组内容
    _userList =[NSMutableArray arrayWithContentsOfFile:dataPath];
    
    //设置底部标签
    UILabel *labelx = [[UILabel alloc] initWithFrame:CGRectMake(0, 620, self.view.frame.size.width, 60)];
    labelx.backgroundColor=[UIColor whiteColor];
    //labelx.alpha=0.8;
    [self.view addSubview:labelx];
    //设置导航小标签(首页)
    UILabel *lable8=[[UILabel alloc]initWithFrame:CGRectMake(30,625,30,35)];
    [self.view addSubview:lable8];
    UIImageView *imageView7=[[UIImageView alloc]init]; imageView7.frame=CGRectMake(30,625,38,38);
    UIImage *image7=[UIImage imageNamed:@"icon_green_home.png"];
    imageView7.image=image7;
    [self.view addSubview:imageView7];
    [self.view addSubview:lable8];//显示图片
    //设置标签“特别推荐”
    UILabel *lable9=[[UILabel alloc]initWithFrame:CGRectMake(120,625,40,40)];
    [self.view addSubview:lable9];
    UIImageView *imageView8=[[UIImageView alloc]init]; imageView8.frame=CGRectMake(120,625,40,40);
    UIImage *image8=[UIImage imageNamed:@"icon_gray_star.png"];
    imageView8.image=image8;
    [self.view addSubview:imageView8];
    [self.view addSubview:lable9];//显示图片
    //设置图标“购物车”
    UILabel *lable10=[[UILabel alloc]initWithFrame:CGRectMake(210,625,40,40)];
    [self.view addSubview:lable10];
    UIImageView *imageView9=[[UIImageView alloc]init]; imageView9.frame=CGRectMake(210,625,40,40);
    UIImage *image9=[UIImage imageNamed:@"icon_gray_shoppingcart.png"];
    imageView9.image=image9;
    [self.view addSubview:imageView9];
    [self.view addSubview:lable10];//显示图片
    //设置图标“个人中心”
    UILabel *lable11=[[UILabel alloc]initWithFrame:CGRectMake(300,625,40,40)];
    [self.view addSubview:lable11];
    UIImageView *imageView10=[[UIImageView alloc]init]; imageView10.frame=CGRectMake(300,625,40,40);
    UIImage *image10=[UIImage imageNamed:@"icon_gray_man.png"];
    imageView10.image=image10;
    [self.view addSubview:imageView10];
    [self.view addSubview:lable11];//显示图片
    
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
    NSString *images = [dic valueForKey:@"images"];
    NSString *la1=[dic valueForKey:@"la1"];
    NSString *la2=[dic valueForKey:@"la2"];
    NSString *la3=[dic valueForKey:@"la3"];
    NSString *la4=[dic valueForKey:@"la4"];
    NSString *la5=[dic valueForKey:@"la5"];
    
    //设置描述商品文本字体大小及其所处位置
    UILabel *label1=[[UILabel alloc] initWithFrame:CGRectMake(120, 0, 200, 60)];
    //[label1 setNumberOfLines:2];
    label1.text=la1;
    //label3.textColor=[UIColor lightGrayColor];
    label1.font=[UIFont systemFontOfSize:15];
    [cell.contentView addSubview:label1];
    //设置当前金额
    UILabel *label2=[[UILabel alloc] initWithFrame:CGRectMake(115, 70, 80, 20)];
    label2.text=la2;
    label2.textColor=[UIColor redColor];
    label2.font=[UIFont systemFontOfSize:15];
    [cell.contentView addSubview:label2];
    //设置市场价金额
    UILabel *label3=[[UILabel alloc] initWithFrame:CGRectMake(170, 50, 180, 60)];
    label3.text=la3;
    label3.textColor=[UIColor lightGrayColor];
    label3.font=[UIFont systemFontOfSize:12];
    [cell.contentView addSubview:label3];
    //设置已售数量
    UILabel *label4=[[UILabel alloc] initWithFrame:CGRectMake(115, 75, 300, 60)];
    label4.text=la4;
    label4.textColor=[UIColor lightGrayColor];
    label4.font=[UIFont systemFontOfSize:12];
    [cell.contentView addSubview:label4];
    //设置右侧绿色购物车背景标签
    UILabel *label5=[[UILabel alloc] initWithFrame:CGRectMake(300, 55, 200, 40)];
    label5.text=la5;
    label5.backgroundColor=[UIColor greenColor];
    label5.layer.cornerRadius=16;
    label5.layer.masksToBounds=YES;
    [cell.contentView addSubview:label5];
    //设置图片大小位置
    UIImageView *imageView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:image]];
    imageView.frame=CGRectMake(0,0,110,110);
    [cell.contentView addSubview:imageView];
    //
    UIImageView *imageView1=[[UIImageView alloc] initWithImage:[UIImage imageNamed:images]];
    imageView1.frame=CGRectMake(330,300,30,30);
    [cell.contentView addSubview:imageView1];
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
