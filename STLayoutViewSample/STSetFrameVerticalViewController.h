//
//  STSetFrameVerticalViewController.h
//  STLayoutViewSample
//
//  Created by MIYAMOTO, Hideaki on 2013/01/01.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STSetFrameVerticalViewController : UIViewController<UITableViewDataSource, UITableViewDelegate> {
    __weak UIView *_headerView;
    __weak UITableView *_tableView;
    __weak UIView *_footerView;
}

@end
