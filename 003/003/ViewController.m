//
//  ViewController.m
//  003
//
//  Created by zmit on 2018/5/19.
//  Copyright © 2018年 zmit. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel *label1=[[UILabel alloc] initWithFrame:CGRectMake(0,0,self.view.frame.size.width,200)];
    label1.backgroundColor=[UIColor greenColor];
    label1.alpha=0.8;
    [self.view addSubview:label1];
    UILabel *label2=[[UILabel alloc]initWithFrame:CGRectMake(40,60,80,80)];//设置标签大小
    label2.backgroundColor = [UIColor whiteColor];
    //设置圆角
    label2.layer.cornerRadius=40;
    label2.clipsToBounds = YES;
    [self.view addSubview:label2];
    UIImageView *imageView1=[[UIImageView alloc]init]; imageView1.frame=CGRectMake(50,75,50,50);//设置图标大小
    //图片名称
    UIImage *image1=[UIImage imageNamed:@"icon_particulars_fruit.png"];
    imageView1.image=image1;
    [self.view addSubview:imageView1];
    
    
    UILabel *label3=[[UILabel alloc]initWithFrame:CGRectMake(130,90,60,20)];
    label3.text=@"Jenny";
    label3.textColor =[UIColor whiteColor];
    [self.view addSubview:label3];
    
    //积分
    
   UIImageView *imageView2=[[UIImageView alloc]init]; imageView2.frame=CGRectMake(260,155,40,40);//设置图标大小
    //图片名称
    UIImage *image2=[UIImage imageNamed:@"icon_particulars_coin.png"];
    imageView2.image=image2;
    [self.view addSubview:imageView2];
    
    UILabel *label7=[[UILabel alloc]initWithFrame:CGRectMake(305,155,100,20)];
    label7.text=@"我的积分";
    label7.textColor =[UIColor whiteColor];
    [self.view addSubview:label7];
    
    UILabel *label8=[[UILabel alloc]initWithFrame:CGRectMake(305,175,100,20)];
    label8.text=@"8000";
    label8.textColor =[UIColor whiteColor];
    [self.view addSubview:label8];
    
    
    //红包
   
    UIImageView *imageView3=[[UIImageView alloc]init]; imageView3.frame=CGRectMake(140,155,40,40);//设置图标大小
    //图片名称
    UIImage *image3=[UIImage imageNamed:@"icon_particulars_redpacket.png"];
    imageView3.image=image3;
    [self.view addSubview:imageView3];
    
    UILabel *label6=[[UILabel alloc]initWithFrame:CGRectMake(185,165,100,20)];
    label6.text=@"我的红包";
    label6.textColor =[UIColor whiteColor];
    [self.view addSubview:label6];
    
    //钱包
    
    UIImageView *imageView5=[[UIImageView alloc]init]; imageView5.frame=CGRectMake(20,155,40,40);//设置图标大小
    //图片名称
    UIImage *image5=[UIImage imageNamed:@"icon_particulars_wallet.png"];
    imageView5.image=image5;
    [self.view addSubview:imageView5];
    
    UILabel *label4=[[UILabel alloc]initWithFrame:CGRectMake(65,155,100,20)];
    label4.text=@"我的钱包";
    label4.textColor =[UIColor whiteColor];
    [self.view addSubview:label4];
    
    UILabel *lable5=[[UILabel alloc]initWithFrame:CGRectMake(65,175,100,20)];
    lable5.text=@"2000.00";
    lable5.textColor =[UIColor whiteColor];
    [self.view addSubview:lable5];
    
    //1
    UIImageView *imageView6=[[UIImageView alloc]init]; imageView6.frame=CGRectMake(40,230,60,60);//设置图标大小
    //图片名称
    UIImage *image6=[UIImage imageNamed:@"icon_personal_tangerine.png"];
    imageView6.image=image6;
    [self.view addSubview:imageView6];
    
    UILabel *label9=[[UILabel alloc]initWithFrame:CGRectMake(40,295,100,20)];
    label9.text=@"订单管理";
    //label9.textColor =[UIColor whiteColor];
    [self.view addSubview:label9];
    
    //2
    UIImageView *imageView7=[[UIImageView alloc]init]; imageView7.frame=CGRectMake(160,230,60,60);//设置图标大小
    //图片名称
    UIImage *image7=[UIImage imageNamed:@"icon_personal_grape.png"];
    imageView7.image=image7;
    [self.view addSubview:imageView7];
    
    UILabel *label10=[[UILabel alloc]initWithFrame:CGRectMake(160,295,100,20)];
    label10.text=@"个人设置";
    //label9.textColor =[UIColor whiteColor];
    [self.view addSubview:label10];
    
    //3
    UIImageView *imageView8=[[UIImageView alloc]init]; imageView8.frame=CGRectMake(280,230,60,60);//设置图标大小
    //图片名称
    UIImage *image8=[UIImage imageNamed:@"icon_personal_pineapple.png"];
    imageView8.image=image8;
    [self.view addSubview:imageView8];
    
    UILabel *label11=[[UILabel alloc]initWithFrame:CGRectMake(280,295,100,20)];
    label11.text=@"地址管理";
    //label9.textColor =[UIColor whiteColor];
    [self.view addSubview:label11];
    //4
    UIImageView *imageView9=[[UIImageView alloc]init]; imageView9.frame=CGRectMake(40,350,60,60);//设置图标大小
    //图片名称
    UIImage *image9=[UIImage imageNamed:@"icon_personal_pear.png"];
    imageView9.image=image9;
    [self.view addSubview:imageView9];
    
    UILabel *label12=[[UILabel alloc]initWithFrame:CGRectMake(40,415,100,20)];
    label12.text=@"关于我们";
    //label9.textColor =[UIColor whiteColor];
    [self.view addSubview:label12];
    //5
    UIImageView *imageView10=[[UIImageView alloc]init]; imageView10.frame=CGRectMake(160,350,60,60);//设置图标大小
    //图片名称
    UIImage *image10=[UIImage imageNamed:@"icon_personal_watermelon.png"];
    imageView10.image=image10;
    [self.view addSubview:imageView10];
    UILabel *label13=[[UILabel alloc]initWithFrame:CGRectMake(160,415,100,20)];
    label13.text=@"使用帮助";
    //label9.textColor =[UIColor whiteColor];
    [self.view addSubview:label13];
    //6
    UIImageView *imageView11=[[UIImageView alloc]init]; imageView11.frame=CGRectMake(280,350,60,60);//设置图标大小
    //图片名称
    UIImage *image11=[UIImage imageNamed:@"icon_personal_pomegranate.png"];
    imageView11.image=image11;
    [self.view addSubview:imageView11];
    
    UILabel *label14=[[UILabel alloc]initWithFrame:CGRectMake(280,415,100,20)];
    label14.text=@"期待反馈";
    //label9.textColor =[UIColor whiteColor];
    [self.view addSubview:label14];
    //7
    UIImageView *imageView12=[[UIImageView alloc]init]; imageView12.frame=CGRectMake(40,470,60,60);//设置图标大小
    //图片名称
    UIImage *image12=[UIImage imageNamed:@"icon_personal_dragonfruit.png"];
    imageView12.image=image12;
    [self.view addSubview:imageView12];
    UILabel *label15=[[UILabel alloc]initWithFrame:CGRectMake(40,530,100,20)];
    label15.text=@"版本跟新";
    //label9.textColor =[UIColor whiteColor];
    [self.view addSubview:label15];
    //
    UILabel *label16=[[UILabel alloc]initWithFrame:CGRectMake(40,550,200,20)];
    label16.text=@"V1.0.0 最新版";
    label16.textColor =[UIColor grayColor];
    [self.view addSubview:label16];
    
    //
    //设置底部标签
    UILabel *labelx = [[UILabel alloc] initWithFrame:CGRectMake(0, 620, self.view.frame.size.width, 60)];
    labelx.backgroundColor=[UIColor grayColor];
    labelx.alpha=0.4;
    [self.view addSubview:labelx];
    //设置导航小标签(首页)
   
    UIImageView *imageView13=[[UIImageView alloc]init]; imageView13.frame=CGRectMake(30,628,30,35);
    UIImage *image13=[UIImage imageNamed:@"icon_gray_home.png"];
    imageView13.image=image13;
    [self.view addSubview:imageView13];
    
    //设置标签“特别推荐”
    

    UIImageView *imageView14=[[UIImageView alloc]init]; imageView14.frame=CGRectMake(120,625,40,40);
    UIImage *image14=[UIImage imageNamed:@"icon_gray_star.png"];
    imageView14.image=image14;
    [self.view addSubview:imageView14];
   
    //设置图标“购物车”
   
    UIImageView *imageView15=[[UIImageView alloc]init]; imageView15.frame=CGRectMake(210,625,40,40);
    UIImage *image15=[UIImage imageNamed:@"icon_gray_shoppingcart.png"];
    imageView15.image=image15;
    [self.view addSubview:imageView15];
    
    //设置图标“个人中心”
   
    UIImageView *imageView16=[[UIImageView alloc]init]; imageView16.frame=CGRectMake(300,625,50,40);
    UIImage *image16=[UIImage imageNamed:@"icon_green_man.png"];
    imageView16.image=image16;
    [self.view addSubview:imageView16];
    //设置上部“邀请注册文本”
    UILabel *label17=[[UILabel alloc] initWithFrame:CGRectMake(230, 60, 400, 70)];
    label17.backgroundColor = [UIColor orangeColor];
    label17.layer.cornerRadius=30;
    label17.clipsToBounds = YES;
    [self.view addSubview:label17];
    
    UILabel *label18=[[UILabel alloc] initWithFrame:CGRectMake(300, 50, 400, 60)];
    label18.text=@"邀请注册";
    [self.view addSubview:label18];
    
    UILabel *label19=[[UILabel alloc] initWithFrame:CGRectMake(300, 70, 80, 60)];
    //设置文本“邀请好友注册”
    label19.text=@"邀请好友注册";
    [label9 setNumberOfLines:2];
    label19.font=[UIFont systemFontOfSize:12];
    [self.view addSubview:label19];
    
    UILabel *label20=[[UILabel alloc] initWithFrame:CGRectMake(300, 85, 80, 60)];
    //设置文本“得积分哦”
    label20.text = @"得积分哦";
   // [labe20 setNumberOfLines:2];
    label20.font=[UIFont systemFontOfSize:12];
    [self.view addSubview:label20];
    //设置标签中的图标
    UIImageView *imageView17=[[UIImageView alloc]init]; imageView17.frame=CGRectMake(250,75,30,30);
    UIImage *image17=[UIImage imageNamed:@"icon_particulars_man.png"];
    imageView17.image=image17;
    [self.view addSubview:imageView17];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
