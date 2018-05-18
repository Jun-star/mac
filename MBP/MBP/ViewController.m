//
//  ViewController.m
//  MBP
//
//  Created by zmit on 2018/5/15.
//  Copyright © 2018年 zmit. All rights reserved.
//

#import "ViewController.h"
#import "MBProgressHUD.h"
#import <QuartzCore/QuartzCore.h>
@interface MBExample : NSObject
@property (nonatomic,copy)NSString *title;
@property (nonatomic,assign)SEL selector;
@end
@implementation MBExample
+(instancetype)exampleWithTitle:(NSString *)title selector:(SEL)selector{
    MBExample *example=[[self class] new];
    example.title=title;
    example.selector=selector;
    return example;
}
@end
@interface ViewController ()<NSURLSessionDelegate>
@property (nonatomic,strong)NSArray<NSArray<MBExample *> *> *example;
@property (nonatomic,assign)BOOL canceled;
@end

@implementation ViewController
#pragma mark -Lifecycle
/**********************
-(void)awakeFromNib{
    [super awakeFromNib];
    self.examples = @[@[[MBExample exampleWithTitle:@"Indeterminate mode" selector:@selector(indeterminateExample)],
                      [MBExample exampleWithTitle:@"With label" selector:@selector(labelExample)],
                      [MBExample exampleWithTilte:@"With details label" selector:@selector(detailsLabelExample)]],
                      @[[MBExample exampleWithTitle:@"Determinate mode" selector:@selector(determinateExample)],
                        [MBExample exampleWithTitle:@"Annular determinate mode"selector:@selector(annularDeterminateExample)],
                        [MBExample exampleWithTitle:@"bar determinate mode" selector:@selector(bardeterminateExample)]],
                    @[[MBExample exampleWithTitle:@"Text only" selector:@selector(textExample)],
                      [MBExample exampleWithTitle:@"Custom view" selector:@selector(customViewExample)],
                      [MBExample exampleWithTitle:@"With action button" selector:@selector(cancelationExample)],
                      [MBExample exampleWithTitle:@"Node switch" selector:@selector(modeSwitchExample)]],
                    @[[MBExample exampleWithTilte:@"On window" selector:@selector(windowExample)],
                      [MBExample exampleWithTitle:@"NSURLSession" selector:@selector(networkingExample)],
                      [MBExample exampleWithTitle:@"Determiante with NSProgress" selector:@selector(deyerminateProgressExample)],
                      [MBExample exampleWithTitle:@"Dim background" selector:@selector(dimBackground)],
                      [MBExample exampleWithTitle:@"Colred" selector:@selector(colorExample)]]
                    ];
}
 ********************/
#pragma mark -Example
//只有小菊花（系统默认形式，不显示进度）
-(void)indeterminateExample{
    //在根视图上显示HUD
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.navigationController.view animated:YES];
    dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INITIATED, 0),^{
        [self doSomeWork];
        dispatch_async(dispatch_get_main_queue(), ^{
            [hud hideAnimated:YES];
        });
    });
}
//小菊花+文字
-(void)labelExample{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.navigationController.view animated:YES];
    //设置标签上的文本
    hud.label.text = NSLocalizedString(@"Loading...", @"HUD loading title");
    //也可以调整标签其他属性
    //hud.label.font = [UIFont italicSystomFontOfSize:16f];
    dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INITIATED, 0),^{
        [self doSomeWork];
        dispatch_async(dispatch_get_main_queue(),^{
            [hud hideAnimated:YES];
        });
    });
}
//小菊花加标签文本+详细标签文本
-(void)detailsLabelExample{
    MBProgressHUD *hud=[MBProgressHUD showHUDAddedTo:self.navigationController.view animated:YES];
    //设置标签文本
    hud.label.text=NSLocalizedString(@"Loading...", @"HUD loading title");
    //设置详细标签文本
    hud.detailsLabel.text=NSLocalizedString(@"Parsing data\n(1/1)", @"HUD title");
    dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INITIATED, 0),^{
        [self doSomeWork];
        dispatch_async(dispatch_get_main_queue(),^{
            [hud hideAnimated:YES];
        });
    });
}
//饼图+文字
-(void)determinateExample{
    MBProgressHUD *hud=[MBProgressHUD showHUDAddedTo:self.navigationController.view animated:YES];
    //设定饼图显示进度
    hud.mode=MBProgressHUDModeDeterminate;
    //设置标签文本
    hud.label.text=NSLocalizedString(@"LOADING...", @"HUD loading title");
    dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INITIATED, 0),^{
        [self doSomeWork];
        dispatch_async(dispatch_get_main_queue(),^{
            [hud hideAnimated:YES];
        });
    });
}

