//
//  CollectionViewCell.m
//  Collection
//
//  Created by zmit on 2018/5/17.
//  Copyright © 2018年 zmit. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell

-(id)initWithFrame:(CGRect)frame{
    self=[super initWithFrame: frame];
    if(self){
        _topImage = [[UIImageView alloc] initWithFrame:CGRectMake(10, 0, 70, 70)];
        _topImage.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:_topImage];
        
        _botlabel=[[UILabel alloc] initWithFrame:CGRectMake(10, 80, 70, 30)];
        _botlabel.textAlignment=NSTextAlignmentCenter;
        _botlabel.textColor = [UIColor blueColor];
        _botlabel.font = [UIFont systemFontOfSize:15];
        _botlabel.backgroundColor = [UIColor purpleColor];
        [self.contentView addSubview:_botlabel];
    }
    return self;
}


@end
