//
//  ViewController.h
//  tableView
//
//  Created by zmit on 2018/5/9.
//  Copyright © 2018年 zmit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,retain)UITableView *tableView;

@end

