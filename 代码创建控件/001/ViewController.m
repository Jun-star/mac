 //
//  ViewController.m
//  001
//
//  Created by zmit on 2018/5/8.
//  Copyright © 2018年 zmit. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
        //注册
        UILabel *lable1=[[UILabel alloc] initWithFrame:CGRectMake(60,29,260,61)];
        [self.view addSubview:lable1];
        lable1.text=@"注册";//输入文本
        //设置字体与大小
        lable1.font=[UIFont fontWithName:@"Arial" size:20];
        lable1.textAlignment=NSTextAlignmentCenter;
        //注册标签下使用下划线
        UILabel *lable2=[[UILabel alloc] initWithFrame:CGRectMake(0,45,600,60)];
        [self.view addSubview:lable2];
        lable2.text=@"______________________________________________________";//标签中文本
        lable2.textColor=[UIColor lightGrayColor];//文本颜色
        //设置与电话号码对应图标
        UILabel *lable3=[[UILabel alloc]initWithFrame:CGRectMake(40,120,20,30)];//设置标签大小
        [self.view addSubview:lable3];
        UIImageView *imageView1=[[UIImageView alloc]init]; imageView1.frame=CGRectMake(40,120,20,30);//设置图标大小
        //图片名称
        UIImage *image1=[UIImage imageNamed:@"icon_login_phone"];
        imageView1.image=image1;
        [self.view addSubview:imageView1];
        [self.view addSubview:lable3];
        //设置与验证码对应图标
        UILabel *lable4=[[UILabel alloc]initWithFrame:CGRectMake(40,180,20,30)];//设置标签大小
        [self.view addSubview:lable4];
        UIImageView *imageView3=[[UIImageView alloc]init]; imageView3.frame=CGRectMake(40,180,20,30);//设置图标大小
        //设置图标图片
        UIImage *image3=[UIImage imageNamed:@"icon_login_auth_code"];
        imageView3.image=image3;
        [self.view addSubview:imageView3];
        [self.view addSubview:lable4];
        //设置与用户姓名对应图标
        UILabel *lable5=[[UILabel alloc]initWithFrame:CGRectMake(40,240,20,30)];//设置标签框大小
        [self.view addSubview:lable5];
        //设置图片框大小（与标签框一致）
        UIImageView *imageView4=[[UIImageView alloc]init]; imageView4.frame=CGRectMake(40,240,20,30);
        //设置图标图片
        UIImage *image4=[UIImage imageNamed:@"icon_login_name"];
        imageView4.image=image4;
        [self.view addSubview:imageView4];
        [self.view addSubview:lable5];//在标签中显示图标
        //设置与推荐码对应图标
        UILabel *lable6=[[UILabel alloc]initWithFrame:CGRectMake(40,300,20,30)];//设置标签狂大小
        [self.view addSubview:lable6];
        UIImageView *imageView5=[[UIImageView alloc]init]; imageView5.frame=CGRectMake(40,300,20,30);//设置图片大小
        UIImage *image5=[UIImage imageNamed:@"icon_login_Invitation_code"];//设置对应图片
        imageView5.image=image5;
        [self.view addSubview:imageView5];
        [self.view addSubview:lable6];//在标签中显示图标
        //设置与密码对应图标
        UILabel *lable7=[[UILabel alloc]initWithFrame:CGRectMake(40,360,20,30)];//图标大小
        [self.view addSubview:lable7];
        UIImageView *imageView6=[[UIImageView alloc]init]; imageView6.frame=CGRectMake(40,360,20,30);//图片大小
        UIImage *image6=[UIImage imageNamed:@"icon_login_password"];
        imageView6.image=image6;
        [self.view addSubview:imageView6];
        [self.view addSubview:lable7];//显示图片
        //设置与确认密码对应图标
        UILabel *lable8=[[UILabel alloc]initWithFrame:CGRectMake(40,420,20,30)];
        [self.view addSubview:lable8];
        UIImageView *imageView7=[[UIImageView alloc]init]; imageView7.frame=CGRectMake(40,420,20,30);
        UIImage *image7=[UIImage imageNamed:@"icon_login_password"];
        imageView7.image=image7;
        [self.view addSubview:imageView7];
        [self.view addSubview:lable8];//显示图片
        //设置返回按钮
        UIButton *button1=[[UIButton alloc]initWithFrame:CGRectMake(20,50,20,24)];
        UIImageView *imageView2=[[UIImageView alloc]init]; imageView2.frame=CGRectMake(20,50,20,24);
        UIImage *image2=[UIImage imageNamed:@"icon_login_back"];
        [button1 setBackgroundImage:image2 forState:UIControlStateNormal];
        [self.view addSubview:button1];//显示图标
        //设置密码可见与不可见状态
        UIButton *button2=[[UIButton alloc]initWithFrame:CGRectMake(318,355,28,25)];
        [self.view addSubview:button2];
        UIImage *image8=[UIImage imageNamed:@"icon_login_visible"];
        UIImage *image12=[UIImage imageNamed:@"icon_logim_invisible"];
        [button2 setBackgroundImage:image8 forState:UIControlStateNormal];//设置常规状态下背图片
        [button2 setBackgroundImage:image12 forState:UIControlStateSelected];//选中状态下背景图片
        [button2 addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];//图片切换
        [self.view addSubview:button2];//显示图标
        //设置验证码发送按钮
        UIButton *button3=[[UIButton alloc]initWithFrame:CGRectMake(250,170,105,40)];
        [button3 setTitle:@"发送验证码" forState:UIControlStateNormal];//正常状态显示文本
        [button3 setTitle:@"发送验证码" forState:UIControlStateHighlighted];//高亮状态下显示文本
        [button3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];//设置正常状态下文本颜色
        [button3 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];//设置高亮状态下文本颜色
        button3.backgroundColor=[UIColor redColor];//设置背景颜色
        [self.view addSubview:button3];
        //设置确认密码时可见和不可见状态
        UIButton *button4=[[UIButton alloc]initWithFrame:CGRectMake(318,416,28,25)];
        [self.view addSubview:button4];
        //不可见状态图标
        UIImage *image9=[UIImage imageNamed:@"icon_logim_invisible"];
        //可见状态图标
        UIImage *image11=[UIImage imageNamed:@"icon_login_visible"];
        [button4 setBackgroundImage:image9 forState:UIControlStateNormal];//常规状态下背景图片
        [button4 setBackgroundImage:image11 forState:UIControlStateSelected];//选中状态下背景图片
        [button4 addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];//图片切换
        [self.view addSubview:button4];//显示图标
        //设置按钮确认与不确认时状态
        UIButton *button5=[[UIButton alloc]initWithFrame:CGRectMake(42,466,23,23)];
        UIImage *image14=[UIImage imageNamed:@"icon_login_pitch_on"];//可按状态图标
        UIImage *image13=[UIImage imageNamed:@"icon_login_no_choose"];//不可选择图标
        [button5 setBackgroundImage:image14 forState:UIControlStateNormal];//常规状态下背景图片
        [button5 setBackgroundImage:image13 forState:UIControlStateSelected];//选中状态下背景图片
        [button5 addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];//图片切换
        [self.view addSubview:button5];//图标显示
        //“服务协议”按钮
        UIButton *button6=[[UIButton alloc]initWithFrame:CGRectMake(230,470,120,16)];
        [self.view addSubview:button6];
        //正常状态下文本
        [button6 setTitle:@"《服务协议》" forState:UIControlStateNormal];
        [button6 setTitle:@"《服务协议》" forState:UIControlStateHighlighted];//高亮状态下文本
        [button6 setTitleColor:[UIColor redColor]forState:UIControlStateNormal];//正常状态下文本颜色
        //高亮状态下文本颜色
        [button6 setTitleColor:[UIColor whiteColor]forState:UIControlStateHighlighted];
        [button6.titleLabel setFont:[UIFont systemFontOfSize:15] ];
        //设置注册按钮
        UIButton *button7=[[UIButton alloc]initWithFrame:CGRectMake(42,506,308,50)];
        [button7 setTitle:@"注册" forState:UIControlStateNormal];
        [button7 setTitle:@"注册" forState:UIControlStateHighlighted];
        [button7 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];//正常状态下文本颜色
        [button7 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];//高亮状态下文本颜色
        button7.backgroundColor=[UIColor redColor];
        [self.view addSubview:button7];
        //设置文本：请输入手机号码
        UITextField *text1=[[UITextField alloc] initWithFrame:CGRectMake(90, 110, 360, 50)];
        [self.view addSubview:text1];
        text1.placeholder=@"请输入手机号码";
        text1.textColor=[UIColor lightGrayColor];
        //“请输入手机号码”文本下设置下划线
        UILabel *lable9=[[UILabel alloc]initWithFrame:CGRectMake(86,116,300,50)];
        [self.view addSubview:lable9];
        lable9.text=@"_____________________________________";
        lable9.textColor=[UIColor lightGrayColor];
        //设置文本：请输入验证码
        UITextField *text2=[[UITextField alloc] initWithFrame:CGRectMake(90, 170, 200, 50)];
        [self.view addSubview:text2];
        text2.placeholder=@"请输入验证码";
        text2.textColor=[UIColor lightGrayColor];
        //”请输入验证码“文本下划线设置
        UILabel *lable10=[[UILabel alloc]initWithFrame:CGRectMake(86,176,300,50)];
        [self.view addSubview:lable10];
        lable10.text=@"______________________";
        lable10.textColor=[UIColor lightGrayColor];
        //设置文本：请输入真实姓名
        UITextField *text3=[[UITextField alloc] initWithFrame:CGRectMake(90, 230, 200, 50)];
        [self.view addSubview:text3];
        text3.placeholder=@"请输入真实姓名";
        text3.textColor=[UIColor lightGrayColor];
        //”请输入真实姓名“文本设置下划线
        UILabel *lable11=[[UILabel alloc]initWithFrame:CGRectMake(86,236,300,50)];
        [self.view addSubview:lable11];
        lable11.text=@"_____________________________________";
        lable11.textColor=[UIColor lightGrayColor];
        //设置文本：请输入推荐码
        UITextField *text4=[[UITextField alloc] initWithFrame:CGRectMake(90, 290, 200, 50)];
        [self.view addSubview:text4];
        text4.placeholder=@"请输入推荐码";
        text4.textColor=[UIColor lightGrayColor];
        //“请输入推荐码”文本设置下划线
        UILabel *lable12=[[UILabel alloc]initWithFrame:CGRectMake(86,296,300,50)];
        [self.view addSubview:lable12];
        lable12.text=@"_____________________________________";
        lable12.textColor=[UIColor lightGrayColor];
        //设置文本：请输入6～18位密码
        UITextField *text5=[[UITextField alloc] initWithFrame:CGRectMake(90, 350, 200, 50)];//文本大小
        [self.view addSubview:text5];
        text5.placeholder=@"请输入6～18位密码";//文本内容
        text5.textColor=[UIColor lightGrayColor];
        //”请输入6～18位密码“文本设置下划线
        UILabel *lable13=[[UILabel alloc]initWithFrame:CGRectMake(86,356,300,50)];
        [self.view addSubview:lable13];
        lable13.text=@"_____________________________________";//文本内容
        lable13.textColor=[UIColor lightGrayColor];//文本颜色
        //设置文本内容：请输入密码
        UITextField *text6=[[UITextField alloc] initWithFrame:CGRectMake(90, 410, 200, 50)];
        [self.view addSubview:text6];
        text6.placeholder=@"请输入密码";
        text6.textColor=[UIColor lightGrayColor];
        //”请输入密码“文本设置下划线
        UILabel *lable14=[[UILabel alloc]initWithFrame:CGRectMake(86,416,300,50)];
        [self.view addSubview:lable14];
        lable14.text=@"_____________________________________";
        lable14.textColor=[UIColor lightGrayColor];
        //设置”立即完成注册即代表同意“标签
        UILabel *lable15=[[UILabel alloc]initWithFrame:CGRectMake(80,470,200,16)];
        [self.view addSubview:lable15];
        lable15.text=@"立即完成注册即代表同意";//标签内容
        lable15.textColor=[UIColor lightGrayColor];
        lable15.font=[UIFont systemFontOfSize:15];
        //点击textfield时候使用数字键盘
        text1.keyboardType=UIKeyboardTypeNumberPad;
        text2.keyboardType=UIKeyboardTypeNumberPad;
        text4.keyboardType=UIKeyboardTypeNumberPad;
        text5.keyboardType=UIKeyboardTypeNumberPad;
        text6.keyboardType=UIKeyboardTypeNumberPad;
    }
//定义点击按钮切换状态
    -(void)buttonClick:(UIButton *)bu{
        UIButton *button=(UIButton *)bu;
        button.selected=!button.selected;
    }
//UITextfield实现代理
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];//取消第一响应者
    return YES;
}
//输入完成后点击输入框以外部分收回键盘
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
/**********************
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
   if (textField==self.titleField){
      if(string.length==0) return YES;
        NSInteger existedLength=textField.text.length;
        NSInteger selectedLength=range.length;
        NSInteger repalceLength=string.length;
        if(existedLength-selectedLength+repalceLength>18){
            return NO;
            if(existedLength-selectedLength+repalceLength<6){
                return NO;
           }
        }
    }
    return YES;
}
 lable.lineBreakMode=NSLineBreakByCharWrapping;//  文本省略方式：保留整个单词，以空格为边界：ByWordWrapping=0;保留整个字符：ByCharWrapping;省略开头，以省略号代替：ByTruncatingHead;省略结尾，以省略号代替：ByTruncatingTail;省略中间部分，以省略号代替：ByTruncatingMiddle
 *************************/





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
