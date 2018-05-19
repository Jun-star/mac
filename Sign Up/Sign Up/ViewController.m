//
//  ViewController.m
//  Sign Up
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
    UILabel *lable1=[[UILabel alloc] initWithFrame:CGRectMake(0,0,self.view.frame.size.width,90)];
    [self.view addSubview:lable1];
    lable1.text=@"注册";//输入文本
    lable1.textColor=[UIColor whiteColor];
    //设置字体与大小
    lable1.font=[UIFont fontWithName:@"Arial" size:20];
    lable1.textAlignment=NSTextAlignmentCenter;
    lable1.backgroundColor=[UIColor greenColor];
    
    //设置返回按钮
    UIButton *button1=[[UIButton alloc]initWithFrame:CGRectMake(20,40,40,18)];
    UIImageView *imageView1=[[UIImageView alloc]init]; imageView1.frame=CGRectMake(20,40,40,18);
    UIImage *image1=[UIImage imageNamed:@"icon_arrowhead_whitelleft.png"];
    [button1 setBackgroundImage:image1 forState:UIControlStateNormal];
    [self.view addSubview:button1];//显示图标
    
    //设置文本：请输入手机号码
    UITextField *text1=[[UITextField alloc] initWithFrame:CGRectMake(70, 110, 360, 50)];
    [self.view addSubview:text1];
    text1.placeholder=@"手机号";
    text1.textColor=[UIColor lightGrayColor];
    //“请输入手机号码”文本下设置下划线
    UILabel *lable2=[[UILabel alloc]initWithFrame:CGRectMake(66,116,300,50)];
    [self.view addSubview:lable2];
    lable2.text=@"_____________________________________";
    lable2.textColor=[UIColor lightGrayColor];
    //设置文本：验证码
    UITextField *text2=[[UITextField alloc] initWithFrame:CGRectMake(70, 170, 200, 50)];
    [self.view addSubview:text2];
    text2.placeholder=@"验证码";
    text2.textColor=[UIColor lightGrayColor];
    //”验证码“文本下划线设置
    UILabel *lable3=[[UILabel alloc]initWithFrame:CGRectMake(66,176,300,50)];
    [self.view addSubview:lable3];
    lable3.text=@"______________________";
    lable3.textColor=[UIColor lightGrayColor];
    //设置文本：新密码
    UITextField *text3=[[UITextField alloc] initWithFrame:CGRectMake(70, 230, 200, 50)];
    [self.view addSubview:text3];
    text3.placeholder=@"新密码";
    text3.textColor=[UIColor lightGrayColor];
    //”新密码“文本设置下划线
    UILabel *lable4=[[UILabel alloc]initWithFrame:CGRectMake(66,236,300,50)];
    [self.view addSubview:lable4];
    lable4.text=@"_____________________________________";
    lable4.textColor=[UIColor lightGrayColor];
    //设置文本：再次输入新密码
    UITextField *text4=[[UITextField alloc] initWithFrame:CGRectMake(70, 290, 200, 50)];
    [self.view addSubview:text4];
    text4.placeholder=@"再次输入新密码";
    text4.textColor=[UIColor lightGrayColor];
    //“再次输入新密码”文本设置下划线
    UILabel *lable5=[[UILabel alloc]initWithFrame:CGRectMake(66,296,300,50)];
    [self.view addSubview:lable5];
    lable5.text=@"_____________________________________";
    lable5.textColor=[UIColor lightGrayColor];
    //设置文本：邀请码
    UITextField *text5=[[UITextField alloc] initWithFrame:CGRectMake(70, 350, 200, 50)];//文本大小
    [self.view addSubview:text5];
    text5.placeholder=@"邀请码";//文本内容
    text5.textColor=[UIColor lightGrayColor];
    //”邀请码“文本设置下划线
    UILabel *lable6=[[UILabel alloc]initWithFrame:CGRectMake(66,356,300,50)];
    [self.view addSubview:lable6];
    lable6.text=@"_____________________________________";//文本内容
    lable6.textColor=[UIColor lightGrayColor];//文本颜色
   //设置注册按钮
    UIButton  *button2=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button2 setFrame:CGRectMake(60,430,260,50)];
    [button2.layer setMasksToBounds:YES];
    [button2.layer setCornerRadius:26.0];
    //[button1.layer setBorderWidth:2];
    [button2 setTitle:@"注册" forState:UIControlStateNormal];
    [button2 setTitle:@"注册" forState:UIControlStateHighlighted];
    [button2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];//正常状态下文本颜色
    [button2 setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];//高亮状态下文本颜色
    button2.backgroundColor=[UIColor greenColor];
    [self.view addSubview:button2];
    
    UIButton *button3=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button3 setFrame:CGRectMake(230,170,105,40)];
    [button3.layer setMasksToBounds:YES];
    [button3.layer setCornerRadius:20.0];
    [button3 setTitle:@"发送验证码" forState:UIControlStateNormal];//正常状态显示文本
    [button3 setTitle:@"发送验证码" forState:UIControlStateHighlighted];//高亮状态下显示文本
    [button3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];//设置正常状态下文本颜色
    [button3 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];//设置高亮状态下文本颜色
    button3.backgroundColor=[UIColor greenColor];//设置背景颜色
    [self.view addSubview:button3];
    //设置向左黄色箭头
    UIButton *button4=[[UIButton alloc]initWithFrame:CGRectMake(20,526,40,18)];
    UIImageView *imageView2=[[UIImageView alloc]init]; imageView2.frame=CGRectMake(20,526,40,18);
    UIImage *image2=[UIImage imageNamed:@"icon_arrowhead_yellowleft.png"];
    [button4 setBackgroundImage:image2 forState:UIControlStateNormal];
    [self.view addSubview:button4];//显示图标
    //设置文本：“已有账号”
    UITextField *text6=[[UITextField alloc] initWithFrame:CGRectMake(70, 510, 200, 50)];//文本大小
    [self.view addSubview:text6];
    text6.placeholder=@"已有账号，";//文本内容
    text6.textColor=[UIColor lightGrayColor];
    
    UIButton *button5=[[UIButton alloc]initWithFrame:CGRectMake(50,508,250,50)];
    [button5 setTitle:@"去登录" forState:UIControlStateNormal];
    [button5 setTitle:@"去登录" forState:UIControlStateHighlighted];
    [button5 setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];//正常状态下文本颜色
    [button5 setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];//高亮状态下文本颜色
    button5.titleLabel.font=[UIFont systemFontOfSize:17];
    [self.view addSubview:button5];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
