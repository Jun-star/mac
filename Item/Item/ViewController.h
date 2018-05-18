//
//  ViewController.h
//  Item
//
//  Created by zmit on 2018/5/10.
//  Copyright © 2018年 zmit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>


@property (nonatomic,retain)NSArray *dataSource;


@end


