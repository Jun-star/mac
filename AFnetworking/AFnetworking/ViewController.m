//
//  ViewController.m
//  AFnetworking
//
//  Created by zmit on 2018/5/14.
//  Copyright © 2018年 zmit. All rights reserved.
//

#import "ViewController.h"
#import  <AFNetworking.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   //get用法
    NSString *urlString=@"https://www.baidu.com";
    NSURL *url=[NSURL URLWithString:urlString];
    //创建会话管理者
    AFHTTPSessionManager *manager=[AFHTTPSessionManager manager];
    manager.responseSerializer=[AFHTTPResponseSerializer serializer];
    //修改响应解析对象
    //manager.requestSerializer=[AFHTTPRequestSerializer serializer];
    //使AFN支持接受text/html等类型的数据
    //manager.responseSerializer.acceptableContentTypes=[NSSet setWithObjects:@"application/json",@"text/json",@"text/javascript",@"text/html", nil];
    //申明请求的数据类型是json
    //manager.requestSerializer = [AFJSONRequestSerializer serializer];
    //声明返回的数据类型是json
    //manager.responseSerializer = [AFJSONResponseSerializer serializer];
    //发送GET请求，使用AFHTTPSessionManager这个网络管理者
    [manager GET:url.absoluteString parameters:nil progress:nil success:^(NSURLSessionDataTask *task,id responseObject){
        NSLog(@"results: %@",responseObject);
    } failure:^(NSURLSessionDataTask *task,NSError *error){
        NSLog(@"results: %@",error);
    }];
    /****************
     //post用法
     manager.resopnseSerializer=[AFHTTPResponseSerislizer serializer];
     [manager POST:@"https://www.baidu.com" parameters:nil process:^(NSProcess *_Nonnull uploadProcess){
     NSLog(@"uoloadProcess %@",uploadProcess);
     }
     success:^(NSURLSrssionDataTask *_Nonnull task,id _Nullable responseObject){
     NSLog(@"success %@",responseObject);
     }    failure:^(NSURLSessionDataTask *_Nullable task,NSError *_Nonnull error)
     NSLog(@"fail %@",error);
     }]
     ****************/
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
