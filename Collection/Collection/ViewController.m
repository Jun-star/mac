//
//  ViewController.m
//  Collection
//
//  Created by zmit on 2018/5/10.
//  Copyright © 2018年 zmit. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"
@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>{
    UICollectionView *mainCollectionView;
}

@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor whiteColor];
    //初始化layout
    UICollectionViewFlowLayout *layout=[[UICollectionViewFlowLayout alloc]init];
    //设置滚动方向
    //[layout setScrollDirection:(UICollectionViewScrollDirectionHorizontal)];
    //设置头视图大小
    layout.headerReferenceSize=CGSizeMake(self.view.frame.size.width, 100);
    //设置item大小
    layout.itemSize=CGSizeMake(100, 150);
    //初始化ollectionView
    mainCollectionView=[[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:layout];
    [self.view addSubview:mainCollectionView];
    mainCollectionView.backgroundColor=[UIColor clearColor];
    //注册collectionViewCell
    [mainCollectionView registerClass:[CollectionViewCell class] forCellWithReuseIdentifier:@"cellId"];
    //注册头视图
    [mainCollectionView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"reusableView"];
    //设置代理
    mainCollectionView.delegate=self;
    mainCollectionView.dataSource=self;
}
/**************
//创建UICollectionView视图
-(void)loadCollectionView{
    //自定义的布局对象
    _customLayout=[[CustomCollectionViewLayout alloc] init];
    _collectionView= [[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:_customLayout];
    _collectionView.backgroundColor=[UIColor redColor];
    _collectionView.dataSource=self;
    _collectionView.delegate=self;
    [self.view addSubview:_collectionView];
    //注册cell，sectionHeader，sectionFooter
    [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:cellId];
    [_collectionView registerNib:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:headerId];
    [_collectionView registerNib:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:footerId];
}
 ***************/



#pragma mark collectionView代理方法
//返回多少组，默认为1
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 3;
}
//每组返回多少个item
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 9;
}
//设置单元格内容和颜色返回单元格
-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{

    CollectionViewCell *cell=(CollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"cellId" forIndexPath:indexPath];
    cell.botlabel.text=[NSString stringWithFormat:@"{%ld,%ld}",(long)indexPath.section,(long)indexPath.row];
    
    cell.backgroundColor=[UIColor yellowColor];
    
    return cell;
}
/***************
//设置段头段尾,header段头,footer段尾
-(UICollectionReusableView *)UICollectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    if([kind isEqualToString:UICollectionElementKindSectionHeader]){
        UICollectionReusableView *headerView=[_collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:headerId forIndexPath:indexPath];
        if(headerView==nil){
            headerView=[[UICollectionReusableView alloc]init];
        }
        headerView.backgroundColor=[UIColor grayColor];
        return headerView;
    }else if([kind isEqualToString:UICollectionElementKindSectionFooter]){
        UICollectionReusableView *footerView=[_collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:footerId forIndexPath:indexPath];
        if(footerView==nil){
            footerView=[[UICollectionReusableView alloc]init];
        }
        footerView.backgroundColor=[UIColor lightGrayColor];
        return footerView;
    }
    return nil;
}
 ******************/
//-(BOOL)collectionView:(UICollectionView *)collectionView canMoveItemAtIndexPath:(NSIndexPath *)indexPath{
  //  return YES;
//}
//-(void)collectionView:(UICollectionView *)collectionView moveItemAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(nonnull NSIndexPath *)destinationIndexPath{
    
//}
//设置每个item的尺寸
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(90,130 );
}
//设置每个item的gUIEdgeInsets
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(10, 10, 10, 10);
}
//设置每个item的垂直间距
-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section{
    return 15;
}
//设置每个item的水平间距
-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section{
    return 10;
}
//设置头部或尾部视图
-(UICollectionReusableView *)UICollectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    UICollectionReusableView *headerView=[collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"reusableView" forIndexPath:indexPath];
    headerView.backgroundColor=[UIColor grayColor];
    UILabel *lable=[[UILabel alloc] initWithFrame:headerView.bounds];
    lable.text=@"这是头部";
    lable.font=[UIFont systemFontOfSize:20];
    [headerView addSubview:lable];
    //UILabel *label=[headerView viewWithTag:3000];
   // if(!label){
    //label=[[UILabel alloc] initWithFrame:headerView.bounds];
       // label.tag=3000;
        
       // label.font=[UIFont systemFontOfSize:20];
    //[headerView addSubview:label];
    //}
    //label.text=[NSString stringWithFormat:@"这是头部:%zd,%zd",indexPath.section,indexPath.row];
    return headerView;
}
//点击item的方法
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    CollectionViewCell *cell=(CollectionViewCell *)[collectionView cellForItemAtIndexPath:indexPath];
    NSString *msg=cell.botlabel.text;
    NSLog(@"%@",msg);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