//饼图+文字+取消按钮
-(void)determinateNSProgressExample{
    MBProgressHUD *hud=[MBProgressHUD showHUDAddedTo:self.navigationController.view animated:YES];
    //设置饼图显示进度
    hud.mode=MBProgressHUDModeDeterminate;
    //设置标签文本
    hud.label.text=NSLocalizedString(@"Loading...",@"HUD loading title");
    //设置NSProgress
    NSProgress *progressObject=[NSProgress progressWithTotalUnitCount:100];
    hud.progressObject=progressObject;
    //设置按钮文本
    [hud.button setTitle:NSLocalizedString(@"Cancel", @"HUD cancel button title") forState:UIControlStateNormal];
    //添加按钮取消事件
    [hud.button addTarget:progressObject action:@selector(cancel) forControlEvents:UIControlEventTouchUpInside];
    dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INITIATED, 0),^{
        [self doSomeWorkWithProgressObject:progressObject];
        dispatch_async(dispatch_get_main_queue(),^{
            [hud hideAnimated:YES];
        });
    });
}

//直线进度条+文字
-(void)barDeterminateExample{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.navigationController.view animated:YES];
    //设置直线进度条模式
    hud.mode=MBProgressHUDModeDeterminateHorizontalBar;
    //设置标签文本
    hud.label.text=NSLocalizedString(@"Loading...", @"HUD loading title");
    dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INITIATED, 0),^{
        [self doSomeWorkWithProgress];
        dispatch_async(dispatch_get_main_queue(),^{
            [hud hideAnimated:YES];
        });
    });
}
//圆环+标签文本
-(void)annularDeterminateExample{
    MBProgressHUD *hud=[MBProgressHUD showHUDAddedTo:self.navigationController.view animated:YES];
    //设置圆环模式
    hud.mode=MBProgressHUDModeAnnularDeterminate;
    //设置标签文本
    hud.label.text = NSLocalizedString(@"Loading...", @"HUD loading title");
    dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INITIATED, 0),^{
        [self doSomeWorkWithProgress];
        dispatch_async(dispatch_get_main_queue(),^{
            [hud hideAnimated:YES];
        });
    });
}
//只显示文本
-(void)textExample{
    MBProgressHUD *hud=[MBProgressHUD showHUDAddedTo:self.navigationController.view animated:YES];
    //设置只显示文本
    hud.mode=MBProgressHUDModeText;
    //设置标签文本
    hud.label.text=NSLocalizedString(@"Message here!",@"HUD message title");
    hud.offset=CGPointMake(0.f, MBProgressMaxOffset);
    //设置3秒后消失
    [hud hideAnimated:YES afterDelay:3.f];
}

#pragma mark - 自定义视图
//自定义视图
-(void)customViewExample{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.navigationController.view animated:YES];
    //设置自定义视图模式
    hud.mode=MBProgressHUDModeCustomView;
    //设置一张图片
    UIImage *image=[[UIImage imageNamed:@"Checkmark"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    hud.customView=[[UIImageView alloc] initWithImage:image];
    hud.square = YES;
    //设置标签文本
    hud.label.text = NSLocalizedString(@"Done", @"HUD done title");
    //设置延迟
    [hud hideAnimated:YES afterDelay:3.f];
}
    

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Tasks
-(void)doSomeWork{
    sleep(3.);
}
-(void)doSomeWorkWithProgressObject:(NSProgress *)progressObject{
    while (progressObject.fractionCompleted<1.0f){
        if(progressObject.isCancelled)break;
        [progressObject becomeCurrentWithPendingUnitCount:1];
        [progressObject resignCurrent];
        usleep(50000);
    }
}
-(void)doSomeWorkWithProgress{
    self.canceled = NO;
    float progress=0.0f;
    while(progress<1.0f){
        if(self.canceled)break;
        progress+=0.01f;
        dispatch_async(dispatch_get_main_queue(),^{
            [MBProgressHUD HUDForView:self.navigationController.view].progress=progress;
        });
        usleep(50000);
    }
}
@end
