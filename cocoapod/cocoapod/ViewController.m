//
//  ViewController.m
//  cocoapod
//
//  Created by zmit on 2018/5/14.
//  Copyright © 2018年 zmit. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking.h>
#import <IQKeyboardManager.h>
#import <MBProgressHUD.h>
#import <MJRefresh.h>
#import <SDCycleScrollView.h>
#import <ReactiveCocoa.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
/*****************************
    //>>>>>>>>>>>>>>>>>>>>>>>>>1.AFN网络请求>>>>>>>>>>>>>>>>>>>>>>
    //GET请求
    AFHTTPSessionManager *manager=[AFHTTPSessionManager manager];
        //
    manager.responseSerializer=[AFHTTPResponseSerializer serializer];
        //字典封装参数
    NSDictionary *dict=@{
                         @"username":@"Lion",
                         @"pwd":@"1314",
                         @"type":@"JSON"
                         };
       //发送get请求
    [manager GET:@"待请求的URL" parameters:dict progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"success--%@--%@",[responseObject calss],responseObject);
    }
         failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
             NSLog(@"failure--%@",error);
         }];
     //POST请求
      //post对编码格式请求同get，只需将get换成post即可
       //post的多部分请求
    NSURL *filePath=[NSURL fileURLWithPath:@"file://path/to/iamge.png"];
    [manager POST:@"待请求的URL" parameters:parameters constructingBodyWithBlock:^(id<AFMultipartFormData>formData){
        [formData appendOartWithFileURL:filePath name:@"iamge" error:nil];
    } success:^:(AFHTTPRequestSerializer *serializer,id responseObject){
        
    } failure:^(AFHTTPRequestSerializer *serializer,NSError *error){
        NSLog(@"Error: %@",error);
    }];
    
//>>>>>>>>>>>>>>>>>>>>2.MBProgressHUD使用>>>>>>>>>>>>>>>>>>>>>
    //初始化MBProgressHUD
    self.progressHUD=[[MBProgressHUD alloc] initWithView:self.view];
    // self.progressHUD.mod=MBProgressHUDModelIndeterminate;
    self.progressHUD.progress=0.4;
    [self.view addSubview:self.progressHUD];

}

#pragma mark - 显示进度框
-(void)showProgress:(id)sender{
    //设置有遮罩
    self.progressHUD.dimBackground=NO;
    //设置进度框中的提示文字
    self.progressHUD.labelText=@"加载中...";
    //显示进度框
    [self.progressHUD show:YES];
}
#pragma mark - 显示动画效果
//显示HUD
-(void)showUsingAnimation:(BOOL)animated{
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    [self setNeedsDisplay];
    //ZoomIn表示拉近镜头，ZoomOut表示拉远镜头
    if(animated && animationType=MBProgressHUDAnimationZoomIn){
        //CGAffineTransformConcat表示两矩阵相乘
        self.transform=CGAffineTransformConcat(rotationTansform, CGAffineMakeScale(0.5f, 0.5f,));
    }else if (animated && animationType=MBProgressHUDAnimationZoomOut){
        self.transform=CGAffineTransformConcat(rotationTransform, CGAffineMakeScale(1.5f, 1.5f,));
    }
    self.showStarted=[NSData date];
    //开始做动画
    if(animated){
        [UIView beginAnimations:nil context:NILL];
        [UIView setAnimationDuration:0.30];
        self.alpha=1.0f;
        if(animatedType==MBProgressHUDAnimationZoomIn ||animatedType==MBProgressHUDAnimationZoomOut){
            self.transform=rotationTransform;
        }
        [UIView commitAnimations];
    }else{
        self.alpha=1.0f;
    }
}
//隐藏HUD动画
-(void)hideUsingAnimation:(BOOL)animated{
    if(animated && showStarted){
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:0.30];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDidStopSelector:@selector(animationDidStop:finished:conrext:)];
        if(animationType=MBProgressHUDAnimationZoomIn){
            self.transform=CGAffineTransformConcat(rotationTansform, CGAffineMakeScale(1.5f, 1.5f,));
        }else if (animated && animationType=MBProgressHUDAnimationZoomOut){
            self.transform=CGAffineTransformConcat(rotationTransform, CGAffineMakeScale(0.5f, 0.5f,));
        }
        
    self.alpha=0.02f;
    [UIView commitAnimations];
  }
  else{
    self.alpha=0.0f;
    [self done];
  }
  self.showStarted=nil;
}
//>>>>>>>>>>>>>>>>>>>>>>3.IOKeyboardManager>>>>>>>>>>>>>>>>>>>>>>.
 //启用自动键盘
-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(nullable NSDictionary *)launchOptions{
    [IQKeyboardManager sharedManager].enable=YES;
    //点击背景收起键盘  [IQKeyboardManager sharedManager].shouldResignOnTouchOutside=YES;
    //支持内联编辑  [IQKeyboardManager sharedManager].enableAutoToolbar=NO;
    //不需要键盘上工具条  txetField.inputAccessoryView=[[UIView alloc] init];
}
//4.MJRefresh
*************************/

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
