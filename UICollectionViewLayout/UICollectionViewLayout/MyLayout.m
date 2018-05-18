//
//  MyLayout.m
//  UICollectionViewLayout
//
//  Created by zmit on 2018/5/18.
//  Copyright © 2018年 zmit. All rights reserved.
//

#import "MyLayout.h"

@implementation MyLayout
-(void)prepareLayout{
    [super prepareLayout];
}
//返回的滚动范围增加对X轴的兼容
-(CGSize)collectionViewContentSize{
    return CGSizeMake(self.collectionView.frame.size.width*([self.collectionView numberOfItemsInSection:0]+2), self.collectionView.frame.size.height*([self.collectionView numberOfItemsInSection:0]+2));
}
-(BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds{
    return YES;
}
-(UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewLayoutAttributes * atti = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:indexPath];
    //获取item对象
    int itemCounts = (int)[self.collectionView numberOfItemsInSection:0];
    atti.center = CGPointMake(self.collectionView.frame.size.width/2+self.collectionView.contentOffset.x, self.collectionView.frame.size.height/2+self.collectionView.contentOffset.y);
    atti.size = CGSizeMake(30, 30);
    
    CATransform3D trans3D=CATransform3DIdentity;
    trans3D.m34=-1/900.0;
    
    CGFloat radius = 15/tanf(M_PI/itemCounts/2);
    //根据便宜量改变角度
    //添加了一个x的偏移值
    float offsety = self.collectionView.contentOffset.y;
    float offsetx = self.collectionView.contentOffset.x;
    //分别计算偏移角度
    float angelOffsety = offsety/self.collectionView.frame.size.height;
    float angelOffsetx = offsetx/self.collectionView.frame.size.width;
    CGFloat angel1 = (float)(indexPath.row-angelOffsety-1/itemCounts*M_PI*2);
    //x，y的默认方向相反
    CGFloat angel2 = (float)(indexPath.row-angelOffsetx-1/itemCounts*M_PI*2);
    //进行四个方向排列
    if(indexPath.row%4==1){
        trans3D = CATransform3DRotate(trans3D, angel1, 1.0, 0,0);
    }else if (indexPath.row%4==2){
        trans3D = CATransform3DRotate(trans3D, angel2, 0, 1, 0);
        
    }else if(indexPath.row%4==3){
        trans3D = CATransform3DRotate(trans3D,angel1,0.5, 0.5, 0);
    }else{
        trans3D = CATransform3DRotate(trans3D, angel1, 0.5, -0.5, 0);
    }
    trans3D = CATransform3DTranslate(trans3D, 0, 0, radius);
    atti.transform3D = trans3D;
    return atti;
}
-(NSArray<UICollectionViewLayoutAttributes *> *)layoutAttruibutesForElementsInRect:(CGRect)rect{
    NSMutableArray * attributes = [[NSMutableArray alloc] init];
    //遍历设置每个item的布局属性
    for(int i=0; i<[self.collectionView numberOfItemsInSection:0]; i++){
        [attributes addObject:[self layoutAttributesForItemAtIndexPath:[NSIndexPath indexPathForItem:i inSection:0]]];
    }
    return attributes;
}
@end
