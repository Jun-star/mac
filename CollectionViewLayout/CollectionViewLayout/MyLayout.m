//
//  MyLayout.m
//  CollectionViewLayout
//
//  Created by zmit on 2018/5/18.
//  Copyright © 2018年 zmit. All rights reserved.
//

#import "MyLayout.h"

@implementation MyLayout{
    NSMutableArray *_attributeAttay;
}
-(void)prepareLayout{
    [super prepareLayout];
    //获取item的个数
    _itemCount = (int)[self.collectionView numberOfItemsInSection:0];
    _attributeAttay = [[NSMutableArray alloc] init];
    //先设定大圆半径 去长宽最短的
    CGFloat radius = MIN(self.collectionView.frame.size.width,self.collectionView.frame.size.height)/2;
    //计算圆心位置
    CGPoint center = CGPointMake(self.collectionView.frame.size.width/2,self.collectionView.frame.size.height/2);
    //设置每个item的大小为50*50，则半径为25
    for(int i=0;i<_itemCount;i++){
        UICollectionViewLayoutAttributes *attris = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:[NSIndexPath indexPathForItem:i inSection:0]];
        attris.size=CGSizeMake(50, 50);
        
        float x = center.x+cosf(2*M_PI/_itemCount*i)*(radius-25);
        float y = center.y+sinf(2*M_PI/_itemCount*i)*(radius-25);
        attris.center=CGPointMake(x,y);
        [_attributeAttay addObject:attris];
    }
}
//设置内容区域大小
-(CGSize)collectionViewContentSize{
    return self.collectionView.frame.size;
}
//返回设置数组
-(NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect{
    return _attributeAttay;
}
@end
