//
//  ViewController.h
//  Collection
//
//  Created by zmit on 2018/5/10.
//  Copyright © 2018年 zmit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong)UILabel *botlabel;
@property (nonatomic, strong)UILabel *topImage;
@end

