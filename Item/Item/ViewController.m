//
//  ViewController.m
//  Item
//
//  Created by zmit on 2018/5/10.
//  Copyright © 2018年 zmit. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title= @"UICollectionView Demo";
    _dataSource= [NSArray arrayWithObjects:@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",nil];
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    //设置水平布局
    [layout setScrollDirection:(UICollectionViewScrollDirectionVertical)];
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:self.view.frame collectionViewLayout:layout];
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"Cell"];
    //设置数据源和代理
    collectionView.delegate = self;
    collectionView.dataSource = self;
    
    [self.view addSubview:collectionView];
}
#pragma mark-
#pragma make - UICollectionViewDataSource
//共分几组
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
//每组几项
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return _dataSource.count;
}
//单元格内容
-(UICollectionViewCell *) collectionView:(UICollectionView *) collectionView cellForItemAtIndexPath:(NSIndexPath *)NSIndexPath{
    static NSString *CellIdentifier=@"Cell";
    UICollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:NSIndexPath];
    cell.backgroundColor=[UIColor grayColor];
    UIView * contentView=[[UIView alloc] init];
    UILabel * label=[[UILabel alloc] initWithFrame:CGRectMake(20, 20, 50, 50)];
    label.text=_dataSource[NSIndexPath.row];
    [contentView addSubview:label];
    cell.backgroundView=contentView;
    return cell;
}
#pragma mark -
#pragma mark - UICollectionViewDelegateFlowLayout
//定义单元格宽和高
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(96, 96);
}

//定义单元格间距
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(10, 10, 10, 10);
}
//能否选中单元格
-(BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(nonnull NSIndexPath *)indexPath{
    return  YES;
}
-(void)UICollectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *) indexPath{
    NSLog(@"row:%ld-------------section:  %ld",indexPath.row,indexPath.section);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
